package com.ng.tech

import ngWebsite.ApplyNowParams;
import ngWebsite.NetClientPost;
import grails.rest.RestfulController
import groovy.json.JsonBuilder


class RestHandlerController extends RestfulController{
	def simpleCaptchaService

	static responseFormats = ['json', 'xml']

	def index(){
		forward action: "applyNow"
	}

	def applyNow() {
		[errorMsg:flash.error, full_name: params?.full_name, phone_number:params?.phone_number, email:params?.email, seller_type:params?.seller_type]
	}

	def applyNowForm() {
		try{
			println params;
			boolean captchaValid = simpleCaptchaService.validateCaptcha(params?.captcha)
			if(captchaValid){
				try{
					ApplyNowParams applyNowParams = new ApplyNowParams();
					applyNowParams.setTelephone(params.phone_number);
					applyNowParams.setLoanAmount(params.loan_amount);
					try{
						applyNowParams.setNumYrsInBusiness(Integer.parseInt(params.business_years));
					} catch(Exception e){
						flash.error = "Please fill in 'Business Years' !"
						e.printStackTrace();
						redirect(uri:'/', params:[full_name: params?.full_name, phone_number:params?.phone_number, email:params?.email, seller_type:params?.seller_type])
						return;
					}
					applyNowParams.setCity(params.city);
					applyNowParams.setAvgSales(params.avg_sales);
					applyNowParams.setName(params.full_name);
					applyNowParams.setEmail(params.email);
					applyNowParams.setSellerType(params.seller_type);

					String originalJson = new JsonBuilder(applyNowParams).toPrettyString();
					originalJson = originalJson.replaceAll("(\\r|\\n|\\t)", "").replaceAll("\\s+", "");;
					println "json:"+originalJson;

					NetClientPost restClient = new NetClientPost();
					String json = "{\"idContactUs\":1,\"sellerType\":\"online\",\"name\":\"test_name\",\"email\":\"test_eamil\",\"telephone\":\"test_telephone\",\"loanAmount\":\"test_loanAmount\",\"avgSales\":\"test_avg_sales\",\"city\":\"test_city\",\"numYrsInBusiness\":2,\"trackingId\":\"test_trackingId\"}";
					String urlString = "http://localhost:9000/uie/web/contactUs";
					restClient.post(urlString, originalJson);
					redirect(url: "http://prelaunch.neogrowth.in/form-success.html")
				} catch(Exception e){
					flash.error = "Internal error, please call our customer care!"
					e.printStackTrace();
					redirect(uri:'/', params:[full_name: params?.full_name, phone_number:params?.phone_number, email:params?.email, seller_type:params?.seller_type])
					return;
				}
			} else{
				flash.error = "Captcha is invalid !"
				redirect(uri:'/', params:[full_name: params?.full_name, phone_number:params?.phone_number, email:params?.email, seller_type:params?.seller_type])
				return;
			}
		}catch(Exception e){
			flash.error = "Internal error"
			redirect(uri:'/', params:[full_name: params?.full_name, phone_number:params?.phone_number, email:params?.email, seller_type:params?.seller_type])
			return;
		}
	}

	def success(){
		render "Posted successfully";
	}

}
