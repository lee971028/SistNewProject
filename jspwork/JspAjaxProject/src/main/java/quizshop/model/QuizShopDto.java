package quizshop.model;

import java.sql.Timestamp;

public class QuizShopDto {

	private String num;
	private String sang_name;
	private String photo;
	private int price;
	private String ipgoday;
	private Timestamp writeday;
	
	
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getSang_name() {
		return sang_name;
	}
	public void setSang_name(String sang_name) {
		this.sang_name = sang_name;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getIpgoday() {
		return ipgoday;
	}
	public void setIpgoday(String ipgoday) {
		this.ipgoday = ipgoday;
	}
	public Timestamp getWriteday() {
		return writeday;
	}
	public void setWriteday(Timestamp writeday) {
		this.writeday = writeday;
	}
	
	
}
