package vn.hoidanit.laptopshop.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.service.UserService;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;

    }

    @RequestMapping("home")
    public String getHomePage(Model model) {
        List<User> arrUsers = this.userService.getAllUserByEmail("tedvkeiu@gmail.com");
        System.out.println("List user: " + arrUsers);

        model.addAttribute("test", "test");
        model.addAttribute("kieu", "hihi");

        return "index";
    }

    @RequestMapping("/admin/user")
    public String getUserPage(Model model) {
        model.addAttribute("newUser", new vn.hoidanit.laptopshop.domain.User());
        return "/admin/user/create";
    }

    @RequestMapping(value = "/admin/user/create1", method = RequestMethod.POST)
    public String createUserPage(Model model, @ModelAttribute("newUser") User tedvkieu) {

        System.out.println("run here" + tedvkieu);

        this.userService.handleSaveUser(tedvkieu);
        return "index";
    }

}
