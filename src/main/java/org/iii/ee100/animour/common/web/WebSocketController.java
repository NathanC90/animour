package org.iii.ee100.animour.common.web;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

@Controller
public class WebSocketController {
	
	@Autowired
	private SimpMessagingTemplate simpMessagingTemplate;

	@MessageMapping("/chat")
	public void handleChat(Principal principal, String msg) {
		if(principal.getName().equals("ViewSonic")){
			System.out.println("++++++++++++++++"+msg+"+++++++++++++++++");
			simpMessagingTemplate.convertAndSendToUser("BenQ", "/queue/chat", principal.getName() + "-發送訊息:" + msg);
		} else {
			System.out.println("++++++++++++++++"+msg+"+++++++++++++++++");
			simpMessagingTemplate.convertAndSendToUser("ViewSonic", "/queue/chat", principal.getName() + "-發送訊息:" + msg);
		}
	}
	
}
