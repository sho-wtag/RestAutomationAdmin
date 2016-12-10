package com.comsats.restauto.util;

import java.io.File;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class MultipartHandler {
	/**
	 * @uml.property  name="imagesFolder"
	 */
	String imagesFolder = null;
	/**
	 * @uml.property  name="items"
	 */
	List<FileItem> items = null;
	/**
	 * @uml.property  name="config"
	 * @uml.associationEnd  multiplicity="(1 1)"
	 */
	ServletConfig config = null;
	
	public MultipartHandler(HttpServletRequest request, ServletConfig config, 
			String imagesFolder) {
		this.imagesFolder = imagesFolder;
		this.config = config;
		
		// parse multipart request
		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		try {
			this.items = upload.parseRequest(request);
		} catch (FileUploadException e) {
			e.printStackTrace();
		}
	}
	
	public String getParameter (String fieldName) {
		for (FileItem item : this.items) {
			if (item.isFormField() && fieldName.equals(item.getFieldName())) {
				return item.getString();
			} 
		}
		return null;
	}
	
	public String getFileParameter (String fileFieldName, boolean saveFile) {
		for (FileItem item : this.items) {
			try { 
				if (!item.isFormField() && fileFieldName.equals(item.getFieldName())) {
					if (saveFile && item.getName() != null && !"".equals(item.getName())) {
						// save file on disk
						File savedFile = new File(this.config
								.getServletContext().getRealPath("/")
								+ "uploads/" + this.imagesFolder + "/" + item.getName());
						item.write(savedFile);
					}
					
					// return the name of file name 
					return item.getName();
				} 
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}
}
