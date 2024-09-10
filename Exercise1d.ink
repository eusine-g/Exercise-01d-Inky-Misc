/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night

-> seashore

== seashore ==
You are sitting on the beach. 

It is { advance_time() }


+ [Stroll down the beach] -> beach2
-> DONE

== beach2 ==
This is further down the beach.

It is { advance_time() }
*{ time == 1 } [Pick up some seashells] -> shells
+ [Stroll back up the beach] -> seashore
+ [Continue your stroll] -> beach3

== shells ==
You pick up the shells
-> beach2

== beach3 ==
There are some rocks with a great view of the sky. {time = 0: the sunrise is in view|} 

It is { advance_time() }

+ [Stroll back up the beach] -> beach2
+{ time == 0 } [Stare at the sunrise] -> sun
+{ time == 2 } [Moongaze] -> moon

== sun ==
{The sunrise is beautiful.|A bird flies in front of the sun|You notice how slowly the waves go back and forth|The sunrise is beautiful|The sunrise is beautiful, maybe you should head back}

+ [Wait] -> sun
+ [Stop looking] -> beach3

== moon ==
{The moon is unobstructed by clouds, it's a full moon tonight.|You can hear bugs in the distance|The moonlight illuminates the water, making a beautiful glow|The moon looks beautiful tonight|The moon looks beautiful tonight, maybe you should head back}

+ [Wait] -> moon
+ [Stop looking] -> beach3
-> END

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    

    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }

    ~ return time
    
    
    
