package org.iii.ee100.sample.drama;

public class Actor {
	Long  id;
	private String a_character;
	private String actor;
	private Long d_id;
	public String Dname;
		
	public String getDname() {
		return Dname;
	}
	public void setDname(String dname) {
		Dname = dname;
	}
	public String getA_character() {
		return a_character;
	}
	public void setA_character(String a_character) {
		this.a_character = a_character;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public Long getD_id() {
		return d_id;
	}
	public void setD_id(Long d_id) {
		this.d_id = d_id;
	}
	public long getId() {
		return id;
	}
	public void setId(Long  id) {
		this.id = id;
	}
	public Actor(Long id, String a_character, String actor, Long d_id) {
		super();
		this.id = id;
		this.a_character = a_character;
		this.actor = actor;
		this.d_id = d_id;
	}
	
	public Actor() {
		
	}
	
}
 // end of class Actor