package beans;


public class MyCookie {
	private String name;
	private int price;
	private int Cnt;
	
	public MyCookie(String name, int price, int cnt) {
		this.name = name;
		this.price = price;
		this.Cnt = cnt;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCnt() {
		return Cnt;
	}
	public void setCnt(int cnt) {
		Cnt = cnt;
	}
	
	
	
}
