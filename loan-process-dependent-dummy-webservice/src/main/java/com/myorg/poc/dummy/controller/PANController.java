package com.myorg.poc.dummy.controller;

import org.springframework.web.bind.annotation.*;

import static org.springframework.http.MediaType.TEXT_PLAIN_VALUE;

@RestController
@RequestMapping("/pan")
public class PANController {

    @PostMapping(value = "/validate", consumes = TEXT_PLAIN_VALUE, produces = TEXT_PLAIN_VALUE)
    @ResponseBody
    public String validatePan(@RequestBody String panNumber){
        System.out.println("panNumber = "+panNumber);

        return (panNumber == null || panNumber == "" || panNumber.length() != 10) ? "false" : "true";
    }
}
