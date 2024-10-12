# Godot Pong Game
Pong game made in Godot engine 4.3. This is written for my [pong game tutorial](https://gameidea.org/2024/10/05/make-pong-game-in-godot/). Pong simulates table tennis (or ping pong) like game in 2D.

![Recording 2024-10-12 at 10 35 16](https://github.com/user-attachments/assets/13449324-3289-436a-82dd-bb6391d60bbd)


The tutorial teaches some of the things such as:
- Making a rigid body based ball in Godot, so ball can float freely in space and react when collision occurs.
- Two rackets or pedals that we can use to hit the ball.
- Logic for separate players. The racket/pedal is same, but controlled by two separate input events.
- Ball spawning. When goal occurs, ball de-spawns and respawns for next round. This logic is written in level script.
- Goals as in table tennis. When ball misses any racket and hits an area on the left or right edge of screen, it is a goal for the opposite team.
- Score updating for both the players. GUI labels are updated for scores.
