package org.iii.ee100.animour.member.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.iii.ee100.animour.forum.entity.Article;

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
//	@Column(name="ADDRESS")
//	String address;//地址
	
	@OneToMany(
			mappedBy="member"
			,cascade= {CascadeType.ALL}
//			,fetch=FetchType.EAGER
	)
	private List<Article> article;

	@Override
	public String toString() {
		return "Member [id=" + id + ", account=" + account + ", password=" + password + ", name=" + name + ", nick="
				+ nick + ", cell=" + cell + ", email=" + email + ", article=" + article + "]";
	}

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

	public List<Article> getArticle() {
		return article;
	}

	public void setArticle(List<Article> article) {
		this.article = article;
	}

	public Member(String account, String password, String name) {
		super();
		this.account = account;
		this.password = password;
		this.name = name;
	}
	
	public Member(String account) {
		super();
		this.account = account;
	}

	public Member() {
	}
	
	
	
}
