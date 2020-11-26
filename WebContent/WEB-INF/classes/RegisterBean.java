 package jspCardManager.register;

 public class RegisterBean{
 
 	private String name;
 	private String position;
 	private String tel;
 	private String email;
 	private String address;
 	private String addressDetail;
 
 	
 	public void setName(String name) {
 		this.name = name; 
 	}
 	
 	public void setPosition(String position) {
 		this.position = position;
 	}
 	
 	public void setTel(String tel) {
 		this.tel = tel; 
 	}
 	
 	public void setEmail(String email) {
 		this.email = email; 
 	}

 	public void setAddr(String address) {
 		this.address = address;
 	}
 	
 	public void setAddr2(String addressDetail) {
 		this.addressDetail = addressDetail;
 	}
 	
 
 	public String getName() {
 		return name; 
 	}
 	
 	public String getPosition() {
 		return position;
 	}
 	 
 	public String getTel() {
 		return tel; 
 	}
  
 	public String getEmail() {
 		return email; 
 	}

 	public String getAddr() {
 		return address;
 	}
 	
 	public String getAddr2() {
 		return addressDetail;
 	}
 	
 }
