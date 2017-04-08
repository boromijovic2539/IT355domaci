/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Mijovic
 */
@Controller
public class CarskiController {

    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public ModelAndView HomePage() {
        ModelAndView model = new ModelAndView();
      //  model.addObject("message", "DOBRODOSLI!");
        model.setViewName("home");
        return model;
    }
    
    @RequestMapping(value = {"/history"}, method = RequestMethod.GET)
    public ModelAndView HistoryPage() {
        ModelAndView model = new ModelAndView();
      //  model.addObject("message", "DOBRODOSLI!");
        model.setViewName("history");
        return model;
    }
    
    @RequestMapping(value = {"/headLogin"}, method = RequestMethod.GET)
    public ModelAndView HeadLogin() {
        ModelAndView model = new ModelAndView();
      //  model.addObject("message", "DOBRODOSLI!");
        model.setViewName("headLogin");
        return model;
    }
}
