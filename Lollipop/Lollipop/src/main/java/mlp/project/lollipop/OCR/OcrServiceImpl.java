package mlp.project.lollipop.OCR;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import mlp.project.lollipop.PLAY_REVIEW.PLAY_ReviewDao;


@Service("ocrservice")
public class OcrServiceImpl implements OcrService{

	@Resource(name="ocrdao")
	OcrDao ocrdao;

	@Override
	public String getkey(String bnumber) {
		// TODO Auto-generated method stub
		return ocrdao.getkey(bnumber);
	}

}
