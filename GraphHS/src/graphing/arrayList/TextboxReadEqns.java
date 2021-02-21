package graphing.arrayList;

import java.util.ArrayList;

public class TextboxReadEqns {
	
	private ArrayList<String> eqnArray = new ArrayList<String>();
	
	public ArrayList<String> readEqns(String eqns) {
		
		int i=0;
		String[] separatedEqns = eqns.split(", ");
		for (String s: separatedEqns) {
			eqnArray.add(s);
		}
		
		return eqnArray;
	}
	
	public ArrayList<String> getEqnArray() {
		return eqnArray;
	}
}
