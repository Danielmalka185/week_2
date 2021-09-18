#!/usr/bin/bash

read -p "pleas enter the password" password            # ask form the user to enter the password and save the object in password 
len="${#password}"                                     # defin the length of the password  

if test $len -ge 10 ; then                              # first if check if the length is gretter then 10

    echo "$password" | grep -q [0-9]                    # see if we have numbers in the password - grep (q is for quit)-q searches the given files for lines containing a match to a given pattern list - 

     if test $? -eq 0 ; then 

           echo "$password" | grep -q [A-Z]              ## check for capital letters 

                if test $? -eq 0 ; then

                    echo "$password" | grep -q [a-z]     # check for small leters 

                       if test $? -eq 0 ; then 
              
                           if test $? -eq 0 ; then          
                      
                             echo -e  "\e[1;32m good paasword \e[0m "          
                          
                           fi                       
 
                       else

                         echo -e " \e[1;31m pleae include small leters in your password \e[0m "             # 4 if for small letters 

                       fi
                   else

                     echo -e  "\e[1;31m weak password include capital char in your password \e[0m "         # 3 if for cafital letters 

                 fi
          else

       echo -e "\e[1;31m please include numbers in your password \e[0m "                  # 2 if for checking if there is numbers    

     fi

else

    echo -e "\e[1;31m password length should be greater than or equal 10 \e[0m"                        # first if close - need to be beeger  

fi
