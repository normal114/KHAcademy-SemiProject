package com.mypage.common;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;

import com.mypage.dto.IndividualDto;

public class Util {
	
	private String todates;
	
	public String getTodates() {
		return todates;
	}
	public void setTodates(String mdate) {
		// yyyy-MM-dd hh:mm:00 형태로 바꾸자.
		String temp = mdate.substring(0, 4) + "-"
				    + mdate.substring(4, 6) + "-"
				    + mdate.substring(6, 8) + " "
				    + mdate.substring(8, 10) + ":"
				    + mdate.substring(10) + ":00";
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd HH:mm");
		Timestamp tm = Timestamp.valueOf(temp);
		todates = sdf.format(tm);
	}

	
	// 토요일, 일요일, 평일 색상
	public static String fontColor(int date, int dayOfWeek) {
		String color = "";
		
		if((dayOfWeek -1 + date)%7 == 0) {
			color = "blue";
		} else if((dayOfWeek -1 + date)%7 == 1) {
			color = "red";
		} else {
			color = "black";
		}
		
		
		return color;
	}
	
	// 일정의 한자리수->두자리수 변환
	public static String isTwo(String msg) {
		return (msg.length()<2)? "0"+msg : msg;
	}
	
	// 일정 제목이 긴 경우, 뒷부분을 ...으로
	public static String getCalView(int i, List<IndividualDto> list) {
		String d = isTwo(i+"");
		String res = "";
		
		for(IndividualDto dto : list) {
			if(dto.getIndividual_mdate().substring(6, 8).equals(d)) {
				res += "<p>"
					 + ((dto.getIndividual_title().length() > 6) ? dto.getIndividual_title().substring(0, 6) + "..." : dto.getIndividual_title())
					 + "</p>";
			}
		}
		return res;
	}
	
	// 비밀번호 hashcode로 변경
	public static String getHash(String input) {
		StringBuilder result = new StringBuilder();
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			md.update(input.getBytes());
			byte[] bytes = md.digest();
			for(int i = 0; i < bytes.length; i++) {
				result.append(
						Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1)
						);
			}
		} catch(NoSuchAlgorithmException e) {
			e.getMessage();
		}
		return result.toString();
	}
	
	//naver 생일값 분리
	public static String getMm(String input) {
		return input.substring(0, 2);
	}
	
	public static String getDd(String input) {
		return input.substring(2);
	}
}
