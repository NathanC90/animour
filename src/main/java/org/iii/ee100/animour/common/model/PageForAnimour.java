package org.iii.ee100.animour.common.model;

import org.springframework.data.domain.PageRequest;

import lombok.Getter;
import lombok.Setter;


@Setter
@Getter
public class PageForAnimour{

	public PageForAnimour() {
	
	}
	int defaultSize = 3;
	
	int pageNo;
	
	int size;
	
	public PageRequest getPageRequest() {
		if(this.size == 0) {
			this.setSize(defaultSize);
		}
		if(this.pageNo == 0) {
			this.setPageNo(1);
		}
		return new PageRequest(this.pageNo-1, this.size);
	}
}
