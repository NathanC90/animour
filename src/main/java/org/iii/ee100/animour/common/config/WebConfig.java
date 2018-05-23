package org.iii.ee100.animour.common.config;

import org.iii.ee100.animour.common.security.AnimourUserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;


@EnableWebSecurity
public class WebConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
    	http.exceptionHandling().accessDeniedPage("/403");
    	http.
		authorizeRequests()
		.antMatchers("/admin/member").hasRole("Admin")
		.antMatchers("/cart/confirmBuy2","/news/confirmbuy2").hasRole("Member")
		.antMatchers("/**","/showAnimalImage").permitAll() //不須驗證
		.antMatchers("/extras/**",
                	 "/css/**",
                	 "/icon/**",
                	 "/fonts/**",
                	 "/js/**",
                	 "/images/**"
            ).permitAll()
		.anyRequest()    //對象為所有網址
		.authenticated() //存取必須通過驗證
		.and()
		.formLogin()
		.loginPage("/login")
		//.failureUrl("/login?error=true")
		.and().csrf().disable()
		;
    	
}
    
    @Bean
    public AnimourUserDetailsService animourUserDetailsService() {
    	return new AnimourUserDetailsService();
    }

    //加密
//    @Bean
//	public PasswordEncoder passwordEncoder(){
//		PasswordEncoder encoder = new BCryptPasswordEncoder();
//		return encoder;
//	}
//
//	@Autowired
//	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
//		auth.userDetailsService(animourUserDetailsService()).passwordEncoder(passwordEncoder());
//	}
}

