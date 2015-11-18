import java.io.*;

/**
 * <code>Echo</code>
 *
 * To demonstrate the writing and running of a Java program.
 *
 * Store this program in a file named Echo.java
 *
 * To run this program:
 *     1.  javac Echo.java
 *     2.  java Echo
 *
 * @author <a href="mailto:shapiro@cse.buffalo.edu">Stuart C. Shapiro</a> 
 */
public class Echo {
   
    /**
     *   Repeats the following:
     *     print a numbered prompt;
     *     read something;
     *     echo `I read --><whatever was read><--'
     *   until the thing read is the string "bye".
     *
     * @param args a <code>String[]</code> value
     */
    public static void main(String[] args) {
	String input;
	System.out.println("Java Echo");
	System.out.println("Type something to each prompt.");
	System.out.println("Type bye to quit.\n");
	for (int n = 1; ; n++) {
	    System.out.print(n + ": ");
	    input = readString();
	    if (input.equals("bye")) {
		System.out.println("Good bye.");
		System.exit(0);
	    }
	    else {System.out.println("I read -->" + input + "<--");}
	}
    }

    /**
     * Reads a line of text, and returns it as a string.
     *
     * @return the <code>String</code> it read,
     * or the string "bye" if any exception occurs when reading.
     */
    public static String readString() {
	String input;
	BufferedReader reader
	    = new BufferedReader(new InputStreamReader(System.in));
	try {input = reader.readLine().trim();}
	catch(Exception e) {input = "bye";}
	return input;
    }
} //Echo

