package mlp.project.lollipop.STORE;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import mlp.project.lollipop.common.FileUploadUtil;

@Controller
public class StoreController {

	@Resource(name="storeService")
	StoreService storeservice;
	
	
	 @RequestMapping(value = "/Store/list")
	    public String Store_list(Model model, StoreDto dto, HttpServletRequest request, HttpServletResponse response) {
	        System.out.println(dto.getKey());
	        System.out.println(dto.getKeyword());
	        dto.setStart(dto.getPg() * 10);
	        HttpSession session = request.getSession();
			String userid =(String) session.getAttribute("user_id");
			dto.setUser_id(userid);
	        List<StoreDto> list = storeservice.getlist(dto);
	        System.out.println("ID : "+userid);
	        System.out.println("list--->" + list);
	        
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

	        //null媛믪쓣 �솗�씤�븯�뿬 異붽�
	        for(int i =1; i<=3;i++) {
	        	if(multi.getFile("upload"+i).getSize()!=0) {
	        		multiList.add(multi.getFile("upload"+i));
	        	}
	        }

	        List<String> fileNameList = new ArrayList<String>();
	        String path = req.getServletContext().getRealPath("/");
	        //System.out.println("臾쇰━�쟻�쐞移섍컪 : " + path);
	        FileUploadUtil.upload(path, multiList, fileNameList);

	        // �씠誘몄� �뙆�씪紐낆� �뵲濡� 異붽�
	        for(int i = 0; i<fileNameList.size();i++) {
	        	System.out.println("�뙆�씪紐낅뱾 : "+fileNameList.get(i)+"index媛� : "+ i);
	        }
	        

	        //�뙆�씪 媛쒖닔�뿉 �뵲�씪 �엯�젰�쓣 �떖由ы븳�떎.
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
