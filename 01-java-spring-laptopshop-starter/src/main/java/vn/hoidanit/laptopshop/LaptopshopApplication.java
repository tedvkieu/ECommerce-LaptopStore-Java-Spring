package vn.hoidanit.laptopshop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


//include: bao gom >< exclude: loai bo
@SpringBootApplication(
exclude = org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)
// loai bo viec dang nhap cua spring security 
public class LaptopshopApplication {

	public static void main(String[] args) {
		
		 SpringApplication.run(LaptopshopApplication.class, args);
		
	}

}
