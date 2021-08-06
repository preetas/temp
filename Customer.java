package beans;

public class Customer {
	
	String email;
	String fname;
	String lname;
	String contact;
	String pwd;
	String city;
	String country;
	int pincode;
	
	public Customer(String email, String fname, String lname, String contact, String pwd, String city, String country,
			int pincode) {
		super();
		this.email = email;
		this.fname = fname;
		this.lname = lname;
		this.contact = contact;
		this.pwd = pwd;
		this.city = city;
		this.country = country;
		this.pincode = pincode;
	}

	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Customer [email=" + email + ", fname=" + fname + ", lname=" + lname + ", contact=" + contact + ", pwd="
				+ pwd + ", city=" + city + ", country=" + country + ", pincode=" + pincode + "]";
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public  String  getContact() {
		return contact;
	}

	public void setContact(String  contact) {
		this.contact = contact;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	
	
	}
