package com.fcant.dl.controller;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URISyntaxException;

/**
 * FileDownloadController
 * <p>
 * encoding:UTF-8
 *
 * @author Fcant
 * @date 上午 10:02 2019-08-25/0025
 */
@Controller
@RequestMapping("/file")
public class FileDownloadController {

    /**
     * 文件下载
     *
     * @param filename 文件名
     * @return File
     * @author Fcant
     * @date 上午 10:04 2019-08-25/0025
     */
    @RequestMapping("/download")
    ResponseEntity<byte[]> getUserBook(String filename) throws URISyntaxException, IOException {
        String path = this.getClass().getClassLoader().getResource("").toURI().getPath();
        path = path.substring(0, path.length() - 8);
        File file = new File(path+"\\file\\"+filename);
        byte[] body = null;
        InputStream inputStream = new FileInputStream(file);
        body = new byte[inputStream.available()];
        inputStream.read(body);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Disposition", "attchement;filename=" + file.getName());
        HttpStatus statusCode = HttpStatus.OK;
        ResponseEntity<byte[]> entity = new ResponseEntity<byte[]>(body, headers, statusCode);
        return entity;
    }
}
