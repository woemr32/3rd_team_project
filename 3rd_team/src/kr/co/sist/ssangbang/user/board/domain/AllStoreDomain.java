package kr.co.sist.ssangbang.user.board.domain;

public class AllStoreDomain {
	
	private String store_num,name,lat,lnt,addr;

	public AllStoreDomain() {
		super();
	}

	public AllStoreDomain(String store_num, String name, String lat, String lnt, String addr) {
		super();
		this.store_num = store_num;
		this.name = name;
		this.lat = lat;
		this.lnt = lnt;
		this.addr = addr;
	}

	public String getStore_num() {
		return store_num;
	}

	public void setStore_num(String store_num) {
		this.store_num = store_num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLat() {
		return lat;
	}

	public void setLat(String lat) {
		this.lat = lat;
	}

	public String getLnt() {
		return lnt;
	}

	public void setLnt(String lnt) {
		this.lnt = lnt;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

}//class
