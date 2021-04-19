import java.util.*;

class Main {
  public static void main(String[] args) {
    Scanner input = new Scanner(System.in);
    int l, w, h;
    System.out.println("Welcome to shape calculator!");
    System.out.println("We will be calculating the area and surface area of a few shapes.");
    System.out.println("Lets start with a box!");
    System.out.println("Please enter the length of the box.");
    l = input.nextInt();
    System.out.println("Please enter the width of the box.");
    w = input.nextInt();
    System.out.println("Please enter the height of the box.");
    h = input.nextInt();

    Box box = new Box(l,w,h);
    System.out.print("The volume is: ");
    System.out.println(box.calcVol());
    System.out.print("The surface area is: ");
    System.out.println(box.calcSurf());

    System.out.println("Now lets move on to a pyramid.");
    System.out.println("Please enter the length of the pyramid.");
    l = input.nextInt();
    System.out.println("Please enter the width of the pyramid.");
    w = input.nextInt();
    System.out.println("Please enter the height of the pyramid.");
    h = input.nextInt();

    Pyr pyr = new Pyr(l,w,h);
    System.out.print("The volume is: ");
    System.out.println(pyr.calcVol());
  }
}