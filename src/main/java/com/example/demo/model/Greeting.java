package com.example.demo.model;

/**
 * A Java 17 Record representing a greeting.
 */
public record Greeting(String name, String message) {
    public String getFullGreeting() {
        return message + ", " + name + "!";
    }
}
