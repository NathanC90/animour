package org.iii.ee100.sample.nbaTeam;

public class NbaPlayer {
	private long Id;
	private String name;
	private int three_pointer_percentage;
	private int fg_percentage;
	private int apg;
	private long matchid;

	public void setId(long Id) {
		this.Id = Id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setThree_pointer_percentage(int three_pointer_percentage) {
		this.three_pointer_percentage = three_pointer_percentage;
	}

	public void setFg_percentage(int fg_percentage) {
		this.fg_percentage = fg_percentage;
	}

	public void setApg(int apg) {
		this.apg = apg;
	}
	public void setMatchid(long matchid) {
		this.matchid =matchid;
	}

	public long getId() {
		return Id;
	}

	public String getName() {
		return name;
	}

	public int getThree_pointer_percentage() {
		return three_pointer_percentage;
	}

	public int getFg_percentage() {
		return fg_percentage;
	}

	public int getApg() {
		return apg;
	}
	public long getMatchid() {
		return matchid;
	}

}
