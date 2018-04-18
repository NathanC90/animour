package org.iii.ee100.animour.member.entity;

import java.util.ArrayList;
import java.util.Collection;
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

import org.iii.ee100.animour.common.entity.GenericEntity;
import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.halfway.entity.Adoption;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

@Entity
@Table(name = "MEMBER")
public class Member extends GenericEntity implements UserDetails {

	@OneToMany(mappedBy = "member", cascade = { CascadeType.ALL })
	private List<Role> role;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	private Long id;
	@Column(name = "ACCOUNT")
	private String account;// 帳號
	@Column(name = "PASSWORD")
	private String password;// 密碼

	@Column(name = "NAME")
	private String name;// 姓名
	@Column(name = "NICKNAME")
	private String nickname;// 暱稱

	@Column(name = "CELL")
	private String cell;// 手機
	@Column(name = "EMAIL")
	private String email;// 信箱
	@Column(name = "ADDRESS")
	private String address;// 地址
	@Column(name = "REGISTRATIONTIME")
	private java.sql.Timestamp registrationTime;
	@Column(name = "Freq")
	private Integer freq;

	@OneToMany(mappedBy = "member", cascade = { CascadeType.ALL }	)
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

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
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

	public java.sql.Timestamp getRegistrationTime() {
		return registrationTime;
	}

	public void setRegistrationTime(java.sql.Timestamp registrationTime) {
		this.registrationTime = registrationTime;
	}

	public Integer getFreq() {
		return freq;
	}

	public void setFreq(Integer freq) {
		this.freq = freq;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		ArrayList<GrantedAuthority> authorities = new ArrayList<>();
		GrantedAuthority auth = new SimpleGrantedAuthority("ROLE_Member");
		authorities.add(auth);
		return authorities;
	}

	@Override
	public String getUsername() {
		return account;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {

		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

}
