package vn.hiepdev.laptopshop.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vn.hiepdev.laptopshop.domain.User;
import vn.hiepdev.laptopshop.service.UserService;

@Controller
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/")
    public String getHomePage(Model model) {
        model.addAttribute("users", "Hello World");
        return "index";
    }

    @RequestMapping(value = "/admin/user", method = RequestMethod.GET)
    public String getUserPage(Model model) {
        List<User> users = userService.getAllUsers();
        model.addAttribute("users", users);
        return "admin/user/show";
    }

    @RequestMapping(value = "/admin/user/{id}", method = RequestMethod.GET)
    public String getUserDetailsPage(Model model, @PathVariable("id") Long id) {
        User user = userService.getUserById(id);
        model.addAttribute("id", id);
        model.addAttribute("user", user);
        return "admin/user/details";
    }

    @RequestMapping(value = "/admin/user/create", method = RequestMethod.GET)
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
    public String createUser(Model model, @ModelAttribute("newUser") User user) {
        userService.save(user);
        return "redirect:/admin/user";
    }

    @RequestMapping(value = "/admin/user/update/{id}", method = RequestMethod.GET)
    public String getUpdateUserPage(Model model, @PathVariable("id") Long id) {
        User user = userService.getUserById(id);
        model.addAttribute("id", id);
        model.addAttribute("user", user);
        return "admin/user/update";
    }

    @RequestMapping(value = "/admin/user/update", method = RequestMethod.POST)
    public String updateUser(Model model, @ModelAttribute("user") User user) {
        User oldUser = userService.getUserById(user.getId());
        if (oldUser != null) {
            oldUser.setFullName(user.getFullName());
            oldUser.setPhoneNumber(user.getPhoneNumber());
            oldUser.setAddress(user.getAddress());
            userService.save(oldUser);
        }
        return "redirect:/admin/user";
    }

    @RequestMapping(value = "/admin/user/delete/{id}", method = RequestMethod.GET)
    public String deleteUser(Model model, @PathVariable("id") Long id) {
        model.addAttribute("id", id);
        User user = new User();
        user.setId(id);
        model.addAttribute("user", user);
        return "admin/user/delete";
    }

    @RequestMapping(value = "/admin/user/delete", method = RequestMethod.POST)
    public String deleteUser(@ModelAttribute("user") User user) {
        userService.delete(user.getId());
        return "redirect:/admin/user";
    }
}
