package org.iii.ee100.sample.nbaTeam;

import java.util.List;

import org.iii.ee100.sample.shoebrand.Shoe;

public class NbaTeam {
	private long Id;
	private String TeamName;
	private int ranking;
	private int win;
	private int lose;
	private List<NbaPlayer> player;
	public void setId(long Id) {
		this.Id = Id;
	}

	public void setTeamName(String TeamName) {
		this.TeamName = TeamName;
	}

	public void setranking(int ranking) {
		this.ranking = ranking;
	}



	public void setwin(int win) {
		this.win = win;
	}
	public void setlose(int lose) {
		this.lose = lose;
	}
	public void setList(List<NbaPlayer> player) {
		this.player = player;
	}
	
	

	public long getId() {
		return Id;
	}

	public String getTeamName() {
		return TeamName;
	}

	public int getRanking() {
		return ranking;
	}



	public int getWin() {
		return win;
	}
	public int getLose() {
		return lose;
	}
	
	public List<NbaPlayer> getList() {
		return player;
	}

}
