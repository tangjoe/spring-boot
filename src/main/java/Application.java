package hello;

import org.springframework.boot.*;
import org.springframework.boot.autoconfigure.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@RestController
@EnableAutoConfiguration
public class Application {

    int a=0,b=1000000,c;

    @RequestMapping("/")
    String home() {
        return "Hello World from Joe !\n";
    }

    @RequestMapping("/health")
    String health() {
        return "Stay safe man ....\n";
    }

    public static void main(String[] args) throws Exception {
        SpringApplication.run(Application.class, args);
    }

}
