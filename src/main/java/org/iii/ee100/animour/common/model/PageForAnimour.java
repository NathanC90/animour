package org.iii.ee100.animour.common.model;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class PageForAnimour {

	int pageNo;

	int size;

	Sort.Direction direction;

	String properties;

	public PageRequest getPageRequest() {
		if (this.size == 0) {
			this.setSize(3);
		}
		if (this.pageNo == 0) {
			this.setPageNo(1);
		}
		if ((this.properties == null || this.properties.isEmpty()) || this.direction == null) {
			return new PageRequest(this.pageNo - 1, this.size);
		} else {
			this.setDirection(Sort.DEFAULT_DIRECTION);
			return new PageRequest(this.pageNo - 1, this.size, this.direction, this.properties);
		}
	}
}
