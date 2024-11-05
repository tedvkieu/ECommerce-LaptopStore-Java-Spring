package vn.hoidanit.laptopshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import vn.hoidanit.laptopshop.service.UserService;

import org.springframework.web.bind.annotation.GetMapping;



@Controller // day la annotation
public class UserController {

        //DI: dependency Injection;
    private UserService userService;
    
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/") // day la annotation de gui request (yeu cau)
    public String getHomePage() { // chỉ đưa tên của file, để nó hiểu. Nên định dạng nó là String
        String test = this.userService.handleHello();
        return "eric.html";
    }
}
// @RestController // day la annotation
// public class UserController {
//     //DI: dependency Injection;
//     private UserService userService;
    
//     public UserController(UserService userService) {
//         this.userService = userService;
//     }

//     @GetMapping("") // day la annotation de gui request (yeu cau)
//     public String getHomePage() {
//         return this.userService.handleHello();
//     }
// }