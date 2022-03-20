package mlp.project.lollipop.OCR;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.codehaus.jackson.JsonParser;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.amazonaws.SdkClientException;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.client.builder.AwsClientBuilder;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.AmazonS3Exception;
import com.amazonaws.services.s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.s3.model.PartETag;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.model.UploadPartResult;

import mlp.project.lollipop.PLAY_REVIEW.PLAY_ReviewDto;

@Controller
public class OcrController {
	
	@Resource(name="ocrapi")
	OCRGeneralAPIDemo ocrapi;
	
	@Resource(name="ocrservice")
	OcrService ocrservice;
	
	@RequestMapping(value="/ocr/getkey")
	public String home() {
		
		return "OCR/Ocr";
	}
	
	@RequestMapping(value="upload")
	@ResponseBody
	public String bucket_upload(HttpServletRequest req, MultipartHttpServletRequest multi) {
		
		final String endPoint = "https://kr.object.ncloudstorage.com";
		final String regionName = "kr-standard";
		final String accessKey = "F95A09B1B439470DDCF6";
		final String secretKey = "5BC1159FA7EBC06C8892E6C32EE0F55749154205";

		// S3 client
		final AmazonS3 s3 = AmazonS3ClientBuilder.standard()
		    .withEndpointConfiguration(new AwsClientBuilder.EndpointConfiguration(endPoint, regionName))
		    .withCredentials(new AWSStaticCredentialsProvider(new BasicAWSCredentials(accessKey, secretKey)))
		    .build();

		String bucketName = "lollipop";
		String objectName = "image.png";

		
		MultipartFile mfile = multi.getFile("upload");
		File file = new File(mfile.getOriginalFilename());
		try {
			mfile.transferTo(file);
		} catch (IllegalStateException e1) {
			e1.printStackTrace();
		} catch (IOException e1) {
			e1.printStackTrace();
		}

		
		long contentLength = file.length();
		long partSize = 10 * 1024 * 1024;

		try {
		    // initialize and get upload ID
		    InitiateMultipartUploadResult initiateMultipartUploadResult = s3.initiateMultipartUpload(new InitiateMultipartUploadRequest(bucketName, objectName));
		    String uploadId = initiateMultipartUploadResult.getUploadId();

		    // upload parts
		    List<PartETag> partETagList = new ArrayList<PartETag>();

		    long fileOffset = 0;
		    for (int i = 1; fileOffset < contentLength; i++) {
		        partSize = Math.min(partSize, (contentLength - fileOffset));

		        UploadPartRequest uploadPartRequest = new UploadPartRequest()
		            .withBucketName(bucketName)
		            .withKey(objectName)
		            .withUploadId(uploadId)
		            .withPartNumber(i)
		            .withFile(file)
		            .withFileOffset(fileOffset)
		            .withPartSize(partSize);

		        UploadPartResult uploadPartResult = s3.uploadPart(uploadPartRequest);
		        partETagList.add(uploadPartResult.getPartETag());

		        fileOffset += partSize;
		    }

		    // abort
		    // s3.abortMultipartUpload(new AbortMultipartUploadRequest(bucketName, objectName, uploadId));

		    // complete
		    CompleteMultipartUploadResult completeMultipartUploadResult = s3.completeMultipartUpload(new CompleteMultipartUploadRequest(bucketName, objectName, uploadId, partETagList));
		} catch (AmazonS3Exception e) {
		    e.printStackTrace();
		    return "fail";
		} catch(SdkClientException e) {
		    e.printStackTrace();
		    return "fail";
		}
		
		//return ocrapi.OCRAPI("https://kr.object.ncloudstorage.com/lollipop/image.png");
		
		return "success";
	}
	
	@RequestMapping(value="/ocr")
	public String bucket_upload(Model model, String image_url,HttpServletRequest req, MultipartHttpServletRequest multi) {
		String path = req.getServletContext().getRealPath("/");
		
		
		//System.out.println("json 값 : "+ocrapi.OCRAPI("https://kr.object.ncloudstorage.com/lollipop/image.png"));
		//String res = ocrapi.OCRAPI("https://kr.object.ncloudstorage.com/lollipop/image.png");
		//JSONObject jobject = new JSONObject(res);
		//org.json.JSONArray imageobject = jobject.getJSONArray("images");
		
		//System.out.println("test : "+imageobject);
	
		try {
			String jsondata = ocrapi.OCRAPI(multi.getFile("upload"));
			JSONObject jsonobject = new JSONObject(jsondata);
			JSONArray jsonArr = (JSONArray)jsonobject.get("images");
		
			JSONObject jsonobj = (JSONObject)jsonArr.get(0);
			JSONArray ja = (JSONArray)jsonobj.get("fields");
			JSONObject o = (JSONObject)ja.get(0);
			String bnumer = o.getString("inferText");
			System.out.println(bnumer);

			String storekey = ocrservice.getkey(bnumer);
			System.out.println(storekey);
			System.out.println("aaaa");
			if(storekey !=null) {
				System.out.println("bbbb");
				PLAY_ReviewDto dto = new PLAY_ReviewDto();
		        model.addAttribute("reviewDto", dto);
				model.addAttribute("bnumber", storekey);
				return "PLAY_REVIEW/Play_write";	
			}else {
				System.out.println("Ccc");
				return "index2";
			}
		}catch(Exception e) {
			System.out.println("ddd");
			return "index2";
		}

	}
	
	

}
