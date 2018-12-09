package model;

public class Product {
	private String pName;
	private String address;
	
	public Product()
	{
		
	}

	public Product(String pName, String address) {
		super();
		this.pName = pName;
		this.address = address;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
}
