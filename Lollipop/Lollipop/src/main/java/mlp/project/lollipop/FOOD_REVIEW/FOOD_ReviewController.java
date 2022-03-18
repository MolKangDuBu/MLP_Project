package mlp.project.lollipop.FOOD_REVIEW;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import mlp.project.lollipop.common.FileUploadUtil;

@Controller
public class FOOD_ReviewController {

    @Resource(name = "foodreviewService")
    FOOD_ReviewService reviewservice;

    
    @RequestMapping(value = "/FOOD_Review/list")
    public String Review_list(Model model, FOOD_ReviewDto dto, String store_key, String store_name) {
        System.out.println(dto.getKey());
        System.out.println(dto.getKeyword());
        
        int pg = dto.getPg();
    	dto.setStart((pg)*dto.getPageSize());
    	if(store_key != null) {
    		dto.setStore_key(store_key);
    		List<FOOD_ReviewDto> list = reviewservice.searchlist(dto);
    		model.addAttribute("ReviewList", list);
    	}else {

    		 List<FOOD_ReviewDto> list = reviewservice.getlist(dto);
    		 model.addAttribute("ReviewList", list);
    	}
    	if(store_name !=null) {
    		model.addAttribute("title", store_name);
    	}else {
    		model.addAttribute("title", "null");
    	}

        
        model.addAttribute("totalCnt", reviewservice.getTotal(dto));

        return "FOOD_REVIEW/Food_list2";
    }

    @RequestMapping(value = "/FOOD_Review/view")
    public String Review_view(String review_key, Model model) {
    	
    	System.out.println("asdsad : "+review_key);
    	FOOD_ReviewDto dto = reviewservice.getView(review_key);
        reviewservice.incresehit(review_key);
        model.addAttribute("ReviewDto", dto);
       
        return "FOOD_REVIEW/Food_view2";
    }

    @RequestMapping(value = "/FOOD_Review/write")
    public String Review_write(Model model) {

    	FOOD_ReviewDto dto = new FOOD_ReviewDto();
        model.addAttribute("reviewDto", dto);
        return "FOOD_REVIEW/Food_write";
    }
    
    @RequestMapping(value = "/FOOD_Review/modify")
    public String Review_modify(String review_key, Model model) {      
        model.addAttribute("reviewDto", reviewservice.getView(review_key));
        return "FOOD_REVIEW/Food_write";
    }
   
    @RequestMapping(value = "/FOOD_Review/delete")
    public String Review_delete(String review_key) {      
       reviewservice.delete(review_key);
        return "redirect:/Review/list";
    }

    @RequestMapping(value = "/FOOD_Review/save")
    public String Review_save(FOOD_ReviewDto dto, HttpServletRequest req, MultipartHttpServletRequest multi) {


        System.out.println("save");
        System.out.println(dto.getReview_title());
        System.out.println(dto.getReview_contents());
        System.out.println(dto.getReview_id());


        List<MultipartFile> multiList = new ArrayList<MultipartFile>();

        //null값을 확인하여 추가
        for(int i =1; i<=3;i++) {
        	if(multi.getFile("upload"+i).getSize()!=0) {
        		multiList.add(multi.getFile("upload"+i));
        	}
        }

        List<String> fileNameList = new ArrayList<String>();
        String path = req.getServletContext().getRealPath("/");
        //System.out.println("물리적위치값 : " + path);
        FileUploadUtil.upload(path, multiList, fileNameList);

        // 이미지 파일명은 따로 추가
        for(int i = 0; i<fileNameList.size();i++) {
        	System.out.println("파일명들 : "+fileNameList.get(i)+"index값 : "+ i);
        }
        

        //파일 개수에 따라 입력을 달리한다.
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
        
         if(dto.getReview_key()>=1) {
        	reviewservice.update(dto);
         }else {
        	 reviewservice.insert(dto);

         }
        


        return "redirect:/FOOD_Review/list";

    }



}