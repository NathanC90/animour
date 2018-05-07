package org.iii.ee100.animour.common.model;

import java.util.List;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ResponseForAnimour {
	
	private String status;
	
	private List<GenericEntity> data;
	
	private String message;

}
