import 'dart:io';

void main() {

    int i=1, gr, guesses = 5;
    int number, secret_number;

    gr = guesses;

    print("************************************************");
    print("*********** Number Guessing Game ***************");
    print("************************************************");
    
    print("Enter the Secret Number Please:");
    secret_number = int.parse(stdin.readLineSync()!);

    print("\x1B[2J\x1B[0;0H"); // Clear the Windows Terminal Screan 

    print("************************************************");
    print("*********** Number Guessing Game ***************");
    print("************************************************");
    print("Remember! you have only ${guesses} guesses ");
        
    do
    {
        print("Guess the Number (Guesses you have: ${gr}) = ");
        number = int.parse(stdin.readLineSync()!);
        if(number > secret_number) {
            print("The Secret Number is Smaller than ${number}");
        
        }else if(number < secret_number) {
            print("The Secret Number is Greater than ${number}");
        
        }
        gr = guesses-i;
        
        if(i==guesses) break;

        i++;
  
    }  while(number != secret_number);

    if(number == secret_number)
    {
        print("**************************************************");
        print("*** Hurrah! You have guessed the Secret Number ***");
        print("*********** The Secret Number is ${secret_number} **************");
        print("**************************************************");
    } else {
        print("**************************************************");
        print("*** Sorry! You have used all the guesses ***");
        print("*********** The Secret Number is ${secret_number} **************");
        print("**************************************************");
    }
}