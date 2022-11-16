package com.Builder.dao;

import com.Builder.dbconnection.ConnectionProvider;
import com.Builder.model.LandlordsDetails;
import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.mysql.cj.xdevapi.Table;
import com.sun.scenario.effect.ImageData;
import javax.swing.text.TableView;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.util.ArrayList;

public class TransactionHistoryDetails {

    public static ArrayList<LandlordsDetails> getTransactionDetails(String siteId) {

        ArrayList<LandlordsDetails> fetch = new ArrayList<>();

        try {

            String sql = " SELECT L.siteId, L.firstname, L.lastname, P.description, " +
                    "P.amountType, P.date, P.amount FROM landlordsdetails L INNER JOIN paymentdetails P " +
                    "ON L.siteId=P.landlordSiteId WHERE L.siteId='" + siteId + "'";

            Connection connection = ConnectionProvider.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {

                LandlordsDetails landlordsDetails = new LandlordsDetails();
                landlordsDetails.setSiteId(resultSet.getString(1));
                landlordsDetails.setFirstName(resultSet.getString(2));
                landlordsDetails.setLastName(resultSet.getString(3));
                landlordsDetails.setDescription(resultSet.getString(4));
                landlordsDetails.setAmountType(resultSet.getString(5));
                landlordsDetails.setPaidDate(resultSet.getString(6));
                landlordsDetails.setAmount(resultSet.getString(7));

                fetch.add(landlordsDetails);

            }

        } catch (SQLException e) {

            System.out.println(e);

        }

        return fetch;
    }

    public static ArrayList<LandlordsDetails> buildPDF(String siteId) {
        ArrayList<LandlordsDetails> PDFDetails = new ArrayList<>();
        Document doc = new Document();
        try {
            String fileName = siteId + ".pdf";
            //generate a PDF at the specified location
            PdfWriter writer = PdfWriter.getInstance(doc, new FileOutputStream("home\\" + fileName));
            System.out.println("PDF created.");


            //special font sizes
            Font bfBold12 = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.BOLD, new BaseColor(0, 0, 0));
            Font bf12 = new Font(Font.FontFamily.TIMES_ROMAN, 12);


            //opens the PDF
            doc.open();
            //document header attributes
            doc.addAuthor("Afjal Patel");
            doc.addCreationDate();
            doc.addProducer();
            doc.addCreator("Faiz Patel");
            doc.addTitle("PAYMENT DETAILS");
            doc.setPageSize(PageSize.A4);
            //adds paragraph to the PDF file
            String sql = " SELECT L.siteId, L.firstname, L.lastname, P.description, " +
                    "P.amountType, P.date, P.amount FROM landlordsdetails L INNER JOIN paymentdetails P " +
                    "ON L.siteId=P.landlordSiteId WHERE L.siteId='" + siteId + "'";

            Connection connection = ConnectionProvider.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            //specify column widths
            float[] columnWidths = {1.5f, 2f, 2f, 3f, 1.5f, 1.5f, 1.5f};
            //create PDF table with the given widths
            PdfPTable table = new PdfPTable(columnWidths);
            //create a paragraph
            Paragraph paragraph = new Paragraph("iText ® is a library that allows you to create and " +
                    "manipulate PDF documents. It enables developers looking to enhance web and other " +
                    "applications with dynamic PDF document generation and/or manipulation.");


            // set table width a percentage of the page width
            table.setWidthPercentage(90f);

            insertCell(table, "SITE ID", Element.ALIGN_CENTER, 1, bfBold12);
            insertCell(table, "FIRST NAME", Element.ALIGN_CENTER, 1, bfBold12);
            insertCell(table, "LAST NAME", Element.ALIGN_CENTER, 1, bfBold12);
            insertCell(table, "Description", Element.ALIGN_CENTER, 1, bfBold12);
            insertCell(table, "TYPE", Element.ALIGN_CENTER, 1, bfBold12);
            insertCell(table, "DATE", Element.ALIGN_CENTER, 1, bfBold12);
            insertCell(table, "AMOUNT", Element.ALIGN_CENTER, 1, bfBold12);
            table.setHeaderRows(1);

//            insert an empty row
//            insertCell(table, "", Element.ALIGN_LEFT, 4, bfBold12);

            while (resultSet.next()) {

                LandlordsDetails landlordsDetails = new LandlordsDetails();
                landlordsDetails.setSiteId(resultSet.getString(1));
                landlordsDetails.setFirstName(resultSet.getString(2));
                landlordsDetails.setLastName(resultSet.getString(3));
                landlordsDetails.setDescription(resultSet.getString(4));
                landlordsDetails.setAmountType(resultSet.getString(5));
                landlordsDetails.setPaidDate(resultSet.getString(6));
                landlordsDetails.setAmount(resultSet.getString(7));

//                PDFDetails.add(landlordsDetails);
//                doc.add(new Paragraph("SiteId::"+resultSet.getString(1)+"\n"
//                                            +"First name::"+resultSet.getString(2)+"\n"
//                                            +"Last Name::"+resultSet.getString(3)+"\n"
//                                            +"Description::"+resultSet.getString(4)+"\n"
//                                            +"Type::"+resultSet.getString(5)+"\n"
//                                            +"Date::"+resultSet.getString(6)+"\n"
//                                             +"Amount::"+resultSet.getString(7)+"\n"));

                insertCell(table, resultSet.getString(1), Element.ALIGN_CENTER, 1, bf12);
                insertCell(table, resultSet.getString(2), Element.ALIGN_CENTER, 1, bf12);
                insertCell(table, resultSet.getString(3), Element.ALIGN_CENTER, 1, bf12);
                insertCell(table, resultSet.getString(4), Element.ALIGN_CENTER, 1, bf12);
                insertCell(table, resultSet.getString(5), Element.ALIGN_CENTER, 1, bf12);
                insertCell(table, resultSet.getString(6), Element.ALIGN_CENTER, 1, bf12);
                insertCell(table, resultSet.getString(7), Element.ALIGN_CENTER, 1, bf12);

            }

//          add the PDF table to the paragraph
            paragraph.add(table);
//           add the paragraph to the document
            doc.add(paragraph);

            //close the PDF file
            doc.close();
            //closes the writer
            writer.close();
        } catch (DocumentException | FileNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return PDFDetails;
    }

    public static void insertCell(PdfPTable table, String text, int align, int colspan, Font font) {

        //create a new cell with the specified Text and Font
        PdfPCell cell = new PdfPCell(new Phrase(text.trim(), font));
        //set the cell alignment
        cell.setHorizontalAlignment(align);
        //set the cell column span in case you want to merge two or more cells
        cell.setColspan(colspan);
        //in case there is no text and you wan to create an empty row
        if (text.trim().equalsIgnoreCase("")) {
            cell.setMinimumHeight(10f);
        }

        //add the call to the table
        table.addCell(cell);

    }
}
