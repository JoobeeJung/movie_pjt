package com.kbstar.movie.boxoffice.ctrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kbstar.movie.boxoffice.model.vo.BookingVO;
import com.kbstar.movie.boxoffice.service.BookingService;
import com.kbstar.movie.boxoffice.service.BoxOfficeService;
import com.kbstar.movie.boxoffice.service.TheaterService;
import com.kbstar.movie.model.vo.BoardVO;
import com.kbstar.movie.model.vo.MovieVO;
import com.kbstar.movie.service.MovieService;

@Controller
public class MovieTicketCtrl {
	@Autowired
	private TheaterService service;
	
	@RequestMapping(value ="movieTicket.jbmovie")
	public String getMovieTicket(String mode, String booking_idx, String title, String genres, String image, Model model){
		System.out.println(">>> TICKET ctrl movieTicket mode: " + mode + title + genres);
		model.addAttribute("title", title);
		model.addAttribute("genres", genres);
		model.addAttribute("image", image);
		model.addAttribute("mode", mode);
		model.addAttribute("booking_idx", booking_idx);
		List<Object> result = service.list();
		
		System.out.println("result >>> " + result);
		model.addAttribute("theaterModel", result);

		if(result != null)
		{
			return "movieTicketPlan";
		}
		else
		{
			return "error";
		}
		
	}
	
	@RequestMapping(value ="movieSeat.jbmovie")
	public String getMovieSeat(String mode, String booking_idx, String title, String genres, String image, String movie_date, String theater_name, String movie_time, Model model){
		System.out.println(">>> SEAT ctrl getMovieSeat" + mode);
		model.addAttribute("title", title);
		model.addAttribute("genres", genres);
		model.addAttribute("image", image);
		model.addAttribute("movie_date", movie_date);
		model.addAttribute("theater_name", theater_name);
		model.addAttribute("movie_time", movie_time);
		model.addAttribute("mode", mode);
		model.addAttribute("booking_idx", booking_idx);

		return "movieSeatPlan";
		
		
	}
	
	@RequestMapping(value ="movieCheckout.jbmovie")
	public String checkout(String mode, String booking_idx, String title, String genres, String image, String movie_date, String theater_name, String movie_time, String seat01, String seat02, Model model){
		System.out.println(">>> checkout ctrl getMovieSeat  " + mode);
		model.addAttribute("title", title);
		model.addAttribute("genres", genres);
		model.addAttribute("image", image);
		model.addAttribute("movie_date", movie_date);
		model.addAttribute("theater_name", theater_name);
		model.addAttribute("movie_time", movie_time);
		model.addAttribute("seat01", seat01);
		model.addAttribute("seat02", seat02);
		model.addAttribute("mode", mode);
		model.addAttribute("booking_idx", booking_idx);

		return "movieCheckout";
		
		
	}
	
	@Autowired
	private BookingService bookingService;
	@Autowired
	private BoxOfficeService boxofficeService;
	
	@RequestMapping(value ="movieBooking.jbmovie")
	public String book_ticket(String mode, String booking_idx, BookingVO booking, Model model) {
		System.out.println(">>> checkout ctrl book_ticket " + mode);
		System.out.println("booking >>>" + booking);
		booking.setBooking_idx(booking_idx);
		System.out.println(":::: booking :::: " + booking);

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


		if(bk_idx != 0)
		{
			return "myPage";
		}
		else
		{
			return "error";
		}
				
		
	}
	

	@RequestMapping(value ="cancelTicket.jbmovie")
	public String cancel_ticket(String booking_idx, String user_id, Model model){
		System.out.println(">>> Cancel ctrl cancel_ticket" + booking_idx);
		int cl_idx = bookingService.delete_booking(booking_idx);
		
		System.out.println("ctrl pk Result ======> "+ cl_idx + user_id);
		
		List<Object> result = boxofficeService.booking_list(user_id);
		
		System.out.println("result >>> " + result);
		model.addAttribute("bookingModel", result);

		if(cl_idx != 0)
		{
//			?user_id="+booking.getUser_id()
			return "myPage";
		}
		else
		{
			return "error";
		}
				
				
		
	}
	
	
	
}