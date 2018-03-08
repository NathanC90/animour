package org.iii.ee100.sample.band;

import java.util.List;

public class Band {
	private Long id;
	private String name;
	private Integer member;
	private List<Member> Member;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getMember() {
		return member;
	}

	public void setMember(Integer member) {
		this.member = member;
	}

	public List<Member> getmember() {
		return Member;
	}

	public void setmember(List<Member> Member) {
		this.Member = Member;
	}

}
