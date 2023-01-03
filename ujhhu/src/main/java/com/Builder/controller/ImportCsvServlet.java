package com.Builder.controller;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Builder.dao.AddLandlords;
import com.Builder.dbconnection.ConnectionProvider;
import com.Builder.model.LandlordsDetails;
import com.Builder.model.UserLogin;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet to handle File upload request from Client
 * @author Javin Paul
 */
@WebServlet("/upload")
public class ImportCsvServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {

        //process only if its multipart content
        if(ServletFileUpload.isMultipartContent(request)){
            try {
                List<FileItem> multiparts = new ServletFileUpload(
                        new DiskFileItemFactory()).parseRequest(request);

                for(FileItem item : multiparts){
                    if(!item.isFormField()){
                        String[] strArray = null;
                        strArray = item.getString().split("\n");

                        for (int i = 1; i< strArray.length; i++){
                            System.out.println(strArray[i]);
                            String[] lines = strArray[i].split(",");
                            LandlordsDetails landlordsDetails = new LandlordsDetails();
                            UserLogin userLogin = new UserLogin();
                            int count = 0;

                            for (String line : lines) {
                                if (count == 0) {
                                    landlordsDetails.setSiteId(line);
                                    userLogin.setPartyId(line);
                                } else if (count == 1) {
                                    landlordsDetails.setFirstName(line);
                                } else if (count == 2) {
                                    landlordsDetails.setLastName(line);
                                }  else if (count == 3) {
                                    landlordsDetails.setPhone(line);
                                } else if (count == 4) {
                                    landlordsDetails.setSiteLocation(line);
                                } else if (count == 5) {
                                    landlordsDetails.setDistrict(line);
                                } else if (count == 6) {
                                    landlordsDetails.setAria(line);
                                } else if (count == 7) {
                                    landlordsDetails.setTotalPayment(line);
                                } else if (count == 8) {
                                    userLogin.setLoginId(line);
                                } else if (count == 9) {
                                    userLogin.setPassword(line);
                                }
                                count++;
                            }

                            AddLandlords addLandlords = new AddLandlords(ConnectionProvider.getConnection());
                            if (addLandlords.insertUser(landlordsDetails) && addLandlords.insertLoginData(userLogin)) {
                                RequestDispatcher requestDispatcher = request.getRequestDispatcher("ImportData.jsp");        //its login page
                                requestDispatcher.forward(request, response);
                            } else {
                                System.out.println("failed");
                            }
                        }
                    }
                }

                //File uploaded successfully
                request.setAttribute("message", "File Uploaded Successfully");
            } catch (Exception ex) {
                request.setAttribute("message", "File Upload Failed due to " + ex);
            }

        }else{
            request.setAttribute("message", "Sorry this Servlet only handles file upload request");
        }
    }

}