package com.example.hello;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/** 
 * Main application entry point.
 * Note: ComponentScan includes "com.example" to detect controllers in subpackages.
 */
@SpringBootApplication
@ComponentScan(basePackages = "com.example")
public class HelloApplication {

	public static void main(String[] args) {
		SpringApplication.run(HelloApplication.class, args);
	}

}
