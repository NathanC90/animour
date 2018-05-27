package org.iii.ee100.animour.salon.dao;

import java.util.List;

import org.iii.ee100.animour.common.dao.GenericDao;
import org.iii.ee100.animour.salon.entity.FreeTime;

public interface FreeTimeDao extends GenericDao<FreeTime> {
	List<FreeTime> findByStatus(String status);
}
