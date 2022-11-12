package com.kbstar.movie.boxoffice.ctrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kbstar.movie.boxoffice.model.vo.BookingVO;
import com.kbstar.movie.boxoffice.service.BookingService;
import com.kbstar.movie.boxoffice.service.BoxOfficeService;

@Controller
@RequestMapping(value="app/")
public class AppBoxOfficeCtrl {
	@Autowired
	private BoxOfficeService service;
	
	@RequestMapping(value ="boxoffice.jbmovie")
	@ResponseBody

	public List<Object> boxoffice_list(){
		System.out.println(">>> ANDROID >>>> BOXOFFICE ctrl box_office_list");
		List<Object> result = service.list();
		
		System.out.println(">>> Result ::::");
		System.out.println(result);
		
		return result;
		
	}

	@Autowired
	private BookingService bookingService;
	@Autowired
	private BoxOfficeService boxofficeService;
	
	@RequestMapping(value ="movieBooking.jbmovie")
	@ResponseBody
	
	public List<Object> book_ticket(@RequestParam("mode")String mode, @RequestBody BookingVO booking, Model model) {
		System.out.println("@@@@ APP @@@  checkout ctrl book_ticket : mode " + mode);
		System.out.println("booking >>>" + booking);		

		int bk_idx = 0;
		
		if(mode != "")
		{
			System.out.println("update ======>" + booking);
			bk_idx = bookingService.update_booking(booking);

		}else
		{
			System.out.println("insert ======>");
			bk_idx = bookingService.insert_booking(booking);
			
			System.out.println("ctrl pk Result ======> "+ bk_idx + booking.getUser_id());
		}
				
		List<Object> result = boxofficeService.booking_list(booking.getUser_id());
		
		System.out.println("result >>> " + result);
		model.addAttribute("bookingModel", result);

		return result;
	}
	
	@RequestMapping(value ="bookingList.jbmovie")
	@ResponseBody
	
	public List<Object> booking_list(@RequestParam("loginId") String user_id, Model model) {
		System.out.println(">>> checkout ctrl book_ticket");
		System.out.println("booking_list >>>" + user_id);
		
		List<Object> result = boxofficeService.booking_list(user_id);
		
		System.out.println("result >>> " + result);
		model.addAttribute("bookingModel", result);

		return result;
	}
	
	@RequestMapping(value ="cancelTicket.jbmovie")
	@ResponseBody
	public String cancel_ticket(@RequestParam String booking_idx,@RequestParam String user_id){
		
		System.out.println(">>> Cancel ctrl cancel_ticket" + booking_idx);
		int cl_idx = bookingService.delete_booking(booking_idx);
		
		System.out.println("ctrl pk Result ======> "+ cl_idx + user_id);
		
		return "success";				
				
		
	}
	
	
}

