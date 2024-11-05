package vn.hoidanit.laptopshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import vn.hoidanit.laptopshop.service.UserService;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("home")
    public String getHomePage(Model model) {
        String test = this.userService.handleHello();
        String hihi = "Day la chuoi de test";
        model.addAttribute("test", test);
        model.addAttribute("kieu", hihi);

        return "index";
    }

}
// @RestController // day la annotation
// public class UserController {
// //DI: dependency Injection;
// private UserService userService;

// public UserController(UserService userService) {
// this.userService = userService;
// }

// @GetMapping("") // day la annotation de gui request (yeu cau)
// public String getHomePage() {
// return this.userService.handleHello();
// }
// }