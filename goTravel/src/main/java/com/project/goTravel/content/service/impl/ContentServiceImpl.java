package com.project.goTravel.content.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.project.goTravel.content.service.ContentService;



@Service
public class ContentServiceImpl implements ContentService{
	
	@Resource
	private ContentMapper contentMapper;

	@Override
	public List<Map<String, Object>> selectContentServiceList(Map map) throws Exception {
		String keyword = (String) map.get("region");
		System.out.println("확인확인:" + keyword);
		
		List<Map<String, Object>>searchResult = contentMapper.selectContentServiceList(keyword);
		return searchResult;
	}


	
}
