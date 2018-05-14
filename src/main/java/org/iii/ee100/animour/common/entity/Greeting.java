package org.iii.ee100.animour.common.entity;

import lombok.Getter;

@Getter
public class Greeting {
	private String content;

    public Greeting() {
    }

    public Greeting(String content) {
        this.content = content;
    }

    
}
