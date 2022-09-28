import java.util.regex.Pattern;

/**
 * @author Antonio Zea Jr
 * Course: CS483-02
 * This class tests regex patterns to exemplify our understanding of regex and 
 * automatons.
 */
public class homework2 {
  public static void main(String[] args) {
    /**
     * Language where w begins with a 1 and end with a 0
     */
    String regexString = "1[10]*0";
    regexTest(regexString, "1111110");
    regexTest(regexString, "10000001");
    // regexTest(regexString, "01000000");
    // regexTest(regexString, "1232140");


    /**
     * Language where w contains at least three 1s
     */
    regexString = "[0]*1[0]*1[0]*1[01]*";
    regexTest(regexString, "101000010");
    regexTest(regexString, "1000001");


  }

  /**
   * Function performs regex test and prints results
   * @param regexString
   * @param testString
   */
  public static void regexTest(String regexString, String testString) {
    System.out.println(
        "Regex pattern:\t" + regexString + "\n" +
            "Test string:\t" + testString + "\n" +
            "Match:\t\t" +
            Pattern.matches(regexString, testString) + "\n");
  
  }

}