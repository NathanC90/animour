package org.iii.ee100.animour.common.entity;


import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class PageInfo {

	private Integer number;
	
	private Integer size;
	
	public PageInfo() {}
	
	public PageInfo(Integer number, Integer size) {
		this.number = number;
		this.size = size;	
	}
}
