package files;

import java.io.File;
import java.io.FileOutputStream;

import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

public class Main {

	public static void main(String args[]) throws Exception {
		Source xmlSource = new StreamSource(new File("../students.xml"));
		Source xslSource = new StreamSource(new File("../students2.xsl"));
			
		Transformer transformer = TransformerFactory.newInstance().newTransformer(xslSource);
		
		transformer.transform(xmlSource, new StreamResult(System.out));
		transformer.transform(xmlSource, new StreamResult(new FileOutputStream("../result.txt")));
	}
}
