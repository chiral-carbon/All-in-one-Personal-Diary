# LIFE

## GAME DESCRIPTION
It is a sadistic boring game, sadly that is all I could come up with right now, if you need motivation to win your life over, you could maybe try it out. :P
Game starts with the player(student) being in a school, challenge is to score good marks and crack IIT-JEE exam cutoff to get into college.
In college, student has to show off skills in placement session to get a job.
If the student gets a job, game over and won.
If job not secured, or IIT-JEE cutoff not cleared, game over, student dies.
Here, school, collge and placement are different stages in life.

### Class Hierarchy

```
  *LifeMap
    - current stage
    - opening stage
    - next stage
  *Time(Engine)
    - study(this is getting disturbingly sad)/play
  *Stage
    - enter stage
    * school
    * college
    * placement session
    * job/win
    * die/lose

  ```  


### Tasks Breakdown

[x] Write classes using inheritance and have simple questions to move onto next room
[] Write modules and use composition
[] Add levels in each room and have questions of varying difficulty
