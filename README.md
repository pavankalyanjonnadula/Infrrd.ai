# Infrrd.ai
Assignment of infrrd.ai

------------Question-------------

There are a number of pirate ships on the sea. Each of these ships has a certain amount of loot. After each day, if any ship has more loot than the ship on its left, the ship is destroyed by the ship to its left. 
You are given the initial values of the loot in each of the pirates ships. Print the number of days after which no ship is destroyed, i.e. the time after which there are no ships with more loot than the ship to their left. 
For example, Loot levels L = [3,6,2,7,5]. Using a 1-indexed array, the first day ships 2 and 4 are destroyed leaving p = [3,2,5]. On the second day, ship 3 of the remaining
 Array is destroyed leaving p = [3,2]. As there is no ship with a higher amount of loot than the one to its left, ships stop getting destroyed after day 2.
Program Description:  Write a program in any language which returns an integer representing the number of days until ships stop being destroyed.
Input Format 
The first line contains an integer n, the size of the array p. 
The next line contains space-separated integers p[ i ]. 
Output Format 
Output an integer equal to the number of days after which no ships are destroyed.
Sample Input 
7 6 5 8 4 7 10 9 
Sample Output 
2 
Explanation 
Initially all ships are present.
Ships = {(6,1), (5,2), (8,3), (4,4), (7,5), (10,6), (9,7)} 
Ships[k] = (i, j) => jth plant has loot = i. 
After the 1st day, 4 ships remain as ships 3, 5, and 6 are destroyed.  
Ships = {(6,1), (5,2), (4,4), (9,7)}
After the 2nd day, 3 Ships survive as Ship 7 dies.
Ships = {(6,1), (5,2), (4,4)} 
After the 2nd day the ships stop getting destroyed. 


![alt test](https://github.com/pavankalyanjonnadula/Infrrd.ai/blob/master/InfrrdTaskPavan/Screenshot%202020-04-14%20at%206.45.20%20AM.png)

