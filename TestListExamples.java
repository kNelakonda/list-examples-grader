import static org.junit.Assert.*;
import org.junit.*;
import java.util.ArrayList;
import java.util.List;
import org.junit.Test;

public class TestListExamples  {
  // Write your grading tests here!
  @Test
  public void filterCorrectly() {
    List<String> i = new ArrayList<String>();
    List<String> endList = new ArrayList<String>();
    i.add("1Hello");
    i.add("We");
    i.add("1Are");
    i.add("Here");
    ObjChecker wc = new ObjChecker();
    ListExamples.filter(i, wc);
    endList.add("1Are");
    endList.add("1Hello");
    assertEquals(endList,ListExamples.filter(i,wc));
  }

    @Test
    public void correctOrderTest(){
      List<String> list1 = new ArrayList<String>();
      List<String> list2 = new ArrayList<String>();
      list1.add("brownies");
      list1.add("cakes");
      list1.add("cookies");
      list2.add("broccoli");
      list2.add("carrots");
      list2.add("spinach");
      List<String> list3 = ListExamples.merge(list1, list2);
      String[] expected = {"broccoli", "brownies","cakes","carrots","cookies","spinach"};
      assertArrayEquals(expected, list3.toArray());
  }
}

