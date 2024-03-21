package de.rsolut.graalvmdemo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Mono;

@RestController
@RequestMapping("/api")
public class GreetingController {

    @GetMapping("greet")
    public Mono<String> greet() {
        return Mono.just("Hello World");
    }
}
