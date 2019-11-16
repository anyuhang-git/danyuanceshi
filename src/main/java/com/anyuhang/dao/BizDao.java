package com.anyuhang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface BizDao {

	List getBizList(@Param("vo")Integer vo, @Param("vo2")Integer vo2);

}
