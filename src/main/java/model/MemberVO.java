package model;

public class MemberVO {
	private String id;
	private String name;
	private String address;
	private String gender;
	
	public MemberVO(String id, String name, String address, String gender) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.gender = gender;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
}