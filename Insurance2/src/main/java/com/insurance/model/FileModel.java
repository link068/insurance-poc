package com.insurance.model;

import org.springframework.web.multipart.MultipartFile;

public class FileModel {
   private MultipartFile file;
   private int fileId;

   public MultipartFile getFile() {
      return file;
   }

   public void setFile(MultipartFile file) {
      this.file = file;
   }

	public int getFileId() {
		return fileId;
	}
	
	public void setFileId(int fileId) {
		this.fileId = fileId;
	}
   
}
