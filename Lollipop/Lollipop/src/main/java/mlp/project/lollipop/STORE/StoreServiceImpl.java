package mlp.project.lollipop.STORE;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("storeService")
public class StoreServiceImpl implements StoreService{

	@Resource(name ="storeDao")
	StoreDao storedao;
}
