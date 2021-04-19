class Main {
  public static void main(String[] args) {
    for(int x = 99; x > 0; x = x - 1) {
      System.out.print(x + " bottles of root beer on the wall," + x + " bottles of root beer.");
      System.out.print("\n");
      System.out.print("Take one down and pass it around," + (x-1) + " bottles of root beer on the wall.");
      System.out.print("\n");
    }
  }
}