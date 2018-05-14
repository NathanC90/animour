package org.iii.ee100.animour.common.entity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class HelloMessage extends GenericEntity{
	private String name;
	public HelloMessage() {
    }
	public HelloMessage(String name) {
        this.name = name;
    }
}
