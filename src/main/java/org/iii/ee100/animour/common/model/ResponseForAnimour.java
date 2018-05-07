package org.iii.ee100.animour.common.model;

import java.util.List;

import org.iii.ee100.animour.common.entity.GenericEntity;
import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Component
public class ResponseForAnimour {
	
	private String status;
	
	private List<? extends GenericEntity> data;
	
	private String message;

}
