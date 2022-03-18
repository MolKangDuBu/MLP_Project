package mlp.project.lollipop.STORE;

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
public class StoreController {

	@Resource(name="storeService")
	StoreService storeservice;
	
	
	 @RequestMapping(value = "/Store/list")
	    public String Store_list(Model model, StoreDto dto) {
	        System.out.println(dto.getKey());
	        System.out.println(dto.getKeyword());
	        dto.setStart(dto.getPg() * 10);

	        List<StoreDto> list = storeservice.getlist(dto);

	        model.addAttribute("StoreList", list);
	        model.addAttribute("totalCnt", storeservice.getTotal(dto));

	        return "STORE/Store";
	    }

	    @RequestMapping(value = "/Store/view")
	    public String Store_view(String store_key, Model model) {

	        StoreDto dto = storeservice.getView(store_key);
	        model.addAttribute("StoreDto", dto);
	        return "STORE/Store_view";
	    }

	    @RequestMapping(value = "/Store/modify")
	    public String Store_modify(String store_key, Model model) {      
	        model.addAttribute("StoreDto", storeservice.getView(store_key));
	        return "STORE/Store_write";
	    }
	   
	    @RequestMapping(value = "/Store/delete")
	    public String Store_delete(String store_key) {      
	        storeservice.delete(store_key);
	        return "redirect:/Store/list";
	    }
	    
	    @RequestMapping(value = "/Store/write")
	    public String Store_write(Model model) {

	        StoreDto dto = new StoreDto();
	        model.addAttribute("StoreDto", dto);
	        return "STORE/Store_write";
	    }

	    @RequestMapping(value = "/Store/save")
	    public String Store_save(String userid, StoreDto dto, HttpServletRequest req, MultipartHttpServletRequest multi) {

	    
	        System.out.println("save");
	        System.out.println(dto.getStore_name());
	        System.out.println(dto.getStore_info());
	        System.out.println(dto.getStore_bnumber());

	      
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
	        	dto.setStore_image1(fileNameList.get(0));
	        	break;
	        case 2:
	          	dto.setStore_image1(fileNameList.get(0));
	          	dto.setStore_image2(fileNameList.get(1));
	        	break;
	        case 3:
	          	dto.setStore_image1(fileNameList.get(0));
	          	dto.setStore_image2(fileNameList.get(1));
	          	dto.setStore_image3(fileNameList.get(2));
	        	break;
	        default:
	        		break;
	        	
	        }
	        
	         if(dto.getStore_key()>=1) {
	        	 storeservice.update(dto);
	         }else {
	        	 storeservice.insert(dto);
	         }
	        
	        
	        return "redirect:/Store/list";

	    }

	   
}
