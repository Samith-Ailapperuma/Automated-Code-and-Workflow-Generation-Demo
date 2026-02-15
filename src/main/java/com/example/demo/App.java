package com.example.demo;

import com.example.demo.model.Greeting;

public class App {
    public static void main(String[] args) {
        String name = args.length > 0 ? args[0] : "Java Developer";
        Greeting greeting = new Greeting(name, "Welcome to Java 17 (v2) - Workflow Verified!");

        System.out.println("========================================");
        System.out.println(greeting.getFullGreeting());
        System.out.println("========================================");
        System.out.println("Java Version: " + System.getProperty("java.version"));
        System.out.println("Record Data: " + greeting);
    }
}
