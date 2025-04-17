VAR money = 20
VAR total = 0

=== day_4 ===
# BACKGROUND: images/Apartment.PNG
Jace wakes up after sleeping barely 6 hours. Sleeping with a constant sunset is not the easiest. Jace decides what to do today.
* [Go with Frank to research] -> day_4_frank_intro
* [Go with Draven to mess with the city] -> day_4_draven_enter

=== day_4_draven_enter ===
# BACKGROUND: images/Bar.PNG
You enter the bar once again. It exudes a gritty, worn-out feeling with flickering neon lights casting eerie, multicolored glows on the metallic walls. The once polished surfaces are now scratched and dented. The air is thick with a mix of smoke, engine grease, and the faint hum of outdated, yet functional machinery.
Draven: "Hey there boy. Come over here and sit with us."
Draven is sat at the round table. A few of his goons accompanied him.
* [Okay.]
    Jace: "Alright then."
* [Why should I?]
    Jace: "Why should I?"
    Draven: "What's with the attitude boy? I'm offering a seat and you give me an attitude? Now come over here."
- You head towards the table and sat down next to his goons. The give you a snark as you sat down.
Draven: "Now that you're here why don't we play some games now shall we? Wanna play some poker."
* [I'm actually not that good.]
    Jace: "I'm actually not that good."
    Draven: "So all this time you waste your life, you never got good at poker? At least do something right."
* [Why not something else?]
    Jace: "Why don't we play something else? Don't want to take all of your money away."

- Frank: "How about we play some blackjack then? Should be an easy enough game for you? We'll just bet $5 every game so that you don't have to go home hungry."
Jace: "Sounds good with me, let's start."

-> day_4_draven_round1

=== day_4_draven_round1 ===
Draven passes out the cards, in your hand you see a 4 and 7. Draven is only showing an 8 right now.
* [Hit]
    ~ money += 5
    Jace: "Hit."
    Draven hands you a 10.
    Draven: "Wow wow wow, lucky you."
    Draven continues for the others, many of them busting. He flips over his card and it's a 10, holding at 18.
    Draven: "Look at you Jace, the only one smart enough really."
    Goon: "We aren't that dumb."
    Draven: "Quiet".
* [Stay]
    ~ money -= 5
    Jace: "Stay."
    Draven: "Really, you must be an idiot."
    Draven continues for the others, many of them busting.
    He flips over his card and it's a 10, holding at 18.
    Draven: "Well, you're just as dumb as the rest of the rot here."
    Goon: "Don't compare us to this slug."
    Draven: "Quiet."
    
    
- Draven: "On to the next round?"
* [What did you do before all of this?]
    Jace: "What did you do before all of this?
    Draven: "Before the freeze? Let's say I was doing a bunch of boring work that wasn't fulfilling. Why do you care so much?"
    Jace: "I'm just curious."
    Draven: "Curiosity killed the cat, you know. But fine, I was a head engineer at 
    Tempus Inc. It was tedious, tiring, non fulfilling. It just was a pain. Frank was a problem as well, we just had different ideas."
    * * [What kind of different ideas?]
        Jace: "What kind of different ideas?]
        Draven: "Frank was all about following every little rule and procedure. Me? I saw something he couldn't. Sometimes you have to break a few rules to make progress. He didn't get that."
    * * [What do you think of Frank?]
        Jace: "What do you think of Frank?"
        Draven: "He's just stuck up with whatever is deemed right for everyone. He's persistent, flat, and just sucked the life out of everything I did."
* [Do you ever get tired of doing nothing?]
    Jace: "Do you ever get tired of doing nothing?"
    Draven: "Doing nothing? What do you mean? I'm playing blackjack right now! That's doing something. What's your problem?"
    Jace: "I was just wondering, that's all."
    Draven: "I am free from all of my problems. I can play cards, drink, break a few things and nothing can stop me! Who wouldn't want that?"
    * * [That does sound like a lot of fun.]
        Jace: "You know that does sound like a lot of fun."
        Draven: "See, now you get it."
         ~ draven_relationship += 1
    * * [Sounds boring.]
        Jace: "That just sounds boring after a while. Doing the same thing over and over again."
        Draven: "You wouldn't understand. You haven't been stuck in a dead end job for so long. This freedom, is liberating."
         ~ draven_relationship -= 1
    
- Jace: "Alright, we can start the next one."
Draven: "You're not the leader of this group, I am. Now lets start the next round."

-> day_4_draven_round2

=== day_4_draven_round2 ===
Draven passes out the cards, in your hand you see a 5 and a 6. Draven is showing a Queen.
* [Hit]
    Jace: "Hit."
    Draven hands you a King
    Draven continues for the others. Some of them manage to stay, but most bust. You smile, but that fades as you notice the ace by Draven also on the table. 
    Draven: "Lucky draw, huh?" 
* [Stay] 
    ~ money -= 5 
    Jace: "Stay." 
    Draven: "You sure? Alright then." 
    Draven continues for the others. A couple manage to stay, while others bust. He flips over his card and it's a 7, holding at 17. 
    Draven: "Looks like you're just as unlucky as you look."

- Draven: "Alright, next round."

* [How did you handle the freeze?]
    Jace: "How did you handle the freeze, you know when it started?"
    Draven: "You sure do like to ask questions now don't you. The freeze, it felt like yesterday when it happened."
    Goon: "Well it's still the same day."
    Draven: "Shut up or I'll dunk you in the fish tank over there."
    Goon: ...
    Draven: "It was shocking. The sun never set. Almost half the lab changed. All the colleagues I worked with, even if I hated them all, I pitied them. But it was a chance. A chance for me to leave it all behind. I saw it as an opportunity rather than a disaster."
    * * [You didn't try to fix things?]
        Jace: "You didn't try to fix things?
        Draven: "Fix things? Why would I? If I fixed it, I would have to go back to my job that I despised."
    * * [You just left Frank?]
        Jace: "You just left Frank?"
        Draven: "Of course I did. He wanted to fix it, I wanted to keep it. I just gave him a big kick in the wrong direction and left."
* [Did you have any regrets?]
    Jace: "Did you have any regrets?"
    Draven: "Regrets? Regrets for what? Leaving Frank? Leaving the company? Being free? I regret nothing."
        * * [What about the people?]
            Jace: "What about the people you left behind?"
            Draven: "What about them, they did nothing for me anyways."
        * * [What about your family?]
            Jace: "What about your family?"
            Draven: "They don't care, I haven't seen them in a long time anyways."

 ~ draven_relationship += 1
- Jace: "Okay, we can play another game."
    
-> day_4_draven_round3



=== day_4_draven_round3 ===
Draven passes out the cards, in your hand you see a Jack and a 3. Draven is showing a 7.

* [Hit] 
    ~ money -= 5 
    Jace: "Hit." Draven hands you a 9. 
    Draven: "Now we're talking!" 
    Draven continues for the others, with varied results. He flips over his card and it's a 10, holding at 16. 
    Draven: "Well, well, well, looks like someone got lucky. And that someone is me!"

*[Stay]
    ~ money -= 5 
    Jace: "Stay." 
    Draven: "Playing it safe, I see." Draven continues for the others, and some of them manage to stay, while others bust. 
    He flips over his card and it's a 10, holding at 16. Draven: "Playing it safe didn't work out for you, did it?"

- Draven: "Alright, y'all are about to make me rich again. Let's start the next round."
* [What happened with you and Frank?]
    Jace: "What happened with you and Frank?"
    Draven: "You really do talk too much. Frank and I separated. He wanted to fix the city but I had no intentions to do so. When the city froze, I took some parts of the machine and left him to figure out how to fix the city on his own."
    * * [So you just abandoned him?]
        Jace: "So you just abandoned him?"
        Draven: "Abandoned? I call it, seizing an opportunity. Frank was attached to his ideas of doing everything for everyone. But that just held him back, and I wasn't going to join him."
    * * [What parts did you take?]
        Jace: "What parts did you take?]
        Draven: "You're to dumb to even understand what it was. These fools around you definitely don't know, why would I tell you."
        Jace: "I'm more alive than them I guess."
        Draven: "Try pushing your luck, it'll never happen."
* [Do you think Frank can fix the city?]
    Jace: "Do you think Frank can fix the city?"
    Draven: "What are you blabbering about? Why do you care so much?"
    Jace: "But what if he does? Wouldn't that go against everything you worked for."
    Draven: "I have parts that he needs and will never reach. It'll be impossible. This life I live right now will be until the day I die."

- Jace: "Alright, sorry for asking we can start playing again."
Draven: "Yeah, you really do talk too much."
 ~ draven_relationship += 1
-> day_4_draven_round4

=== day_4_draven_round4 ===
Draven passes out the cards, in your hand you see an 8 and a 7. Draven is showing a 9.
* [Hit]
    Jace: "Hit."
    Draven hands you a 2.
    Draven: "Not bad, but that still isn't a good enough hand.
    * * [Hit]
        ~ money += 5
        Jace: "Hit."
        Draven: "You sure you want to do that?"
        Jace: "I trust my instincts."
        Draven: "Alright then."
        Draven hands you a 3.
        Draven: "Well god damn. You really go lucky there. That's 20."
        Draven continues for the others. Most of them ended up busting. He flips over his card and it's a 10, holding at 19.
        Draven: "You really got lucky there you know that?"
        Jace: "I wouldn't call it luck."
    
    * * [Stay]
        ~ money -= 5
        Jace: "Stay."
        Draven: "Yeah, that's the right call."
        Draven continues for the others. Most of them ended up busting. He flips over his card and it's a 10, holding at 19.
        Draven: "And when I said that's the right call Jace. I meant me! Haha!"
* [Stay]
    ~ money -= 5
    Jace: "Stay."
    Draven: "You really staying at 15? Alright, I guess you want me to bust then."
    Draven continues for the others, most failing and losing even more money. He flips over his card and it's a 10, holding at 19.
    Draven: "You should have taken the chance there boy."
    
- Draven: "Let's go again, later we can get some drinks at the bar. Marty is paying.
Goon: "Why me? I lost every round so far?"
Draven: "Suck it up chump, let's get this rolling."

* [Do you ever think about the city you left behind?]
* [Was there anything you wish you could change?]
- Jace: "Hey Draven, I'm just-"
Draven: "Alright that's it! I've had it with your constant questions. Boys, get some drinks from the bar. I'm taking a step out."
Draven heads out the front door, the doors open wide until a forceful stop from which to door reaches the apex. The goons give you a disgruntled look before heading towards the bar.
* [(Help at bar.)]
    You head over to the bar to ease away from Draven.
    Goon: "No, don't come near us. Go over to Draven and cause some more problems for us will yah?"
    Jace: "Alright, my bad."
* [(Head to Draven.)]
- -> day_4_draven_outside



=== day_4_draven_outside ===
# BACKGROUND: images/City.PNG
You step outside to see Draven, sitting at the foot of the steps. The smell of cigarettes encompases the atmosphere as it traces back to Draven's right hand.
Draven: "What do you want kid? You got more questions?"
Jace: "Yeah, just one more if you don't mind."
* [Do you ever think abou the city you left behind?]
    Jace: "Do you ever think about the city you left behind?"
    Draven: "Think about it?"
    Draven stays silent, staring into the distant buildings, caught by the glow of the infinite sunset.
    Draven: "Sometimes. But I made my choice. I wanted to live life on my own terms. The city was always going to be there, frozen or not."
    * * [So you don't regret it?]
        Jace: "So you don't regret it?"
        Draven: "Regret? No. Life is too short for regrets. I did what I had to do, and I've never looked back on my choice."
        Jace: "Not even a little?"
        Draven lets out a long sigh.
        Draven: "There's no going back now. Sometimes I wonder, but wondering won't change anything."
    * * [You really don't care about the people you left?]
        Jace: "You really don't care about the people you left?"
        Draven: It's not that simple. I care, but I had to prioritize myself for once. I can't get that back in the past, but now I can."
        Jace: "Do you ever feel guilty?"
        Draven: "Guilt is a heavy burden, I've learned to live with my choices, but that doesn't mean I don't feel teh weight of them."
* [Was there anything you wish you could change?]
    Jace: "Was there anything you wish you could change?"
    Draven stays silent, staring into the distant buildings, caught by the glow of the infinite sunset.
    Draven: "If I could change one thing, maybe it would be the way I left things with Frank. I despised his ideas and practices, but we were partners. But sometimes, you have to put yourself first."
    * * [Do you think things could have been different?]
        Jace: "Do you think things could have been different?"
        Draven: "Maybe. If we'd found a way to work together between or ideas and values, maybe it could have worked out. But from knowing Frank, there was no way he would accept my ideas, and the same goes for me.
        Jace: "Did you really have to take those parts?
        Draven: "It was the only way to save my ideas. If I didn't, he would have won."
    * * [Do you miss the partnership?]
        Jace: "Do you miss the partnership?"
        Draven pauses and stays still, thinking about what to say next."
        Draven: "Frank... Frank was a good partner. That's all I'll say."
        

- Draven: "I think it's time for you to leave now. I'm tired of seeing your face today."
Jace: "Alright then, take care."
As you head off, you turn back around to see Draven tossing the cigarette onto the floor, and heading back insde. The door closes quietly, followed by erupt shouting from Draven and his goons.
 ~ draven_relationship += 5

->->









