import java.io.File;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.Scanner;

public class Adder
{
	public static void addToFile(ArrayList<String> field,ArrayList<String> method,File file)
	{
		try{
			String temp;
			Scanner input = new Scanner(file);
			File out = new File("result.java");
			Formatter output = new Formatter(out);
			while(input.hasNext())
			{
				temp = input.nextLine();
				output.format("%s\n", temp);
				if(temp.contains("{"))
					break;
			}
			for(String q:field)
				output.format("%s\n", q);
			for(String q:method)
				output.format("%s\n", q);
			while(input.hasNext())
				output.format("%s\n", input.nextLine());
			output.close();
			input.close();
		}catch(Exception e)
		{
			System.out.println(e);
		}
	}
}