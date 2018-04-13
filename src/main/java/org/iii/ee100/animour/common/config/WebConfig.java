package org.iii.ee100.animour.common.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;


@EnableWebSecurity
public class WebConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
    	http.
		authorizeRequests()
		.antMatchers("/**").permitAll() //不須驗證
		.antMatchers("/extras/**",
                "/css/**",
                "/icon/**",
                "/fonts/**",
                "/js/**",
                "/images"
            ).permitAll()
		.anyRequest()    //對象為所有網址
		.authenticated() //存取必須通過驗證
		.and()
		.formLogin() 
		//.loginPage("/sign_in")
		;
}
    
//    @Autowired
//    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
//        auth.inMemoryAuthentication()
//            .withUser("user").password("password").roles("USER");
//    }

}

