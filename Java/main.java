import java.util.*; 
import java.io.*;
  
public class main { 

    public static void appendStrToFile(String fileName, 
                                       String str) 
    { 
        try {
            BufferedWriter out = new BufferedWriter( 
                   new FileWriter(fileName, true)); 
            out.write(str); 
            out.close(); 
        } 
        catch (IOException e) { 
            System.out.println("exception occoured" + e); 
        } 
    }
 
 
public static void main(String args[]) throws Exception 
    { 
		String fileName = "/myvol/Geek.txt";       
        String str = "This is GeeksforGeeks\n"; 
        appendStrToFile(fileName, str); 
        try { 
            BufferedReader in = new BufferedReader( 
                        new FileReader("/myvol/Geek.txt")); 
  
            String mystring; 
            while ((mystring = in.readLine()) != null) { 
                System.out.println(mystring); 
            } 
        } 
        catch (IOException e) { 
            System.out.println("Exception Occurred" + e); 
        }     
	
	    //Integer[] array = new Integer[10000 * 100000]; 
    } 
} 