package model;
import java.io.FileOutputStream;
import java.net.URL;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.io.IOException;
 
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.Image;
public class genpdf {
 
    /** The resulting PDF file. */
    public static final String RESULT
        = "first_table.pdf";
 
    /**
     * Main method.
     * @param    args    no arguments needed
     * @throws DocumentException 
     * @throws IOException
     */
    public  void display(ResultSet res)
        throws IOException, DocumentException {
        createPdf(RESULT,res);
    }
 
    /**
     * Creates a PDF with information about the movies
     * @param    filename the name of the PDF file that will be created.
     * @throws    DocumentException 
     * @throws    IOException
     */
    public void createPdf(String filename, ResultSet all)
        throws IOException, DocumentException {
    	// step 1
        Document document = new Document();
        // step 2
        PdfWriter.getInstance(document, new FileOutputStream(filename));
        // step 3
        document.open();
        // step 4
        
        Paragraph paragraph1 = new Paragraph("Jwellery Mnagemnt System");
        paragraph1.setAlignment(Element.ALIGN_CENTER);
        document.add(paragraph1);
        Phrase phrase = new Phrase(30);
        document.add(phrase);
        String imageUrl = "Desert.jpg";
                

    /*    Image image = Image.getInstance(imageUrl);
        image.setAbsolutePosition(0, 0);
        image.scaleToFit(100, 100);
       image.setAlignment(Image.TOP);
        document.add(image);*/
      
        document.add(createFirstTable(all));
        // step 5
        document.close();
    }
 
    /**
     * Creates our first table
     * @return our first table
     */
    public static PdfPTable createFirstTable(ResultSet alm) {
    	// a table with three columns
    	
    	
    	 
        PdfPTable table = new PdfPTable(3);
        // the cell object
        PdfPCell cell;
        // we add a cell with colspan 3
      
        // now we add a cell with rowspan 2
        
        // we add the four remaining cells with addCell()
        try{
        ResultSet res1 = alm;
        
      
        while(res1.next())
        {
        	
        table.addCell(res1.getString(1));
        table.addCell(res1.getString(2));
        table.addCell(res1.getString(3));
       
        }
        }
        catch(Exception e){
        	
        }
        return table;
    }
}