import java.util.Scanner;
import java.util.Random;

class Main {
  public static void main(String[] args) {
    Random random = new Random();
    int randNum = random.nextInt(100);
    int guess = 0;
    int attempts = 0;
    Scanner sc = new Scanner(System.in);
    System.out.println("Welcome to the Number Guessing Game!");
    System.out.println("Guess a number betweeen 1 and 100");
    guess = sc.nextInt();
    while(guess != randNum){
      if(randNum>guess){
        System.out.println("Your guess was too low, try again");
        guess = sc.nextInt();
      }else if(randNum<guess){
        System.out.println("Your guess was too high, try again");
        guess = sc.nextInt();
      }
      attempts++;
    }
    System.out.println("You win! You guessed it in " + attempts + " tries!");
  }
}