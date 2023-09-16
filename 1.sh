#!/bin/bash

echo "Welcome to Basic Shell Commands Practice Program!"
echo ""

while true; do
  echo "Please enter the command you want to practice:"
  echo "ls, cd, du, pwd, man, cat, more, less, head, tail, mkdir, cp, mv, rm, touch, grep, sort, wc, cut, or echo"
  echo "Type 'exit' to quit the program."
  read cmd

  case $cmd in
    ls)
      echo "Listing files and directories in the current directory..."
      ls
      ;;
    cd)
      echo "Changing directory..."
      echo "Please enter the directory path:"
      read dir
      cd $dir
      ;;
    du)
      echo "Displaying disk usage of files and directories in the current directory..."
      du
      ;;
    pwd)
      echo "Printing the current directory path..."
      pwd
      ;;
    man)
      echo "Opening the manual page of a command..."
      echo "Please enter the command you want to learn about:"
      read mancmd
      man $mancmd
      ;;
    cat)
      echo "Displaying the contents of a file..."
      echo "Please enter the file path:"
      read file
      cat $file
      ;;
    more)
      echo "Displaying the contents of a file one screen at a time..."
      echo "Please enter the file path:"
      read file
      more $file
      ;;
    less)
      echo "Displaying the contents of a file one screen at a time (with more features than 'more')..."
      echo "Please enter the file path:"
      read file
      less $file
      ;;
    head)
      echo "Displaying the first few lines of a file..."
      echo "Please enter the file path:"
      read file
      head $file
      ;;
    tail)
      echo "Displaying the last few lines of a file..."
      echo "Please enter the file path:"
      read file
      tail $file
      ;;
    mkdir)
      echo "Creating a new directory..."
      echo "Please enter the directory name:"
      read dir
      mkdir $dir
      ;;
    cp)
      echo "Copying a file or directory..."
      echo "Please enter the source file/directory path:"
      read src
      echo "Please enter the destination path:"
      read dest
      cp -r $src $dest
      ;;
    mv)
      echo "Moving or renaming a file or directory..."
      echo "Please enter the source file/directory path:"
      read src
      echo "Please enter the destination path:"
      read dest
      mv $src $dest
      ;;
    rm)
      echo "Deleting a file or directory..."
      echo "Please enter the file/directory path:"
      read file
      rm -r $file
      ;;
    touch)
      echo "Creating a new empty file..."
      echo "Please enter the file name:"
      read file
      touch $file
      ;;
    grep)
      echo "Searching for a pattern in a file..."
      echo "Please enter the pattern:"
      read pattern
      echo "Please enter the file path:"
      read file
      grep $pattern $file
      ;;
    sort)
      echo "Sorting the lines of a file..."
      echo "Please enter the file path:"
      read file
      sort $file
      ;;
    wc)
      echo "Counting the number of lines, words, and characters in a file..."
      echo "Please enter the file path:"
      read file
      wc $file
      ;;

