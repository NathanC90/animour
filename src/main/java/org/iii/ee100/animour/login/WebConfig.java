//package org.iii.ee100.animour.login;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//
//
//@EnableWebSecurity
//public class WebConfig extends WebSecurityConfigurerAdapter {
//
//    @Override
//    protected void configure(HttpSecurity http) throws Exception {
//    	http.
//		authorizeRequests()
//		.antMatchers("/").permitAll()
//		.antMatchers("/extras/**",
//                "/css/**",
//                "/icon/**",
//                "/fonts/**",
//                "/js/**"
//            ).permitAll()
//		.anyRequest() //對象為所有網址
//		.authenticated() //存取必須通過驗證
//		.and()
//		.formLogin() //若未不符合authorize條件，則產生預設login表單
//		.and()
//		.loginPage("/sign_in"); //產生基本表單
//}
//    
//    @Autowired
//    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
//        auth.inMemoryAuthentication()
//            .withUser("user").password("password").roles("USER");
//    }
//
//}
//
