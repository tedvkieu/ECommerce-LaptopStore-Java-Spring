package vn.hoidanit.laptopshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import vn.hoidanit.laptopshop.service.UserService;

import org.springframework.web.bind.annotation.GetMapping;



// @Controller // day la annotation
// public class UserController {

//     @RequestMapping("/") // day la annotation de gui request (yeu cau)
//     public String getHomePage() {
//         return "Hello Kieu day ne";
//     }
// }
@RestController // day la annotation
public class UserController {

    //DI: dependency Injection;
    private UserService userService;
    
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("") // day la annotation de gui request (yeu cau)
    public String getHomePage() {
        return this.userService.handleHello();
    }
}