package ru.flexconstructor.red5template;

        import org.red5.logging.Red5LoggerFactory;
        import org.red5.server.adapter.IApplication;
        import org.red5.server.adapter.MultiThreadedApplicationAdapter;
        import org.red5.server.api.IConnection;
        import org.red5.server.api.scope.IScope;
        import org.slf4j.Logger;
        import org.springframework.beans.BeansException;
        import org.springframework.beans.factory.annotation.Required;
        import org.springframework.context.ApplicationContext;
        import org.springframework.context.ApplicationContextAware;
        import org.springframework.security.authentication.ProviderManager;
        import org.springframework.security.core.Authentication;
        import org.springframework.security.core.GrantedAuthority;
        import org.springframework.security.core.context.SecurityContextHolder;
        import org.springframework.security.core.userdetails.UserDetails;
        import org.springframework.security.core.userdetails.UserDetailsService;

        import java.util.Arrays;
        import java.util.Collection;

/**
 * Main application entry point for the chat application.
 *
 * @author Paul Gregoire
 */
public class Application extends MultiThreadedApplicationAdapter implements ApplicationContextAware {

    private static Logger log = Red5LoggerFactory.getLogger(Application.class, "chat");
    private UserDetailsService userDetailsService;
    @SuppressWarnings("unused")
    private ApplicationContext applicationContext;



    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

    @Override
    public boolean appStart(IScope scope) {
        log.info(">>>>>>>>>>>>>Red5 template starting<<<<<<<<<<<<<<<<");
        // authentication management
      /*  ProviderManager authManager = (ProviderManager) applicationContext.getBean("authManager");
        log.info("Available auth providers: {}", authManager.getProviders().size());
        if (authManager.isEraseCredentialsAfterAuthentication()) {
            log.info("Provider set to erase creds, changing to NOT do this");
            authManager.setEraseCredentialsAfterAuthentication(false);
        }
        // add an authentication listener
        addListener((IApplication) applicationContext.getBean("authHandler"));
        // hit the super class
*/
        return super.appStart(scope);
    }

    @Override
    public void appStop(IScope scope) {

        super.appStop(scope);
    }

    @Override
    public boolean connect(IConnection conn,
                           IScope scope,
                           Object[] params){

        log.info("CONNECT: login"+params[0]);
        UserDetails details= this.userDetailsService.loadUserByUsername("alex");
        log.info("user: "+details.toString());
        return super.connect(conn,scope,params);
    }

    /*public static boolean isAuthorized(String... roles) {
        // get the auth from the security context
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null && auth.isAuthenticated()) {
            UserDetails deets = (UserDetails) auth.getPrincipal();
            log.debug("enabled: {}", deets.isEnabled());
            Collection<? extends GrantedAuthority> granted = deets.getAuthorities();
            for (GrantedAuthority authority : granted) {
                if (Arrays.asList(roles).contains(authority.getAuthority())) {
                    log.debug("Authorized");
                    return true;
                }
            }
        }
        log.debug("Not Authorized. User has not been granted any of: {}", roles);
        return false;
    }

    public String helloAdmin() {
        if (isAuthorized("ROLE_ADMIN")) {
            return "Hello Admin!";
        }
        return "You are not authorized";
    }

    public String helloUser() {
        if (isAuthorized("ROLE_USER")) {
            return "Hello User, want to play a game?";
        }
        return "You are not authorized";
    }*/

   @Required
    public UserDetailsService getUserDetailsService() {
        return userDetailsService;
    }

    public void setUserDetailsService(UserDetailsService userDetailsService) {
        this.userDetailsService = userDetailsService;
    }
}
