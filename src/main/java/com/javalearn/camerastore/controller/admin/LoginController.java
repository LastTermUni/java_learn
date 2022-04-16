package com.javalearn.camerastore.controller.admin;

import com.javalearn.camerastore.entity.AdminEntity;
import com.javalearn.camerastore.entity.Customer;
import com.javalearn.camerastore.repository.AdminRepository;
import com.javalearn.camerastore.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/")
public class LoginController {

    @Autowired
    AdminRepository adminRepository;

    @RequestMapping(value = "loginadmin", method = RequestMethod.GET)
    public ModelAndView login() {
        ModelAndView mav = new ModelAndView("login/login");
        return mav;
    }
    @RequestMapping(value = "loginadmin", method = RequestMethod.POST)
    public String login(@RequestParam("username") String username, @RequestParam("password") String password, HttpSession session) {
        AdminEntity adminEntity = adminRepository.getUserByUsername(username);
        if (adminEntity.getPassword().equals(password)) {
            session.setAttribute("roleAdmin", adminEntity.getUsername());
            return "redirect:admin/dashboard";
        } else
            return "redirect:loginadmin";
    }

}
