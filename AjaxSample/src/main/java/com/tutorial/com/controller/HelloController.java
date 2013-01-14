/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tutorial.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author tarun
 */
@Controller
public class HelloController {
    @RequestMapping(value="/hello",method=RequestMethod.GET)
    public ModelAndView sayHello()
    {
        System.out.println("say hello");
        String msg="#Programming test\n"+
                    "<pre><code>What is mvc?\n"+
                    "1. It is a framework\n"+
                     "2. It is name of an animal\n"+
                    "3. It is name of a new programming language\n"+
                     "4. None of above</code></pre>";
        ModelAndView model=new ModelAndView("hello");
        model.addObject("message", msg);
        return model;
    }
}
