package ru.flexconstructor.red5template;

import org.red5.logging.Red5LoggerFactory;
import org.red5.server.adapter.MultiThreadedApplicationAdapter;
import org.red5.server.api.scope.IScope;
import org.slf4j.Logger;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.security.core.userdetails.UserDetailsService;

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

        return super.appStart(scope);
    }

    @Override
    public void appStop(IScope scope) {
        log.info("Chat stopping");

        super.appStop(scope);
    }

    @Required
    public UserDetailsService getUserDetailsService() {
        return userDetailsService;
    }

    public void setUserDetailsService(UserDetailsService userDetailsService) {
        this.userDetailsService = userDetailsService;
    }
}
