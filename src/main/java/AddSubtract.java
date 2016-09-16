public class AddSubtract {
  private int currVal;

  public AddSubtract(int a) {
    currVal = a;
  }

  public void add(int a) {
    currVal += a;
  }

  public void subtract(int a) {
    currVal -= a;
  }

  public int getCurrVal() {
    return currVal;
                  }
}
