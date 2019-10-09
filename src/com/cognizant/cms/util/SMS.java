package com.cognizant.cms.util;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

public class SMS {
    static String url = "https://www.way2sms.com";
    /**
     *
     * @param token 
     * @param phone 10 digit mobile number
     * @param message
     * @param senderId
     */
    public static String sendSMS(String apiKey, String secretKey, String useType, String phone, String message, String senderId){
      try{
          // Construct data
          // accesskeys generated ad www.way2sms.com
          String token = "apikey=" + URLEncoder.encode(apiKey, "UTF-8");
          String secret = "&secret=" + URLEncoder.encode(secretKey, "UTF-8");
          // usetype "stage" or "prod" must be given
          String usetype = "&usetype=" + URLEncoder.encode(useType, "UTF-8");
          String mobile = "&phone=" + URLEncoder.encode(phone, "UTF-8");
          String messageText = "&message=" + URLEncoder.encode(message, "UTF-8");
          String senderId1 = "&senderid=" + URLEncoder.encode(senderId, "UTF-8");
          //send data
          URL obj = new URL(url + "/api/v1/sendCampaign?"+token+secret+usetype+mobile+messageText+senderId);
          HttpURLConnection httpConnection = (HttpURLConnection) obj.openConnection();
          httpConnection.setDoOutput(true);
          // Get the response
          BufferedReader bufferedReader = null;
          if (httpConnection.getResponseCode() == 200) {
              bufferedReader = new BufferedReader(new InputStreamReader(httpConnection.getInputStream()));
          } else {
              bufferedReader = new BufferedReader(new InputStreamReader(httpConnection.getErrorStream()));
          }
        
          StringBuilder content = new StringBuilder();
          String line;
          while ((line = bufferedReader.readLine()) != null) {
              content.append(line).append("\n");
          }
          bufferedReader.close();
          return content.toString();
      }catch(Exception ex){
        System.out.println(ex);
        return "{'status':500,'message':'Internal Server Error'}";
      }
    }
    public static void main(String[] args) {
		SMS.sendSMS("DLSVDUPAICSC91YHNABTPYG1QZQSH3GL", "PNVARNNYSMJ2LO4U", "stage", "7030148664", "Hello This is the test message", "nacool");
	}
}