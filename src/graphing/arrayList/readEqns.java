package graphing.arrayList;
import java.io.*;
import java.util.ArrayList;
import java.util.Scanner;

public class readEqns 
{
		public static void main(String[] args) throws FileNotFoundException
		{

				File myObj = new File(args[0]);	
							
				Scanner myReader = new Scanner(myObj);
				
				ArrayList<String> equationArray = new ArrayList<String>(); 

				int i = 0;
				
				if(args[0].substring(args[0].length() - 3).equals("txt"))
				{
				      while (myReader.hasNextLine()) 
				      {
				          String data = myReader.nextLine();
				          equationArray.add(data);
				          i++;
				      }
				}
				if(args[0].substring(args[0].length() - 3).equals("csv"))
				{
					while(myReader.hasNext()) 
					{
						myReader.useDelimiter(",");
						String data = myReader.next();
						equationArray.add(data);
						i++;
					}
				}
				
		}


}


