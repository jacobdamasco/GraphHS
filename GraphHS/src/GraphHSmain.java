import java.io.*;
import java.util.HashMap;
import java.util.Scanner;
import javax.swing.*;
import javax.swing.JFrame;
import com.sun.corba.se.impl.orbutil.graph.Graph;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import java.awt.*;

public class GraphHSmain extends JFrame
{

	public static void main(String[] args) throws FileNotFoundException
	{

			File myObj = new File(args[0]);		
			Scanner myReader = new Scanner(myObj);
			
			HashMap<Integer, String> map = new HashMap<Integer, String>();
			int i = 0;
			
			if(args[0].substring(args[0].length() - 3).equals("txt"))
			{
			      while (myReader.hasNextLine()) 
			      {
			          String data = myReader.nextLine();
			          map.put(i, data);
			          i++;
			      }
			}
			if(args[0].substring(args[0].length() - 3).equals("csv"))
			{
				while(myReader.hasNext()) 
				{
					myReader.useDelimiter(",");
					String data = myReader.next();
					map.put(i, data);
					i++;
				}
			}
			Scanner scan = new Scanner(System.in);
			System.out.print("How many graphs do you want to do? ");
			
			int j = 0;
			int l;
			
			int howMany = scan.nextInt();
			scan.close();
			
			while(j < howMany)
			{
				System.out.println("\nWhich graph would you like to do? ");
				Scanner scanNum = new Scanner(System.in);
				int index = scan.nextInt();
				if(index <= map.size()-1 && index >= 0)
				{
					if(map.containsKey(index+1))
					{
						String eqn = (String)map.get(index+1);
						String split[] = eqn.split(" ");
						for(l = 0; l < eqn.length(); l++)
						{
							switch(eqn.charAt(l))
							{
								case 'y':
									double y = (double) eqn.charAt(l);
								case 'x':
									double x = (double) eqn.charAt(l);
								
							}
						}
					}
				}
				
				j++;
			}
			
			/*
			double y;
			double a, h, k;

			graphPaper gp1 = new graphPaper(10,10);
			for ( double x = -10; x<=10; x+=0.01 )
			{
				a = 1;
				h = 0; k = 0;
				y = a*Math.pow(x-h,2) + k;
				gp1.drawPoint(x,y);
			}
			*/
	}


}
