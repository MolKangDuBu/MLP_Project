package mlp.project.lollipop.CAFE_REVIEW;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import mlp.project.lollipop.common.FileUploadUtil;

@Controller
public class Cafe_ReviewController {

	@Resource(name ="cafereviewService")
	Cafe_ReviewService reviewservice;
	
	
	@RequestMapping(value = "/Cafe_Review/list")
	public String Review_list(Model model, Cafe_ReviewDto dto, String store_name) {
		
		System.out.println("list key=====>" + dto.getKey());
		System.out.println("list keyword=====>" + dto.getKeyword());
		System.out.println("list keyword=====>" + dto.getStore_key());
		
		dto.setStart( dto.getPg()*10);
	
		List<Cafe_ReviewDto> list = reviewservice.getList(dto);
		

		if(store_name !=null) {
			model.addAttribute("title", store_name);
		}else {
    		model.addAttribute("title", "null");
    	}
		model.addAttribute("ReviewList", list);
		model.addAttribute("totalCnt", reviewservice.getTotal(dto));
		
		
		return "CAFE_REVIEW/Cafe_list";
	}
	
	@RequestMapping(value = "Cafe_Review/Reviewlist")
	public String Cafe_Review_reviewlist(Model model, Cafe_ReviewDto dto) {
		
		dto.setStart( dto.getPg()*10);

		List<Cafe_ReviewDto> list = reviewservice.getList(dto);
		
		for(Cafe_ReviewDto tempDto : list) {
			System.out.println(tempDto.getReview_title());
			System.out.println(tempDto.getStore_key());
		}
		
		model.addAttribute("ReviewList", list);
		model.addAttribute("totalCnt", reviewservice.getTotal(dto));
		
		return "CAFE_REVIEW/Cafe_Reviewlist";
	}
	
	@RequestMapping(value = "/Cafe_Review/listcat", method=RequestMethod.GET)
	public String Review_listcat(Model model, Cafe_ReviewDto dto) {
		
//		System.out.println("list key=====>" + dto.getKey());
//		System.out.println("list keyword=====>" + dto.getKeyword());
		
		dto.setStart( dto.getPg()*10);

		List<Cafe_ReviewDto> list = reviewservice.getListCat(dto);
		
		for(Cafe_ReviewDto tempDto : list) {
			System.out.println(tempDto.getReview_title());
		}
		
		model.addAttribute("ReviewList", list);
		model.addAttribute("totalCnt", reviewservice.getTotal(dto));
		
		return "CAFE_REVIEW/Cafe_list";
	}
	
	@RequestMapping("/Review/write")
	String Review_write(Model model)
	{
		
		Cafe_ReviewDto dto = new Cafe_ReviewDto();
		model.addAttribute("Cafe_ReviewDto", dto);
		
		return "CAFE_REVIEW/Cafe_write";
	}	
	
	
	@RequestMapping("/Cafe_Review/save")
	String Review_save(Cafe_ReviewDto dto, HttpServletRequest req, MultipartHttpServletRequest multi)
	{
	
		List<MultipartFile> multiList = new ArrayList<MultipartFile>();
		
		//null?????? ???????????? ??????
		for(int i =1 ; i<=3; i++) {
			if(multi.getFile("upload"+i).getSize()!=0) {
				multiList.add(multi.getFile("upload"+i));
			}
		}
		
		
		List<String> fileNameList=new ArrayList<String>();
		String path = req.getServletContext().getRealPath("/");
		
		FileUploadUtil.upload( path,  multiList, fileNameList); 
		
		// ????????? ???????????? ?????? ??????
		for(int i = 0; i<fileNameList.size(); i++) {
			System.out.println("???????????? : "+fileNameList.get(i)+"index??? : " + i);
		}
		 
		switch(fileNameList.size()) {
	        case 1:
	        	dto.setReview_image1(fileNameList.get(0));
	        	break;
	        case 2:
	          	dto.setReview_image1(fileNameList.get(0));
	          	dto.setReview_image2(fileNameList.get(1));
	        	break;
	        case 3:
	          	dto.setReview_image1(fileNameList.get(0));
	          	dto.setReview_image2(fileNameList.get(1));
	          	dto.setReview_image3(fileNameList.get(2));
	        	break;
	        default:
	        		break;	        	
	        }
		
		System.out.println("?????? : "+dto.getReview_key());
		if(dto.getReview_key()>=1) {
			System.out.println("??????");
			reviewservice.update(dto);
		}
		else {
			System.out.println("??????");
			reviewservice.insert(dto);
		}		
		
		return "redirect:/Cafe_Review/list";
	}
	
	@RequestMapping("/Cafe_Review/view")
	String Review_view(String review_key, Model model)
	{
//		System.out.println("=====================1========================");
//		System.out.println(dto);
		Cafe_ReviewDto resultDto = reviewservice.getView(review_key);
//		System.out.println("=====================2========================");
//		System.out.println(resultDto);
		reviewservice.increasehit(review_key);
		model.addAttribute("Cafe_ReviewDto", resultDto);
		
		return "CAFE_REVIEW/Cafe_view";
	}	
	
	@RequestMapping(value = "/Cafe_Review/modify")
	public String Review_modify(String review_key, Model model) {
	
		model.addAttribute("Cafe_ReviewDto", reviewservice.getView(review_key));
	return "CAFE_REVIEW/Cafe_write";
	}
	
	@RequestMapping(value = "/Cafe_Review/delete")
	public String Review_delete(String review_key) {
//		System.out.println("Review_delete=====================" + review_key);
		reviewservice.delete(review_key);
		return "redirect:/Cafe_Review/list";
	}
}