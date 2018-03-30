package org.iii.ee100.animour.member.dao;

import org.iii.ee100.animour.hospital.entity.Hospital;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.data.repository.CrudRepository;

public interface MemberDao extends CrudRepository<Member, Long>{

}
