package com.anyuhang.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anyuhang.dao.BizDao;
import com.anyuhang.service.BizService;

@Service
public class BizServiceImpl implements BizService {

	
	 @Autowired
	 private BizDao dao;

	@Override
	public List getBizList(Integer vo,Integer vo2) {
		// TODO Auto-generated method stub
		return dao.getBizList(vo,vo2);
	}
}

