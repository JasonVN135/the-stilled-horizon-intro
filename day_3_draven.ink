=== day_3_draven ===
#BACKGROUND: images/Bar.PNG
You've been thinking about heading to the bar again. You had a couple beers yesterday, but you think you could use a couple more. But you've also been thinking about Draven and his goons. You'll probably run into them at the bar.
<i> Honestly, maybe they're right. Maybe I don't really know how to have a good time. I should at least head over and hear what they have to say.</i>
* So you head down to the bar again.

- You walk into the bar, taking in the familiar sight. You sit down at the bar, and order yourself another beer. Before long, you hear a voice behind you.
"Hey, Jace! Just the person I was hoping to see. Come join me! How about we hit the arcade after a couple of drinks?"
"Hey, Draven. I could use a drink or two, but I’m not sure about the arcade. I’ve got a lot on my mind right now."
"Come on, man! The city’s frozen, and there’s not much we can do right now. Let’s enjoy ourselves a bit. Trust me, a night of fun will do you good."

* [Just start off with some drinks.]
    ~ draven_relationship -= 2
    "I appreciate the offer, Draven, but I need to stay focused. Let’s just have a couple of drinks."
    "Suit yourself, but you’re missing out on some good times."
    You and Draven have a couple more drinks at the bar, chatting casually. You can feel the night turning late.
    * * [Head home.]
        ~ draven_relationship -= 1
        "I think I'm just gonna head home."
        "Aw, c'mon man. The night's just getting started. I'm not even buzzed yet."
        "No, I need to head home."
        You walk back home, thinking clearly after only a couple drinks. You get inside your apartment, and lay down on the bed. You can feel sleep tugging at your mind, but your thoughts won't quiet.
        * * * [Think about the future.]
            You think about Frank and Aria and Draven. How you're not quite sure what you want out of your life. You think you should do something productive with it, something important that will make people proud. But maybe Draven is right about things. Maybe you should just relax a bit, and have a little fun.
            * * * * [Go to sleep.] -> day_end
        * * * [Go to sleep.]
        
    * * [Keep talking.]
        ~ draven_relationship += 2
        You keep talking with Draven, chatting about your life. He asks you a question.
        "So what have you been doing here in Lumenar City? Done anything interesting or exciting?"
        * * * [Talk about the project.]
            "Well, I've been thinking about this project that I've been working on. I've met some people and they really need my help with things."
            "Oh really?" You've piqued Draven's interest. "And what project is that?"
            * * * * [Keep it vague.]
                ~ draven_relationship -= 1
                "It's really nothing special. Just a little side job to help find my way in the city."
                "Hm." He seems a little disappointed, as if he was expecting something else. "Well, you can tell me all about it whenever you want."
                "Thanks."
                You notice it's getting late.
                * * * * * [You head home and fall asleep.] -> day_end
            * * * * [Talk about the machine.]
        * * * [Keep it casual.]
            ~ draven_relationship -= 3
            "I've been working over at Tempus Inc. I've even met your old partner, Dr. Frank."
            His face hardens a little. "I take it the old man has been working on the Cascade, then?"
            "Yeah, he's been trying to fix up the city, right the wrongs he's done."
            "Well if I were you, I wouldn't listen to him. He doesn't know what he's doing. That machine is hopeless and he's never gonna fix it. Just stick with me and I'll show you how to really make the most of your time here."
            "I'll keep that in mind."
            You notice it's getting late.
            * * * * * [You head home and fall asleep.] -> day_end

* [Drink a couple rounds.]
    ~ draven_relationship += 2
    "Oh, alright. I'll hang out for a while."
    Draven brightens up. "That's the sprit!" He slams his fist down on the table. "Tender! Bring us some rounds!
    The bartender slides over with a couple bottles of liquor and some shot glasses.
    You toss the liquor back easily. It feels good.
    Draven suggests some more shots.
    * * [More rounds.]
        ~ draven_relationship += 3
        "Keep 'em comin', man!"
        Draven drunkenly slams his fist again against the bar, ordering more and more shots.
        You throw each of them back, one by one. Your face is numb and fuzzy. Draven grabs you by the back and drags the both of you over to the arcade. You almost fall over as you crash through the door.
        Draven turns towards you and shouts into your face, his breath full of alcohol
        "LETS PLAY SOMTHIN!!"
        * * * [Drunk dancing game.]
            You dance so hard you throw up and black out. -> day_end
        * * * [Friendly competitive game.]
            ~ draven_relationship +=2
            You and him find an air hockey table over by the corner and manage to turn it on. The two of you bash the puck all around the table, even managing to send it flying off into the wall. You find it hilarious. Until you get hit in the face with the next and get knocked out.
            
    * * [You've had enough.]
        ~ draven_relationship -= 1
        The shots really hit the spot, but you don't want to lose control of yourself.
        "Nah, let's just head over to the arcade."
        "Aw, ok then."
        You and Draven make your way over to the arcade in the back of the bar. His goons are already in there talking to the same pretty woman as last time.
        Draven nudges your shoulder. "Hey, why don't you try your luck on that pretty lady over there. Maybe you'll even get lucky."
        * * * [Just stick with some more pool.]
            ~ draven_relationship -= 1
            "Nah, man. I can't do that. Let's just stick with some pool."
            "You're missing out man. She's a good kisser." He winks back at you before racking up the balls.
            You and him play pool for a good bit, talking and drinking throughout the night. But you notice it's getting late.
            * * * * [Stay a bit longer.]
                ~ draven_relationship += 2
                You and Draven play more pool and keep drinking throughout the night. At some point you blacked out after drinking so much because you don't even remember making your way back home. But somehow you wake up on top of your sleeping bag with a headache.
                * * * * * [<i>Ouch</i>] -> day_end
            * * * * [Go back home.]
                ~ draven_relationship -= 1
                "It's getting a little late, man. I gotta head back home."
                "Alright, man. I'll see you later."
                "It's been real fun."
                You stumble back home and make your way into your apartment. You crash into your sleeping bag and fall right asleep.
                * * * * * [zzz] -> day_end
        * * * [Flirt with the woman.]
            ~ draven_relationship += 3
            Yeah, alright. I'll go talk to her."
            "Atta boy." Draven grins at you, clearly a little drunk.
            You walk on over to the group of goons surrounding the woman. She seems just as annoyed as last time.
            "My name's Jace," you say to her stupidly.
            She looks at you and rolls her eyes. "Emma."
            She's wearing jeans and a light green top. Her blonde hair tosses to the side when she looks your way. She really is pretty.
            * * * * [Compliment her.]
                ~ draven_relationship += 1
                "You're pretty cute, you know that?" The words just fall out of your mouth without any thought.
                She huffs and storms off, marching right through the arcade door with her friends behind her.
                Draven comes up behind you, laughing. "Hey, it's alright, man. You'll get her next time." He continues laughing.
                You head back to the bar with Draven and keep drinking until you blackout.
                You somehow wake up on top of your sleeping bag with a headache.
                * * * * * [<i>Ouch</i>] -> day_end
            * * * * [Kiss her.]
                ~ draven_relationship += 5
                Without even thinking about it, you fall forward with your face and plant a kiss right on her face, just barely missing her lips.
                She pushes you back, repulsed by you. With Draven, she held back due to his large size. You don't have that advantage.
                * * * * * [She knocks you out.] -> day_end

- (day_end) -> day_3