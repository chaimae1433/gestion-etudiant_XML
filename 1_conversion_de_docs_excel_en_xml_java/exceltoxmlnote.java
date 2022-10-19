
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import jxl.Cell;
import jxl.CellType;
import jxl.Sheet;
import jxl.Workbook;
import jxl.format.Font;
import jxl.read.biff.BiffException;

public class exceltoxmlnote
{
    public String toXml(File excelFile, String name,String name1) throws IOException, BiffException {
        try {
            String xmlLine = "";
            String rowText = "";
            String colText = "";
            String isBold = "";
            Font font = null;
            String cellCol = "";
            String cellAddress = "";
            Cell cell = null;
            Workbook workbook = Workbook.getWorkbook(excelFile);
            xmlLine += "<?xml version=\"1.0\"  standalone=\"no\"?>\n";
           xmlLine += "<!DOCTYPE Filiere_Niveau SYSTEM \"Note.DTD\">\n";
            //   xmlLine+="<Filiere_Niveau xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:noNamespaceSchemaLocation=\"Note.xsd\">\n";
            xmlLine += "<?xml-stylesheet href=\""+name+"s.xsl\" type =\"text/xsl\"?>\n";
           xmlLine += "<Filiere_Niveau nom_de_filiere =\"GINF2\">" + "\n \n";

                Sheet s = workbook.getSheet(0);
                //xmlLine += "  <Page"+(sheet+1)+">" + "\n \n";
                Cell[] row = null;
                Cell[] col = null;
                col = s.getRow(0);
                for (int i = 0; i < s.getRows(); i++) {
                    if (i==0) continue;
                    row = s.getRow(i);
                    for (int j = 1; j < row.length; j++) {
                        if (row[j].getType() != CellType.EMPTY) {
                            cell = row[j];
                            cellCol=columnName(cell.getColumn());
                            cellCol=" colLetter=\""+cellCol+"\"";
                            cellAddress=" address=\""+cellAddress(cell.getRow()+1,cell.getColumn())+"\"";
                            isBold = cell.getCellFormat().getFont().getBoldWeight() == 700 ? "true" : "false";
                            isBold = (isBold == "false" ? "" : " isBold=\"true\"");
//
                                                            if(j==1)
    colText +="  <student "+col[j].getContents()+"=\""+cell.getContents()+"\">\n";
                                                            else if(j<4&&j>1){

    colText += "    <"+col[j].getContents()+">";
                        colText += cell.getContents();
                        colText += "</"+col[j].getContents()+">" + "\n";

                        rowText += cell.getContents();

}
                else if(j>=4&&j<9){
                     colText +="  <"+col[j+1].getContents()+" "+col[j].getContents()+"=\""+row[j].getContents()+"\">";

                        colText += row[j+1].getContents();
                        colText += "</"+col[j+1].getContents()+">" + "\n";

                        rowText += cell.getContents();
                        j++;
        }
             else if(j==9) {
//
                     colText += "  <"+col[j].getContents()+">";
                        colText += cell.getContents();
                        colText += "</"+col[j].getContents()+">" + "\n";
                        rowText += cell.getContents();
                        colText += " </student>\n";
                        }
                                                                    }
                    }
                    }
                    if (rowText != "") {
                    xmlLine +=" <module "+col[0].getContents()+"=\""+row[0].getContents()+"\">" + "\n";
                    xmlLine += colText;
                    xmlLine +=" </module>" + "\n \n";
                }
                colText = "";
                rowText = "";
            xmlLine += "</Filiere_Niveau>";
            return xmlLine;
        } catch (UnsupportedEncodingException e) {
            System.err.println(e.toString());
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
