
import java.nio.file.Files;
import java.nio.file.Paths;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import jxl.Cell;
import jxl.CellType;
import jxl.Sheet;
import jxl.Workbook;
import jxl.format.Font;
import jxl.read.biff.BiffException;
public class Main {
 public static void main(String[] args) throws Exception{
        File file, f,s,f1,proff,proff2,notexml,noteexcel;
        String line, class_name, name,linem,lineM,linep,linen;
        exceltoxml p;
        exceltoxmlnote note;
        excwltoxml2 pf;
        exceletoxml1 pm;
        String[] temp;
//-----------------------creation de document xml studens----------------------
        file = new File("Student_ginf2.xls");
         p = new exceltoxml();
        String f_name="Student";
        line =p.toXml(file,f_name,"Ginf2");
        System.out.println(line);
        f = new File("Student_GINF2.xml");
         Files.write(Paths.get(f.getPath()), line.getBytes());
         Files.readAllLines(Paths.get(f.getPath()));
//-------------------------creation de document xml modules---------------------------
        s = new File("Module_ginf2.xls");
        pm = new exceletoxml1();
        String fm_name="Module";
        String validator="Module.dtd";
        lineM =pm.toXml(s,fm_name,"Ginf2",validator);
        System.out.println(lineM);
         f1 = new File("Module_GINF2.xml");
         Files.write(Paths.get(f1.getPath()), lineM.getBytes());
       Files.readAllLines(Paths.get(f1.getPath()));
//-------------------creation de document xml professeur---------------------------
       proff=new File("Professeur_ginf2.xls");
       pf = new excwltoxml2();
       String fp_name="Professeur";
        String validatorprof="Professeur.dtd";
       linep =pf.toXml(proff,fp_name,"Ginf2",validatorprof);
               System.out.println(linep);
           proff2 = new File("Professeur_GINF2.xml");
         Files.write(Paths.get(proff2.getPath()), linep.getBytes());
       Files.readAllLines(Paths.get(proff2.getPath()));
//--------------------------creation de document xml Note----------------------
noteexcel=new File("Note_ginf2.xls");
 note = new exceltoxmlnote();
       String fn_name="Note";
       linen =note.toXml(noteexcel,fn_name,"Ginf2");
               System.out.println(linen);
           notexml = new File("Note_GINF2.xml");
         Files.write(Paths.get(notexml.getPath()), linen.getBytes());
       Files.readAllLines(Paths.get(notexml.getPath()));

    }
}
