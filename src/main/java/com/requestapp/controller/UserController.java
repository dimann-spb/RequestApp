package com.requestapp.controller;


import com.requestapp.model.User;
import com.requestapp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired(required = true)
    @Qualifier(value = "userService")
    public void setRequestService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public String listUsers(Model model) {
        model.addAttribute("listUsers", this.userService.listUsers());
        return "users";
    }

    @RequestMapping(value = "/register", method=RequestMethod.POST)
    public String addUser(@ModelAttribute("user") User user) {
        this.userService.addUser(user);
        return "redirect:/users";
    }

    @RequestMapping(value = "/register", method=RequestMethod.GET)
    public String addNewUser(Model model) {
        model.addAttribute("user", new User());
        return "registerUser";
    }


    @RequestMapping(value = "/users/edit/{id}" ,method = RequestMethod.GET)
    public String editUser(@PathVariable("id")  int id, Model model) {
        model.addAttribute("user", this.userService.getUserById(id));
        return "edituser";
    }

    @RequestMapping(value = "/users/edit/", method=RequestMethod.POST)
    public String editUser(@ModelAttribute("user") User user) {
        this.userService.updateUser(user);
        return "redirect:/users";
    }

    @RequestMapping("users/remove/{id}")
    public String removeRequest(@PathVariable("id") int id) {
        this.userService.removeUser(id);
        return "redirect:/users";
    }



    @RequestMapping("userdata/{id}")
    public String userData(@PathVariable("id") int id, Model model) {
        model.addAttribute("user", this.userService.getUserById(id));
        return "userdata";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginUser(Model model) {
        model.addAttribute("user", new User());
        return "login";
    }

    @RequestMapping(value = "/error", method = RequestMethod.GET)
    public String loginError() {
        return "error";
    }


}
