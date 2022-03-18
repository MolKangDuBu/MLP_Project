package mlp.project.lollipop.TODAY_REVIEW;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import mlp.project.lollipop.common.FileUploadUtil;

@Controller
public class Today_ReviewController {

	@Resource(name="todayService")
	Today_ReviewService todayservice;
	
	
	 @RequestMapping(value = "/Today/list")
	    public String Today_list(Model model, Today_ReviewDto dto) {
	        System.out.println(dto.getKey());
	        System.out.println(dto.getKeyword());
	        dto.setStart(dto.getPg() * 10);

	        List<Today_ReviewDto> list = todayservice.getlist(dto);
	        model.addAttribute("TodayList", list);
	        model.addAttribute("totalCnt", todayservice.getTotal(dto));

	        return "TODAY_REVIEW/Today_list2";
	    }

	    @RequestMapping(value = "/Today/view")
	    public String Today_view(String store_key, Model model) {

	        Today_ReviewDto dto = todayservice.getView(store_key);
	        model.addAttribute("TodayDto", dto);
	        return "TODAY/Today_view";
	    }

	 

	   
}
