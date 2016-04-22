package ngWebsite;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

public class NetClientPost {

	// http://localhost:8080/RESTfulExample/json/product/post
	public static void main(String[] args) {
		NetClientPost netClientPost = new NetClientPost();

		String json = "{\"idContactUs\":1,\"sellerType\":\"online\",\"name\":\"test_name\",\"email\":\"test_eamil\",\"telephone\":\"test_telephone\",\"loanAmount\":\"test_loanAmount\",\"avgSales\":\"test_avg_sales\",\"city\":\"test_city\",\"numYrsInBusiness\":2,\"trackingId\":\"test_trackingId\"}";
		String urlString = "http://localhost:9000/uie/web/contactUs";
		netClientPost.post(urlString, json);
	}

	public void post(String urlString, String json) {
		System.out.println("URL string" + urlString);
		try {
			URL url = new URL(urlString);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Type", "application/json");
			OutputStream os = conn.getOutputStream();
			os.write(json.getBytes());
			os.flush();

			if (conn.getResponseCode() != HttpURLConnection.HTTP_CREATED) {
				throw new RuntimeException("Failed : HTTP error code : "
						+ conn.getResponseCode());
			}

			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));

			String output;
			System.out.println("Output from Server .... \n");
			while ((output = br.readLine()) != null) {
				System.out.println(output);
			}

			conn.disconnect();

		} catch (MalformedURLException e) {

			e.printStackTrace();

		} catch (IOException e) {

			e.printStackTrace();

		}

	}

}