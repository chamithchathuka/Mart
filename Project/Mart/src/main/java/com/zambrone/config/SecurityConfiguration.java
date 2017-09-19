package com.zambrone.config;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;
import org.springframework.web.filter.DelegatingFilterProxy;

/**
 * Created by Chamith on 10/09/2017.
 */
@Configuration
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Autowired
    protected void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication()
                .withUser("user1@gmail.com").password("password1").roles("ADMIN")
                .and().withUser("user2").password("password2").roles("MERCHANT").and()
                .withUser("user2@gmail.com").password("password2").roles("USER");
    }

    @Autowired
    DataSource dataSource;
    @Autowired
    public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication().dataSource(dataSource)
                .usersByUsernameQuery(
                        "select username,password, enabled from user where username=?")
                .authoritiesByUsernameQuery(
                        "select username, role from user_roles where username=?");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
//                .antMatchers("/hello").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/css/*").permitAll()
                .antMatchers("/img/*").permitAll()
                .antMatchers("/signup").permitAll()
                .antMatchers("/").permitAll()
                .antMatchers("/js/*").permitAll()
                .antMatchers("/order/**").hasAnyRole("USER", "ADMIN")
                .antMatchers("/shop/explore").permitAll()
                .antMatchers("/place").hasAnyRole("USER", "ADMIN")
                .antMatchers("/admin/addcourier").hasRole("ADMIN")
                .antMatchers("/addcustomer").hasRole("ADMIN")
                .antMatchers("/admin/addshop").hasRole("ADMIN")
                .antMatchers("/order/update").hasAnyRole("USER", "ADMIN")
                .antMatchers("/seller").hasAnyRole("SELLER", "ADMIN")
                .antMatchers("/delivery").hasAnyRole("DELIVERY", "ADMIN")
                .antMatchers("/order/updateorder").hasAnyRole("USER", "ADMIN","SELLER")
                .antMatchers("/admin").hasRole("ADMIN")
                .antMatchers("/product/**").permitAll()
                .antMatchers("/service/admin").hasRole("ADMIN")
                .anyRequest().permitAll()
                .and()
                .formLogin().loginPage("/login")
                .usernameParameter("username").passwordParameter("password")
                .and()
                .logout().logoutSuccessUrl("/")
                .and()
                .exceptionHandling().accessDeniedPage("/noaccess")
                .and()
                .csrf();
    }

//    @Override
//    protected void configure(HttpSecurity http) throws Exception {
//        http.formLogin().permitAll()
//                .and()
//                .authorizeRequests()
//                .antMatchers("/service/test").hasAnyRole("USER", "ADMIN")
//                .antMatchers("/css/*").permitAll()
//                .antMatchers("/img/*").permitAll()
//                .antMatchers("/signup").permitAll()
//                .antMatchers("/").permitAll()
//                .antMatchers("/js/*").permitAll()
//                .antMatchers("/order/**").hasAnyRole("USER", "ADMIN")
//                .antMatchers("/shop/explore").permitAll()
//                .antMatchers("/place").hasAnyRole("USER", "ADMIN")
//                .antMatchers("/order/update").hasAnyRole("USER", "ADMIN")
//                .antMatchers("/order/updateorder").hasAnyRole("USER", "ADMIN")
//                .antMatchers("/product/**").permitAll()
//                .antMatchers("/service/admin").hasRole("ADMIN")
//                .anyRequest().authenticated();
//
//        http.formLogin()
//                .loginPage("/login")
////                .loginProcessingUrl("/perform_login")
//                .defaultSuccessUrl("/",true)
//                .failureUrl("/login?error=true");
//
//    }




}