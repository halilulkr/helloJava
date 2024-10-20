package com.hulker.hellojava.odev01;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hulker")
public class Hello {

    @GetMapping("/merhaba")
    public String main() {
        return "Merhaba Docker!";
    }

    @GetMapping("/nasilsin")
    public String hello() {
        return "İyiyim, sen nasılsın?";
    }
}
