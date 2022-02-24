package mlp.project.lollipop.STORE;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StoreController {

	@Resource(name="storeService")
	StoreService storeservice;
	
	
	@RequestMapping(value = "/Store/list")
	public String Store_list() {
		return "STORE/Store";
	}
}
