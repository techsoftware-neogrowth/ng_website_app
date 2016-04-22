package ngWebsite;

public class ApplyNowParams {

	String sellerType;
	String name;
	String email;
	String telephone;
	String loanAmount;
	String avgSales;
	String city;
	int numYrsInBusiness;
	String trackingId;

	public ApplyNowParams() {

	}

	public ApplyNowParams(String sellerType, String name, String email,
			String telephone, String loanAmount, String avgSales, String city,
			int numYrsInBusiness, String trackingId) {
		super();
		this.sellerType = sellerType;
		this.name = name;
		this.email = email;
		this.telephone = telephone;
		this.loanAmount = loanAmount;
		this.avgSales = avgSales;
		this.city = city;
		this.numYrsInBusiness = numYrsInBusiness;
		this.trackingId = trackingId;
	}

	public String getSellerType() {
		return sellerType;
	}

	public void setSellerType(String sellerType) {
		this.sellerType = sellerType;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getLoanAmount() {
		return loanAmount;
	}

	public void setLoanAmount(String loanAmount) {
		this.loanAmount = loanAmount;
	}

	public String getAvgSales() {
		return avgSales;
	}

	public void setAvgSales(String avgSales) {
		this.avgSales = avgSales;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getNumYrsInBusiness() {
		return numYrsInBusiness;
	}

	public void setNumYrsInBusiness(int numYrsInBusiness) {
		this.numYrsInBusiness = numYrsInBusiness;
	}

	public String getTrackingId() {
		return trackingId;
	}

	public void setTrackingId(String trackingId) {
		this.trackingId = trackingId;
	}

}
