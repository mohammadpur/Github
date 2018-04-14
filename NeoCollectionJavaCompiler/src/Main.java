import java.io.File;
import java.io.FileReader;

public class Main
{
	public static void main(String[] args)
	{
		try{
			File file = new File("Class1.mjava");
			parser p = new parser(new Lexer(new FileReader(file)));
			System.out.println(p.parse());
		}catch(Exception e)
		{
			System.out.println(e);
		}
	}
}