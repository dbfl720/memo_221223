package com.memo.common;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component// 특정한 역할(일반적인)을 하지 않은  조상 spring bean.  // BO(x), Mapper(x), Controller(x), 
public class FileManagerService { 

	// 실제 업로드 된 이미지가 저장될 경로 (서버)
	public static final String FILE_UPLOAD_PATH ="/Users/hongyuri/Desktop/메가스터디 IT/Spring_project/memo/workspace/images/";

	// input:MultipartFile(이미지파일), loginId  (이미지 겹치지 않게 하기 위해서) 
	// output:image path(String)
	public String saveFile(String loginId, MultipartFile file) {
		// 파일 디렉토리(폴더)      예) aaaa_167093485(현재시간)/sun.png
		String directoryName = loginId + "_" + System.currentTimeMillis() + "/";  //aaaa_167093485(현재시간)/     // 현재시간 만들어줌 -System.currentTimeMillis()
		String filePath = FILE_UPLOAD_PATH + directoryName; ///Users/hongyuri/Desktop/메가스터디 IT/Spring_project/memo/workspace///aaaa_167093485(현재시간)/
	
		File directory = new File(filePath);
		if (directory.mkdir() == false) {  // ** breakpoint  // mkdir() - 디렉토리 생성할 경우 사용되는 명령어
			return null;  // 폴더 만드는데 실패 시 이미지경로는 null 
		}
		
		
		// 파일 업로드 : byte 단위로 업로드
		try {
			byte[] bytes = file.getBytes();
			Path path = Paths.get(filePath + file.getOriginalFilename());  // 디렉토리명 + originalFileName은 사용자가 올린 파일명 (한글로 올리는거 안됨)    // *** 개인프로젝트할때 확장자 이름을 영어/숫자로 되게 바꾸기?????
			Files.write(path, bytes);  // 파일 업로드
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
		
		// 파일 업로드가 성공했으면 이미지 url path를 리턴한다.
		// http://localhost/images/aaaa_167093485/sun.png
		return "/images/" + directoryName + file.getOriginalFilename();  // originalFileName은 사용자가 올린 파일명
		
	}
	
}
