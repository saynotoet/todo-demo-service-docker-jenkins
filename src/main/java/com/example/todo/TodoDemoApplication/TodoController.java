package com.example.todo.TodoDemoApplication;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TodoController {

	@GetMapping("/todo-demo")
	public String todoDemo() {
		return "This is TodoDemoApplication";
	}
}
