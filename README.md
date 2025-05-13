<h1 align="center">TOP-Rock-Paper-Scissors - Readme</h1>
<p align="center">
  <strong>
    My solution for project from <a href="https://www.theodinproject.com" target="_blank">The Odin Project (TOP)</a> full-stack curriculum
  </strong>
</p>
<div align="center">
  <a href="https://www.theodinproject.com">
    <img src="_for_readme/banner.png">
  </a>
</div>

<br>

# Table of Contents
* [The Odin Project :thinking:](#the-odin-project-thinking)
  * [What is it](#what-is-it)
  * [Is it worth doing](#is-it-worth-doing)
* [Overview :sparkles:](#overview-sparkles)
  * [About](#about)
  * [Features](#features)
  * [Technologies](#technologies)
  * [Setup](#setup)
* [Details :scroll:](#details-scroll)
  * [User interface](#user-interface)

<br>

# The Odin Project :thinking:

## What is it  
[The Odin Project](https://www.theodinproject.com) is a free, open-source curriculum that teaches web development from the ground up. It covers HTML, CSS, JavaScript, Ruby, Git, React, and back-end technologies like Node.js and Ruby on Rails, offering a structured path from beginner to job-ready developer. The curriculum includes hands-on projects, coding exercises, and real-world applications to reinforce learning.

## Is it worth doing  
The Odin Project is an excellent resource for self-taught developers looking for a structured and comprehensive learning path. It encourages active learning through projects and collaboration with the community. However, since it requires self-discipline and problem-solving skills, those who prefer guided instruction with direct mentorship might find it challenging.

<br>

# Overview :sparkles:

## About
This project is my solution for [Project: Tic Tac Toe](https://www.theodinproject.com/lessons/ruby-tic-tac-toe) on [Ruby Course](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby) from [The Odin Project (TOP)](https://www.theodinproject.com) which is an open-source curriculum for learning full-stack web development.

<br>

![preview](/_for_readme/preview.png)

## Technologies
Languages:
- Ruby
  
Programs:
- [VSCode](https://code.visualstudio.com)
- [ShareX](https://getsharex.com)
- [GIMP](https://www.gimp.org)

## Features
### Project requirements
- ✅ The game is played on a grid that's 3 squares by 3 squares.
- ✅ Players take turns putting their marks in empty squares.
- ✅ The first 3 marks in a row is the winner.
- ✅ When all 9 squares are full, the game ends in a tie. 

## Setup
- Download this repository
- Open folder in terminal
- Run `ruby ./lib/main.rb`

## Acknowledgements
- [Box-drawing characters](https://en.wikipedia.org/wiki/Box-drawing_characters)

<br>

# Details :scroll:

## User interface

### Board  
After the game starts, an empty board is displayed with columns labeled **a**, **b**, **c** and rows labeled **1**, **2**, **3**. The user must input a valid column and row (e.g., `b1`) to place their mark.
![board](/_for_readme/UI/board.png) 

If the selected cell is already occupied or the input is invalid, an error message is displayed, and the user is prompted again to select a valid cell.
![invalid moves](/_for_readme/UI/invalid_moves.png)  

---

### Game Over  
The game ends when one of the players gets three marks in a row — vertically, horizontally, or diagonally — and wins, or when the board is full, resulting in a draw.

![winner](/_for_readme/UI/winner.png)  
![draw](/_for_readme/UI/draw.png)  

