//import com.sun.org.apache.xml.internal.serializer.ToXMLStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.*;
import jxl.Cell;
import jxl.CellType;
import jxl.Sheet;
import jxl.Workbook;
import jxl.format.Font;
import jxl.read.biff.BiffException;
public class excwltoxmlProf {
    public String toXml(File excelFile, String name,String name1,String nomvalidator) throws IOException, BiffException {
        try {
            String xmlLine = "";
            String rowText = "";
            String colText = "";
            String isBold = "";
            //Font font = null;
            String cellCol = "";
            String cellAddress = "";
            Cell cell = null;
            Workbook workbook = Workbook.getWorkbook(excelFile);
            xmlLine += "<?xml version=\"1.0\" standalone=\"no\"?>\n";
            xmlLine += "<!DOCTYPE Filiere_Niveau SYSTEM \""+nomvalidator+"\">\n";
    xmlLine += "<Filiere_Niveau nom_de_filiere =\"GINF2\">" + "\n \n";
          Sheet s = workbook.getSheet(0);
           Cell[] row = null;
            Cell[] col = null;
            col = s.getRow(0);
            for (int i = 0; i < s.getRows(); i++) {
                if (i==0) continue;
                row = s.getRow(i);
                for (int j = 0; j < row.length; j++) {
                    if (row[j].getType() != CellType.EMPTY) {
                        cell = row[j];
                        cellCol=columnName(cell.getColumn());
                        cellCol=" colLetter=\""+cellCol+"\"";
                        cellAddress=" address=\""+cellAddress(cell.getRow()+1,cell.getColumn())+"\"";
                        isBold = cell.getCellFormat().getFont().getBoldWeight() == 700 ? "true" : "false";
                        isBold = (isBold == "false" ? "" : " isBold=\"true\"");
                    if (j>=2&&j<=5){
    if(j==2||j==4){colText += " <MatiereEnseigne>" + "\n";
    colText += "  <"+col[j].getContents()+">";
                        colText += cell.getContents();
                        colText += "  </"+col[j].getContents()+">" + "\n";
 rowText += cell.getContents();}
    if(j==3||j==5){ colText += "  <"+col[j].getContents()+">";
    colText += cell.getContents();
                        colText += "  </"+col[j].getContents()+">" + "\n";

                        rowText += cell.getContents();
                        colText += " </MatiereEnseigne>" + "\n";}
}
else{
                       colText += "  <"+col[j].getContents()+">";
               colText += cell.getContents();
                        colText += "</"+col[j].getContents()+">" + "\n";
 rowText += cell.getContents();}
                    }
                }
                if (rowText != "") {
                    xmlLine += " <"+name+" >" + "\n";
                    xmlLine += colText;
                    xmlLine += " </"+name+">" + "\n \n";
                }
                colText = "";
                rowText = "";
            }
            xmlLine += "</Filiere_Niveau>" + "\n \n";
            return xmlLine;
        } catch (UnsupportedEncodingException e) {
            System.err.println("fichier inconvinient");
        }
        return null;
    }
    private String cellAddress(Integer rowNumber, Integer colNumber){
        return columnName(colNumber)+rowNumber;
    }
    private String columnName(Integer colNumber) {
        Base columns = new Base(colNumber,26);
        columns.transform();
        return columns.getResult();
    }

    class Base {
        String[] colNames = "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z".split(",");
        String equalTo;
        int position;
        int number;
        int base;
        int[] digits;
        int[] auxiliar;

        public Base(int n, int b) {
            position = 0;
            equalTo = "";
            base = b;
            number = n;
            digits = new int[1];
        }

        public void transform() {
            if (number < base) {
                digits[position] = number;
                size();
            } else {
                digits[position] = number % base;
                size();
                position++;
                number = number / base;
                transform();
            }
        }

        public String getResult() {
            for (int j = digits.length - 2; j >= 0; j--) {
                equalTo += colNames[j>0?digits[j]-1:digits[j]];
            }
            return equalTo;
        }

        private void size() {
            auxiliar = digits;
            digits = new int[auxiliar.length + 1];
            System.arraycopy(auxiliar, 0, digits, 0, auxiliar.length);
        }
    }

}
