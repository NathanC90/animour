package org.iii.ee100.animour.member.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.halfway.entity.Adoption;
import org.iii.ee100.animour.halfway.entity.Animal;

@Entity
@Table(name="MEMBER")
public class Member {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	Long  id;
	@Column(name="ACCOUNT")
	String account;//帳號
	@Column(name="PASSWORD")
	String password;//密碼
	
	@Column(name="NAME")
	String name;//姓名
	@Column(name="NICK")	
	String nick;//暱稱

	@Column(name="CELL")
	String cell;//手機
	@Column(name="EMAIL")
	String email;//信箱
    @Column(name="ADDRESS")
    String address;//地址
    @Column(name="REGISTRATIONTIME")
    java.sql.Date registrationTime;
    @Column(name="Freq")
    Integer freq;

	@OneToMany(
			mappedBy="member"
			,cascade= {CascadeType.ALL}
//			,fetch=FetchType.EAGER
	)    
	private List<Article> article;
	
	@OneToMany(mappedBy = "member", cascade = { CascadeType.ALL })
	private List<Animal> animals;
	
	@OneToOne(mappedBy = "member", cascade = { CascadeType.ALL })
	private Adoption adoption;


    
    public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getCell() {
		return cell;
	}
	public void setCell(String cell) {
		this.cell = cell;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public java.sql.Date getRegistrationTime() {
		return registrationTime;
	}
	public void setRegistrationTime(java.sql.Date registrationTime) {
		this.registrationTime = registrationTime;
	}
	public Integer getFreq() {
		return freq;
	}
	public void setFreq(Integer freq) {
		this.freq = freq;
	}

	
	


}


	
	

