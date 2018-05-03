package org.iii.ee100.animour.member.entity;

import java.util.ArrayList;
import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.iii.ee100.animour.common.entity.GenericEntity;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.Data;

@Data
@Entity
@Table(name = "MEMBER")
public class Member extends GenericEntity implements UserDetails {
	
	@NotBlank(message="enter a username")
	@Column(name = "ACCOUNT")
	private String account;// 帳號
	@NotBlank
	@Size(min = 5, max = 10, message = "Please enter between {min} and {max} characters.")
	@Column(name = "PASSWORD")
	private String password;// 密碼

	@NotBlank(message="enter your name")
	@Column(name = "NAME")
	private String name;// 姓名
	
	@NotBlank(message="enter your nickname")
	@Column(name = "NICKNAME")
	private String nickname;// 暱稱

	
	@Pattern(regexp ="^[09]{2}[0-9]{2}-[0-9]{6}$",message="Invalid cell 09xx-xxxxxx")
	@Column(name = "CELL")
	private String cell;// 手機
	
	@NotBlank(message="enter your email")
	@Pattern(regexp = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$", message = "Invalid email")
	@Column(name = "EMAIL")
	private String email;// 信箱
	
	
	@Column(name = "ADDRESS")
	private String address;// 地址
	
	@Column(name = "REGISTRATIONTIME")
	private java.sql.Timestamp registrationTime;
	
	@Column(name = "LOGINTIME")
	private java.sql.Timestamp loginTime;
	@Column(name = "FREQ")
	private Integer freq;
	@Column(name = "STATUS")//(0:封鎖,1:使用)
	private Integer status;
	@Column(name = "ROLE")//("member","admin")
	private String role;
	
	

//	@JsonIgnore
//	@OneToMany(fetch=FetchType.EAGER,mappedBy = "member", cascade = { CascadeType.ALL })
//	private List<Animal> animals;
//
//	@JsonIgnore
//	@OneToOne(mappedBy = "member", cascade = { CascadeType.ALL })
//	private Adoption adoption;

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		ArrayList<GrantedAuthority> authorities = new ArrayList<>();
		GrantedAuthority auth = new SimpleGrantedAuthority("ROLE_Member");
		if(account.equals("Admin")) {
			auth = new SimpleGrantedAuthority("ROLE_Admin");
		}		
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
