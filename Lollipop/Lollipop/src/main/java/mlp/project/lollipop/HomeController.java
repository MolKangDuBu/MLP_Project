package mlp.project.lollipop;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mlp.project.lollipop.TODAY_REVIEW.Today_ReviewDto;
import mlp.project.lollipop.TODAY_REVIEW.Today_ReviewService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Resource(name="todayService")
	Today_ReviewService todayservice;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, Today_ReviewDto dto) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		List<Today_ReviewDto> list = todayservice.getlist(dto);

        model.addAttribute("TodayList", list);
		model.addAttribute("serverTime", formattedDate );
		
		return "index2";
	}
	
}
