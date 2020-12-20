package com.myorg.poc.workflow.camunda.security.config;

import org.camunda.bpm.webapp.impl.security.auth.ContainerBasedAuthenticationFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.security.SecurityProperties;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.session.FindByIndexNameSessionRepository;
import org.springframework.session.Session;
import org.springframework.session.security.SpringSessionBackedSessionRegistry;
import org.springframework.session.security.web.authentication.SpringSessionRememberMeServices;

import javax.sql.DataSource;
import java.util.Collections;

@Configuration
@ComponentScan
@Order(SecurityProperties.BASIC_AUTH_ORDER - 15)
public class WebAppSecurityConfig<S extends Session> extends WebSecurityConfigurerAdapter {

    @Value("${camunda.security.authenticationProvider}")
    private String authenticationProvider;

    @Autowired
    private DataSource dataSource;

    @Autowired
    private FindByIndexNameSessionRepository<S> sessionRepository;

    @Autowired
    public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
        System.out.println("Database url = "+dataSource.getConnection().getMetaData().getURL());
        auth.jdbcAuthentication().dataSource(dataSource)
                .usersByUsernameQuery("select username,password, enabled from users where username=?")
                .authoritiesByUsernameQuery("select username, authority from authorities where username=?");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                .anyRequest().authenticated()
                .and()
                .formLogin()
                .and()
                .rememberMe().rememberMeServices(rememberMeServices())
                .and()
                .csrf().disable()
                .sessionManagement().maximumSessions(-1).sessionRegistry(sessionRegistry());
    }

    @Bean
    public FilterRegistrationBean containerBasedAuthenticationFilter(){
        FilterRegistrationBean filterRegistration = new FilterRegistrationBean();
        filterRegistration.setFilter(new ContainerBasedAuthenticationFilter());
        filterRegistration.setInitParameters(Collections.singletonMap("authentication-provider", authenticationProvider));
        filterRegistration.setOrder(101); // make sure the filter is registered after the Spring Security Filter Chain
        filterRegistration.addUrlPatterns("/app/*");
        filterRegistration.addUrlPatterns("/api/admin/*");
        return filterRegistration;
    }

    @Bean
    public SpringSessionRememberMeServices rememberMeServices() {
        SpringSessionRememberMeServices rememberMeServices = new SpringSessionRememberMeServices();
        rememberMeServices.setAlwaysRemember(true);
        return rememberMeServices;
    }

    @Bean
    public SpringSessionBackedSessionRegistry<S> sessionRegistry() {
        return new SpringSessionBackedSessionRegistry<>(sessionRepository);
    }

}
