package com.Builder.dao;

import com.Builder.dbconnection.ConnectionProvider;
import com.Builder.model.LandlordsDetails;
import com.itextpdf.text.*;
import com.itextpdf.text.Font;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import java.awt.*;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
        int totalAmmount = 0;
        int dueAmmount = 0;
        try {
            String fileName = siteId + ".pdf";
            //generate a PDF at the specified location
            Document doc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            PdfWriter writer = PdfWriter.getInstance(doc, new FileOutputStream("home\\" + fileName));
            HeaderFooterPageEvent event = new HeaderFooterPageEvent();
            writer.setPageEvent(event);

            //special font sizes
            Font headerStyle = new Font(Font.FontFamily.TIMES_ROMAN, 9, Font.BOLD, new BaseColor(0, 0, 0));
            Font rowStyle = new Font(Font.FontFamily.TIMES_ROMAN, 9);



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
                    "P.amountType, P.date, P.amount, L.totalpayment FROM landlordsdetails L INNER JOIN paymentdetails P " +
                    "ON L.siteId=P.landlordSiteId WHERE L.siteId='" + siteId + "'";

            Connection connection = ConnectionProvider.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            //specify column widths
            float[] columnWidths = {1.5f, 2f, 2f, 3f, 1.5f, 1.5f, 1.5f};
            //create PDF table with the given widths
            PdfPTable table = new PdfPTable(columnWidths);
            //create a paragraph
            Paragraph paragraph = new Paragraph();
            paragraph.add("Payment History");
            paragraph.setAlignment(Element.ALIGN_CENTER);
            // set table width a percentage of the page width
            table.setWidthPercentage(90f);
            insertCell(table, "SITE ID", Element.ALIGN_CENTER, 1, headerStyle);
            insertCell(table, "FIRST NAME", Element.ALIGN_CENTER, 1, headerStyle);
            insertCell(table, "LAST NAME", Element.ALIGN_CENTER, 1, headerStyle);
            insertCell(table, "Description", Element.ALIGN_CENTER, 1, headerStyle);
            insertCell(table, "TYPE", Element.ALIGN_CENTER, 1, headerStyle);
            insertCell(table, "DATE", Element.ALIGN_CENTER, 1, headerStyle);
            insertCell(table, "AMOUNT", Element.ALIGN_CENTER, 1, headerStyle);
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
                landlordsDetails.setTotalPayment(resultSet.getString(8));
                totalAmmount = Integer.parseInt(landlordsDetails.getTotalPayment());
                dueAmmount = dueAmmount + Integer.parseInt(landlordsDetails.getAmount());

                insertCell(table, resultSet.getString(1), Element.ALIGN_CENTER, 1, rowStyle);
                insertCell(table, resultSet.getString(2), Element.ALIGN_CENTER, 1, rowStyle);
                insertCell(table, resultSet.getString(3), Element.ALIGN_CENTER, 1, rowStyle);
                insertCell(table, resultSet.getString(4), Element.ALIGN_CENTER, 1, rowStyle);
                insertCell(table, resultSet.getString(5), Element.ALIGN_CENTER, 1, rowStyle);
                insertCell(table, resultSet.getString(6), Element.ALIGN_CENTER, 1, rowStyle);
                insertCell(table, resultSet.getString(7), Element.ALIGN_CENTER, 1, rowStyle);
            }
            dueAmmount = totalAmmount - dueAmmount;
            insertCell(table, "TOTAL AMOUNT", Element.ALIGN_RIGHT, 6, rowStyle);
            insertCell(table, String.valueOf(totalAmmount), Element.ALIGN_CENTER, 1, rowStyle);

            insertCell(table, "DUE AMOUNT", Element.ALIGN_RIGHT, 6, rowStyle);
            insertCell(table, String.valueOf(dueAmmount), Element.ALIGN_CENTER, 1, rowStyle);
//          add the PDF table to the paragraph
            paragraph.add(table);
//           add the paragraph to the document
            doc.add(paragraph);

            //close the PDF file
            doc.close();
            //closes the writer
            writer.close();
            Desktop.getDesktop().open(new File("home\\" + fileName));
        } catch (DocumentException | SQLException | IOException e) {
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
