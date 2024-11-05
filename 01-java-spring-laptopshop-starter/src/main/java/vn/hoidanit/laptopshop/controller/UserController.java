package vn.hoidanit.laptopshop.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;






@Controller
public class UserController {

    // private final UserService userService;

    // public UserController(UserService userService) {
    //     this.userService = userService;
    // }


    @RequestMapping("home")
    public String getHomePage() {

        return "index";
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