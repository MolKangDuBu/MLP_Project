package mlp.project.lollipop.OCR;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Component;

@Component("ocrapi")
public class OCRGeneralAPIDemo {

   public String OCRAPI(String imageurl) {
	   //변경해야하는 변수
      String apiURL = "https://v47hoaxznz.apigw.ntruss.com/custom/v1/14799/07307784035fdc5cb2e003cb3d905a4782d034858b6a4699bf26c9804a378cae/infer";
      String secretKey = "TlZEeFhlYnpyTEJWa09PR2pvY0NQWVRXcnRNZURnVkw=";

      try {
         URL url = new URL(apiURL);
         HttpURLConnection con = (HttpURLConnection)url.openConnection();
         con.setUseCaches(false);
         con.setDoInput(true);
         con.setDoOutput(true);
         con.setRequestMethod("POST");
         con.setRequestProperty("Content-Type", "application/json; charset=utf-8");
         con.setRequestProperty("X-OCR-SECRET", secretKey);

         JSONObject json = new JSONObject();
         json.put("version", "V1");
         json.put("requestId", "string");
         json.put("timestamp", System.currentTimeMillis());
         json.put("resultType", "string");
         
         JSONObject image = new JSONObject();
         image.put("format", "jpg");
         //image should be public, otherwise, should use data
         //FileInputStream inputStream = new FileInputStream(imageurl);
         //byte[] buffer = new byte[inputStream.available()];
         //inputStream.read(buffer);
         //inputStream.close();
         //image.put("data", "");
         image.put("name", "medium");
         image.put("url", imageurl);
         JSONArray images = new JSONArray();
         images.put(image);
         json.put("images", images);
         String postParams = json.toString();

         DataOutputStream wr = new DataOutputStream(con.getOutputStream());
         wr.writeBytes(postParams);
         wr.flush();
         wr.close();

         int responseCode = con.getResponseCode();
         BufferedReader br;
         if (responseCode == 200) {
            br = new BufferedReader(new InputStreamReader(con.getInputStream(), "UTF-8"));
         } else {
            br = new BufferedReader(new InputStreamReader(con.getErrorStream(), "UTF-8"));
         }
         String inputLine;
         StringBuffer response = new StringBuffer();
         while ((inputLine = br.readLine()) != null) {
            response.append(inputLine);
         }
         br.close();
         System.out.println(response);
         return response.toString();
      } catch (Exception e) {
         System.out.println(e);
      }
      
      return "fail";
   }

}