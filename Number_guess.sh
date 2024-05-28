#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"
#to count no_of_guesses
count=0
#initialize random number thatis the secret number.
random_num=$((RANDOM%1000+1))
#function to prompt user to guess the secret number
read_num(){
   
  echo -e "\nGuess the secret number between 1 and 1000:\n"
  read num
  if [[ ! $num =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    read_num

    else
      if [[ $num -eq $random_num ]]
        then 
          (( count++ ))
          echo "You guessed it in $count tries. The secret number was $random_num. Nice job!"
          else
              if [[ $num -lt $random_num ]]
              then
                echo echo "It's lower than that, guess again:"
                (( count++ ))
                read_num
                else
                  echo echo "It's higher than that, guess again:"
                  (( count++ ))
                  read_num
              fi

      fi
    
  fi

}

echo -e "\nEnter your username:\n"
read name
user_name=$($PSQL "select name from users where name='$name'")

if [[ -z $user_name ]]
then
  no_of_games=1

	    insert_name=$($PSQL "insert into users (name,no_of_games) values('$name',$no_of_games)")
	   
      echo -e "\nWelcome, $name! It looks like this is your first time here."
	    read_num
	    userID=$($PSQL "select user_id from users where name='$name'")
	    insert_games=$($PSQL "INSERT INTO games (user_id,no_of_guesses) values ($userID, $count)")

      else
        best_game=$($PSQL "select min(no_of_guesses) from games where user_id=(select user_id from users where name='$name')")
        userID=$($PSQL "select user_id from users where name='$name'")
        num_of_games=$($PSQL "select count(user_id) from games where user_id=$userID")

        echo "Welcome back, $(echo $name)! You have played $(echo $num_of_games) games, and your best game took $(echo $best_game) guesses."
        read_num

        games_played=$($PSQL "select no_of_games from users where name='$name'")


        userID=$($PSQL "select user_id from users where name='$name'")



        insert_games=$($PSQL "INSERT INTO games (user_id,no_of_guesses) values ($userID, $count)")

        num_of_games=$($PSQL "select count(user_id) from games where user_id=$userID")

        no_of_games=$($PSQL "UPDATE users set no_of_games=$num_of_games where name='$name'")
fi
