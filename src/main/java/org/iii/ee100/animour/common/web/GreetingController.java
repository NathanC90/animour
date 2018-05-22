package org.iii.ee100.animour.common.web;

import org.iii.ee100.animour.common.model.Greeting;
import org.iii.ee100.animour.common.model.HelloMessage;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.util.HtmlUtils;

@Controller
public class GreetingController {

	@MessageMapping("/hello")
	@SendTo("/topic/greetings")
	public Greeting greeting(HelloMessage message) throws InterruptedException {
		Thread.sleep(1000);
		return new Greeting("Hello, " + HtmlUtils.htmlEscape(message.getName()) + "!");
	}

}