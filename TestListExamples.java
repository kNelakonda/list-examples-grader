import static org.junit.Assert.*;
import org.junit.*;
import java.util.*;

public class TestListExamples implements StringChecker {
  // Write your grading tests here!
  @Test
  public void filterCorrectly() {
    List<String> i = new ArrayList<String>();
    List<String> endList = new ArrayList<String>();
    i.add("1Hello");
    i.add("We");
    i.add("1Are");
    i.add("Here");
    StringChecker wc = new objChecker();
    ListExamples.filter(i,wc);
    endList.add("1Hello");
    endList.add("1Are");
    // int f = 0;
    // while(f<i.size()){
    //   if(wc.checkString(i.get(f))){
    //     endList.add(i.get(f));
    //   }
    // }
    assertEquals(endList,ListExamples.filter(i,wc));
  }
}
class objChecker implements StringChecker{

  public boolean checkString(String s){
    if(Character.isDigit(s.charAt(0))){
      return true;
    }else{
    return false;
    }  
  }
}
