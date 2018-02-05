package game;

public class Game {
	private Long id;
	private String name;
	private String publisher;
	private String platform;
	private java.sql.Date release_date;

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

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getPlatform() {
		return platform;
	}

	public void setPlatform(String platform) {
		this.platform = platform;
	}

	public java.sql.Date getRelease_date() {
		return release_date;
	}

	public void setRelease_date(java.sql.Date release_date) {
		this.release_date = release_date;
	}
}
