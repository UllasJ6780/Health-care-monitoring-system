package controller;


import java.io.FileNotFoundException;
import java.io.FileOutputStream;



import model.bean;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;


public class pdfgenerate {
       public static void disp(bean b) throws FileNotFoundException, DocumentException {
    	   
	  Document document = new Document();
	  PdfPTable table = new PdfPTable(7);
	  table.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
	  
	  table.addCell("Name");
	  table.addCell("DOB");
      table.addCell("Address");
      table.addCell("Contact");
      table.addCell("Bed_Charge");
      table.addCell("Medicine");
      table.addCell("Total");
      
	  table.setHeaderRows(1);
	  PdfPCell[] cells = table.getRow(0).getCells(); 
	  for (int j=0;j<cells.length;j++){
	     cells[j].setBackgroundColor(BaseColor.GRAY);
	  }
         
        	  
    	     table.addCell(b.getuname());
    	     table.addCell(b.getdob());
             table.addCell(b.getaddress());
             
             table.addCell(b.getcontact());
             table.addCell(b.getbcharge());
             table.addCell(b.getmcharge());
             table.addCell(b.gettotal());
         
	  PdfWriter.getInstance(document, new FileOutputStream("E:\\sample3.pdf"));
	  document.open();
          document.add(table);
	  document.close();
	  System.out.println("Done");
      }
}