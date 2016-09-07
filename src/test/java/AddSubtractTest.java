import static org.junit.Assert.*;
import org.junit.Before;
import org.junit.Test;

public class AddSubtractTest {
  private AddSubtract as;

  @Before
  public void setUp() throws Exception {
    as = new AddSubtract(4);
  }
 
  @Test
  public void testAdd() {
    as.add(5);
    assertEquals(9, as.getCurrVal());
    as.add(3);
    assertEquals(12, as.getCurrVal());
  }

}
