package com.project.goTravel.content.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.goTravel.content.service.ContentService;



@Controller
public class ContentController {
	
	// �긽�뭹吏��뿭肄붾뱶 (�꽌�슱) = 10
	// private final int regionCd = 10;
	@Resource
	private ContentService contentService;
	
	@RequestMapping(value="a-01.do") 
	public String contentInit(HttpServletRequest req, @RequestParam (required=true) Map map) throws Exception {
		
		List<Map<String,Object>> searchResult = contentService.selectContentServiceList(map);
		
		System.out.println("content 而⑦듃濡ㅻ윭: " + searchResult);
		
		return "content/content.tiles2";
	}
}
