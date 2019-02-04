package com.requestapp.controller;


import com.requestapp.model.Request;
import com.requestapp.service.RequestService;
import com.requestapp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

@Controller
public class RequestController {

    @Autowired
    private RequestService requestService;
    @Autowired
    private UserService userService;

    @Autowired(required = true)
    @Qualifier(value = "requestService")
    public void setRequestService(RequestService requestService) {
        this.requestService = requestService;
    }

    @RequestMapping(value = "requests", method = RequestMethod.GET)
    public String listRequests(Model model) {
        model.addAttribute("listRequests", this.requestService.listRequests());
        return "requests";
    }

    @RequestMapping(value = "/requests/add", method=RequestMethod.POST)
    public String addRequest(@ModelAttribute("request") @Valid Request request, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "newrequest";
        }
        this.requestService.addRequest(request);
        return "redirect:/requests";
    }

    @RequestMapping(value = "/requests/add", method=RequestMethod.GET)
    public String addNewRequest(Model model) {
        model.addAttribute("request", new Request());
        return "newrequest";
    }

    @RequestMapping("/remove/{id}")
    public String removeRequest(@PathVariable("id") int id) {
        this.requestService.removeRequest(id);
        return "redirect:/requests";
    }

    @RequestMapping(value = "/edit/{id}" ,method = RequestMethod.GET)
    public String editRequest(@PathVariable("id")  int id, Model model) {
        model.addAttribute("request", this.requestService.getRequestById(id));
        return "editrequest";
    }

    @RequestMapping(value = "/requests/edit/", method=RequestMethod.POST)
    public String editRequest(@ModelAttribute("request") Request request) {
        this.requestService.updateRequest(request);
        return "redirect:/requests";
    }


    @RequestMapping("requestdata/{id}")
    public String requestData(@PathVariable("id") int id, Model model) {
        model.addAttribute("request", this.requestService.getRequestById(id));
        return "requestdata";
    }

}
