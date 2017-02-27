package kr.co.yul.utils;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mysql.fabric.xmlrpc.base.Data;

@Component("fileUtils")
public class FileUtils {
	private static final String filePath = "C:\\dev\\products";
	/*private static final String filePath = "D:\\workspace\\DAIMS_EPMS\\src\\main\\webapp\\images\\products";*/
	
	public List<Map<String,Object>> parseInsertFileInfo( HttpServletRequest request) throws Exception{
        MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
        Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
         
        MultipartFile multipartFile = null;
        String realNm = null;
        List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
        Map<String, Object> listMap = null;
         
         
        File file = new File(filePath);
        if(file.exists() == false){
            file.mkdirs();
        }
         
        while(iterator.hasNext()){
            multipartFile = multipartHttpServletRequest.getFile(iterator.next());
            if(multipartFile.isEmpty() == false){
            	realNm = multipartFile.getOriginalFilename();

            	file = new File(filePath +"\\" +realNm);

                boolean isExists = file.exists();
                if (!isExists) {
                	multipartFile.transferTo(file);
				}
                
                listMap = new HashMap<String,Object>();
                listMap.put("realNm", realNm);
                listMap.put("changeNm", realNm+new Data());
                listMap.put("filePath", filePath);
                listMap.put("fileSize", multipartFile.getSize());
                list.add(listMap);
            }
        }
        return list;
    }
	
}
