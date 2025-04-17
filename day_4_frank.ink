VAR visit_lab = false
VAR silent_to_guard = false
VAR has_flashlight = false
VAR caught_culprit = false
VAR selected_culprit = ""

=== day_4_frank_intro ===
# BACKGROUND: images/PowerPlant.PNG
You head through the front doors and see Frank packing his bags. He swiftly grabs all of his essential equipment before feeling his pockets to check if everything is present.
* [Where you going Frank?]
    Jace: "Where you going Frank? You seem to be pretty busy.   
* [You got a lot of things.]
    Jace: "You got a lot of things there Frank."
    Frank: "Oh you know just the usual."
* [Let me help you with that.]
    ~ frank_relationship += 1
    Jace: "Let me help you with that. Don't want to hurt yourself.
    Frank: "How old do you think I am boy?"
    Jace: "No wait Frank I didn't mean it like--"
    Frank: "I'm just messing with you kid, here take my duffle bag it's a little heavy."
- Frank: "I'm heading to the nearby power plant. Michael the power plant manager says there is something going on which is messing with the energy of the city and even here."
* [I noticed the lights were flickering a lot]
    Jace: "I noticed the lights were flickering a lot when I walked in."
    Frank: "That's what I want to fix most, it's been bothering me."
* [Sounds like a lot of work.]
    Jace: "Sounds like a lot of work. Will you be alright?"
    Frank: "Yeah I'll be alright, not the first time I've done work like this before."
- Frank: "Say why don't you come along and help me out there. An extra pair of hands wouldn't hurt."
* [Yeah I can help!]
    ~ frank_relationship += 1
    Jace: "Yeah I can help!"
    Frank: "Great! Hopefully this will go by quicker. Are you good with your hands?"
    Jace: "I'm good at decision making, in poker."
    Frank: "This may be harder than I thought."
* [I don't know, doesn't seem fun.]
    ~ frank_relationship -= 1
    Jace: "I don't know, doesn't seem fun."
    Frank: "The point isn't for it to be fun, it's to help out the city. Now is not the time to be selfish boy."
    Jace: "Alright alright. I can help."
    Frank: "Good. That should have been your answer from the start."

- Face: "Alright time to head out."
-> day_4_frank_arrive

=== day_4_frank_arrive ===
You drive through the frozen cityscape, the sun still beaming from the same direction. As time goes on, the imposing silhouette of the power plant looms ahead, Its smokestacks eerily still against the twilight sky. The road is lined with dormant streetlights casting elongated shadows that stretch across the quiet streets. The plant's massive cooling towers dominate the horizon.
Frank: "Alright we're here."
* [This place is huge.]
    Jace: "This place is huge."
    Frank: "It's a power plant what do you expect?"
* [I can finally stretch, that ride was long.]
    Jace: "I can finally stretch, that ride was long."
    Frank: "You were asleep for most of it what are you complaining for?"

- Frank: "Anyways, lets head on in."
As you walk up to the entrance alongside Frank, you notice the guard at the side of the entrance. His expression is intense, as if he has seen the worse of time.
Guard: "Hello Frank, nice to see you here. It is not looking too good in there so your arrival is wonderful."
Frank: "Nice to see you're doing well. Hopefully you've had time to rest.
Guard: "Don't worry about me I'll be fine. Now who's this person here."
* [I'm Jace]
    Jace: "I'm Jace. I'm helping out Frank today."
    Guard: "Hello Jace, it's nice to meet you."
* [(Stay Silent)]
    ~ silent_to_guard = true
    ~ frank_relationship -= 1
    Jace: ...
    Frank: "His name is Jace, didn't think he would stay silent but here we are."
    Guard: "You would think a grown up would act a bit more mature."

- Guard: "I'm not too sure what's going on in there but it doesn't seem too good. Hopefully I get to see you walk out soon in one piece.:
Frank: "That's what we all hope during this time. Come on, let's head inside Jace."
Guard: "Good luck to you both."

-> day_4_frank_enter


=== day_4_frank_enter ===
You and Frank enter the power plant. Amidst the humming machinery, the power plant buzzes with a sense of urgency. Engineers and technicians move with purposeful strides, their faces lit by the soft glow of control panels. Rhymthic clanking of tools and the low murmur of conversations fill the air, as the workers tirelessly stride to maintain the plant's operations.
Engineer: "Frank! Good to see you. we got a problem with the cooling system. The temperature is rising and if we don't fix it soon, we risk overheating the entire system."
Frank: "Alright we'll go check it out. Just try to keep everything under control out here alright?"
Engineer: "Sure thing, Except, who is the guy with you?"
* [I'm Jace]
    Jace: "I'm Jace. I'm helping out Frank today."
    Engineer: "Hello Jace, it's nice to meet you."
    {silent_to_guard: Frank: "Oh so now you want to speak."}
    {silent_to_guard: Jace: "Sorry, I was scared of him."}
    {silent_to_guard: Frank chuckles under his breadth}
* [(Stay Silent)]
    ~ frank_relationship -= 1
    Jace: ...
    {silent_to_guard == true: Frank: "You're still not speaking? What is with you."}
    {silent_to_guard == false: Frank: "Why are you quiet all of a sudden? You were fine outside."}

- Frank: "Let's go."
-> day_4_frank_enter_cooling



=== day_4_frank_enter_cooling ===
The cooling system room is a narrow, dimly lit space filled with the hum of machinery. Metal ducts and pipes snake along the walls, leading to large sturdy cooling vents. Each vent has a manual lever marked with bright yellow indicators.
Frank: "Here it is. We better get started. Grab the flashlight in my bag for me."
You grab the flashlight out of Frank's bag. You turn it on, and a bright beam of light shines to see the machinery parts.
* [(Hold on to flashlight)]
    ~ has_flashlight = true
    Jace: "Alright, you take the lead."
    Frank: "Head down this hall with me. Be careful, some of these pipes can be hot."
    
* [(Hand Frank the flashlight)]
    Jace: "Here you go Frank."
    Frank: "Thank you boy. Follow me down this hall. Be careful, some of these pipes can be hot."
- Jace: "Wouldn't this be a safety issue?"
Frank: "Typically you wouldn't be able to touch them, but the limited number of people, time being frozen, and the cooling system malfunctioning, there would be a lot of problems."
Jace: "Sorry, dumb question."
Frank: "It's okay to be curious, that's what makes us grow."
Jace: "You know, I have a question."
Frank: "Now what is it."
* [How long have you been working here?]
    Jace: "How long have you been working here?"
    Frank: "At the power plant or at Tempus Inc.?"
    Jace: "Let's say both."
    Frank: "Well the plant, I've only helped out since the freeze began. As for Tempus Inc., it was my very first job. I've worked there for at least 20 years. I've seen colleagues come and go, been promoted, and I've done a lot more than what I had imagined. A lot of good but, a lot of bad."
    * * [It sounds like fun.]
        Jace: "It sounds like fun. Being around others, working on things. Do what you enjoyed."
        Frank: "You bet it was. I remember working on the newest TempI model, the TempI XIII Plus. Did you know that was when they added holograms to your calls. I made that! It was amazing."
        * * * [Was it a lot of work?]
            Jace: "Was it a lot of work?
            Frank: "Oh, you have no idea. They have been working on that feature since the VII. Even when I started, I could barely get anywhere.
            * * * * [So how did you do it?]
                Jace: "So how did you do it?"
                Frank: "I couldn't. It was nearly impossible for me. But we had help."
            * * * * [But you got it eventually?]
                Jace: "But you managed to do it right?"
                Frank: "Well yes we did do it. But I definitely can't be why."
            - - - - Frank: "There was this man, he came in only a few months after, and he solved it. He was a genius, a talented engineer and an amazing friend of mine."
            Jace: "Really, who was he."
            Frank: "He, he started to change. Started thinking that, what we were doing wasn't worth it. He started to do whatever he wanted for himself and thought less for the whole community. He became different."
            Jace: "Where is he now."
            Frank: "He's doing what he always wanted to do. But it's something I can't accept."
            * * * * [Sorry for asking.]
                Jace: "Sorry for asking, it probably was personal."
                Frank: "Don't worry about it, it's nice to be able to say somethings out loud. Easier if it's just a stranger."
                Frank smiles slightly, but a hint of pain can be seen past it.
            * * * * [Hopefully we can do something.]
                Jace: "Hopefully we can do something, maybe we can influence him."
                Frank: "That's the dream. That is the dream."
                Frank's expression change, becoming serious with the dilemma he is facing.
        * * * [I'm not sure if I can do that.]
            Jace: "I'm not sure if that is something I can do. All that work."
            Frank: "Maybe something like a hologram would be a bit much. But you never need to jump into it immediately like I did."
            Jace: "What should I do then?"
            Frank: "Move at your own pace. Do what you feel comfortable with. Put yourself in a place to learn and grow, that's the best thing to do."
            Jace: "Thanks Frank."
            Frank: "No problem kid, you'll have to learn eventually."
            Jace: "I'm not that young you know."
            Frank: "To me you're still a child."
            Frank chuckles in amusement.
            ~ frank_relationship += 1
    * * [Do you regret anything?]
        Jace: "Do you regret anything?"
        Frank: "No, I don't regret anything I did. Even all the bad things that led up to now I don't regret."
        Jace: "Not even this freeze?"
        Frank: "It's all just a learning experience for me."
        Even during the situation, Frank emits a slight smile of satisfaciton.
* [How long have you know Aria?]
    Jace: "How long have you known Aria?"
    Frank: "Aria? As long as I can remember. I used to babysit her for some extra cash to pay off anything I had. Back then we didn't the TEMaids yet so I had to do it myself."
    * * [Was she a good kid?]
        Jace: "How was she? Was she a good kid.
        {frank_relationship >= 10:
        Frank: "She was a great kid. Always eager to do things. She always tagged along to the department store whenever I needed parts. She was like my own kid with how much I spend time with her."
        Jace: "How did you guys know each other."
        Frank: "Just a family friend that's all. She was shy at first but I think she warmed up eventually."
        ~ frank_relationship += 1
        -else:
        Frank: "I think you're asking a bit too much about Aria. How come?"
        Jace: "I was just curious, that's all."
        Frank: "Sorry, I'm not going to tell you."
        }
    * * [What's the most embarassing thing?]
        Jace: "What's the most embarassing thing that she did as a kid?"
        {frank_relationship >= 10:
        Frank: "Can't think of too much. But when she wanted to make cookies, she got the salt and sugar mixed up."
        Jace: "That's... not good. What did you do?"
        Frank: "I had to take every single bite. I had to throw it away in the back since she likes to check the trash can to see if we threw it away."
        Jace: "Sounds like a lot. It's alright, anything for that girl."
        ~ frank_relationship += 1
        -else:
        Frank: "I think you're asking a bit too much about Aria. How come?"
        Jace: "I was just curious, that's all."
        Frank: "Sorry, I'm not going to tell you."
        }
* [What was it like before the freeze?]
    Jace: "What was it like before the freeze?"
    Frank: "Oh, that was a long time ago. The city was bustling, progress was being made every single day. You might think the city is beautiful now but at night it was a completely different feeling."
    * * [It really is nice now.]
        Jace: "It really is nice now. At least the city froze at sunset."
        Frank: "The only bad thing about it is walking west you have a constant glare."
        * * * [That is true.]
            Jace: "That is true, it can be annoying."
            Frank: "Yes, but it could have been worse."
        * * * [At least you know the direction.]
            Jace: "At least you always know which way is north!"
            Frank: "Haha, I guess you're right."
            ~ frank_relationship += 1
    * * [What was it like at night?]
        Jace: "What was it like at night?"
        Frank: "It was something you had to experience yourself. The neon signs shined bright. You would see the small stores open up in downtown, selling their meals. Everyone was moving, stores were bussling. It was amazing."
        * * * [I really did miss out."]
            Jace: "I really did miss out on a nice life, didn't I?"
            Frank: "It's okay, you have plenty of years to make up for it."
            ~ frank_relationship += 1
        * * * [Well, we'll get back there."]
            Jace: "Well, it will be alright. We will get to normal soon."
            Frank: "Just as you said boy. We'll get there."
            ~ frank_relationship += 1
* [Nevermind]
    Jace: "Nevermind, I forgot what I was saying."
    Frank: "Better not forget what our task is."
    Jace: "Of course not."


- Frank: "Alright we're here. Let's take a look at the system."

-> day_4_frank_cooling

=== day_4_frank_cooling ===
As you and Frank peer into the cooling system, the heat and flickering warning lights create a sense of urgency. Frank's experienced eyes quickly spot the deliberate damage-a cut cooling line and a tampered control panel.
Frank: "This isn't an accident; someone wanted this to happen."
* [Were we sabotage?]
    Jace: "Were we sabotage?"
    Frank: "Most likely, this damage isn't normal. Someone purposely did this."
* [What do you mean?]
    Jace: "What do you mean?"
    Frank: "Someone damaged the cooling line and messed with the control panel. This isn't normal."
* [It's one of Draven's I bet.]
    Jace: "It's one of Draven's I bet."
    Frank: "It probably is, hopefully they're still here."
    
- Frank: "But it looks like they haven't fully escaped."
{has_flashlight:
Frank: "Shine that light over hear for me."
You shine the flashlight towards the cooling system.
-else:
Frank: "Here, look at this spot right here."
Frank shines the flashlight towards the cooling system.
}
A torn fabric of a lab coat remains on the edge of the cooling system.
Frank: "It's a lab coat, it was one of our scientists here at the plant."
Jace: "One of us? Why would they do this?"
Frank: "I'm not sure, but we don't have time to sulk, we have to find them immediately. I'll stay here to try and fix the cooling system, head back to Leo, the guard to round up the scientist."
* [On it.]
    Jace: "Alright, I'm on it. I'll find them in no time."
    Frank: "Be safe out there."
* [Will you be fine alone?]
    Jace: "Will you be fine alone?"
    Frank: "Don't worry about me, I can do this in my sleep."
    Jace: "Okay, good luck."
- -> day_4_frank_gather


=== day_4_frank_gather ===
You sprint toward the main entrance of the facility, quickly opening the front door.
* [We need to gather the scientist!]
    Jace: "We need to gather the scientists now!"
    Leo: "Now what for?"
    Jace: "Someone sabotaged the cooling system, and it looks like a scientist was a little clumsy."
    Leo: "Do you suspect it was one of them?"
    Jace: "Frank does, and I trust him to be smart."
    Leo: "Alright then, lets head back inside."
* [Has anyone left the building?]
    Jace: "Has anyone left the building since the alarm went off?"
    Leo: "No, everyone has been inside."
    Jace: "Is there another exit?"
    Leo: "There are, but there are other guards stationed as well. We have logs of who comes in and out and so far no one has left."
    Jace: "Okay, help me rally the scientists, there seems to be a traitor."
    Leo: "Already then, we'll head back inside."
- You head back inside, along with Leo. Leo gathers everyone including the scientist into the main lobby.
Frank: "Alright those three are the scientists here today. Deborah, Simon, and Junior. Hope you'll figure it out."
Jace: "Thanks, I'll need it."

-> day_4_frank_select

=== day_4_frank_select ===
* [(Question Deborah)]
    You walk towards Deborah, a slighlty older scientist with graying hair and glasses perched on her nose, exudes an air of quiet confidence and wisdom. She remains composed, quickly assessing the situation and remaining calm throughout.
    Jace: "Hello there Deborah."
    Deboarh: "Hello, how do you know my name?"
    Jace: "Leo told me your name. The name is Jace."
    Deborah: "Well hello there, what do you need me for?"
    -> day_4_frank_deborah
* [(Question Simon)]
    You walk towards Simon, a middle-aged man in his early 30s. He was a rugged appearance and a slightly worn look that suggests he has seen his share. He has piercing blue eyes with short, tousled hair giving him a somewhat disheveled, yet approachable demeanor.
    Jace: "Hello Simon, the name's Jace."
    Simon: "How yah doing Jace. What do you need me for I got stuff to do."
    -> day_4_frank_simon
* [(Question Junior)]
    You walk towards Junior, a young man in his early 20s, with an infectious enthusiasm and a bright, inquisitive mind. His youthful energy is palpable and radiates through his fast movements.
    Jace: "Hey there Junior, I'm Jace."
    Junior: "Hi Jace! How are you? Hopefully this alarm will go by soon, we should get Frank here soon he's very talented. He can work this out in just a few seconds. I'm surprised it's not fixed yet. I-"
    Jace: "Alright Junior, I got a few questiosn for you."
    Junior: "Sure, what do you need?"
    -> day_4_frank_junior

* [I think I got everything I need from them.]
    Jace: "I think I got everything I need from them."
    -> day_4_frank_decide


=== day_4_frank_deborah ===
* [What were you doing when the plant malfunctioned?]
    Jace: "What were you doing when the plant malfunctioned?
    Deborah: "I was conducting a scheduled maintenance check on one of the reactors. Everything was in order until the cooling system erupted. You can check my logs and the security footage."
    -> day_4_frank_deborah
* [Who were you with during the day?]
    Jace: "Who were you with during the day?"
    Deborah: "You see that man over there? That's Emerus, one of the engineers working at the reactor. We were just chit-chatting throughout the day. 
    * * [Did you see Simon at all?]
        Jace: "Did you see Simon at all?"
        Deborah: "Oh yes, I had lunch with him. His leg was shaking quite a bit. Maybe it was cold, but I felt fine."
    * * [Did you see Junior at all?]
        Jace: "Did you see Junior at all?
        Deborah: "Oh yes after lunch. He was in the hallway, frantically walking down. But that's normal for him."
    - - -> day_4_frank_deborah
* [Have you noticed anyone acting suspiciously?]
    Jace: "Have you noticed anyone acting suspicious?"
    Deborah: "Oh everyone has been acting up recently. Tina has been eating a lot more. Junior, has been walking quicker than usual. I've been secretly timing how long it takes for him to walk across the lobby. Simon has been near the control room earlier than his shift usually starts. I don't always take him as a hard worker, but maybe today was different. Oh and Marcus has been on his TempI a lot more. It does get boring."
    -> day_4_frank_deborah
    
* [Thank you.]
    Jace: "Thank you Deborah. You take care now."
    Deborah: "Best of luck to you."
    -> day_4_frank_select


=== day_4_frank_simon ===
* [What were you doing when the plant malfunctioned?]
    Jace: "What were you doing when the plant malfunctioned?"
    Simon: "I was tasked to check the system monitors in the control room. I was about to enter until the alarms went off."
    -> day_4_frank_simon
* [Who were you with during the day?]
    Jace: "Who were you with during the day?"
    Simon: "I was working alone for the most part, but I did have lunch with Deborah. After that, I had to handle some routine checks."
    * * [Were you with anyone else?]
        Jace: "Were you with anyone else during the day?"
        Simon: "I did run into one of the engineers before lunch. I think his name was Emil, but he probably doesn't remember."
    * * [Did you see Junior at all?]
        Jace: "Did you see Junior at all?
        Simon: "Also very briefly after lunch. We crossed paths in the hallway. He was walking really fast which to me was odd."
    - - -> day_4_frank_simon
* [Have you noticed anyone acting suspiciously?]
    Jace: "Have you noticed anyone acting suspicious?"
    Simon: "No, not really, I was just minding my own business. Everyone seemed to be doing their jobs as usual. Deborah was very thorough with her maintenance checks. Junior was feeling excited about something though."
    -> day_4_frank_simon

* [Thank you.]
    Jace: "Thank you Simon. Take care now."
    Simon: "Yeah, let's get this done already."
    -> day_4_frank_select
-> day_4_frank_select


=== day_4_frank_junior ===
* [What were you doing when the plant malfunctioned?]
    Jace: "What were you doing when the plant malfunctioned?"
    Junior: "I was working on my proposal for an invention is was making!"
    Jace: "You make stuff? I thought you were a scientist?"
    Junior: "Oh I do a lot of things, gotta keep the mind flowing."
    Jace: "Is that all?"
    Junior: "Well I finished the proposal, I then decided to head towards Frank's office to talk to him."
    Jace: "You know he wasn't here right?"
    Junior: "Oh, no wonder this situation wasn't fixed already. Frank would have fixed it by now."
    Jace: "Yeah well he's working on it so don't worry."
    -> day_4_frank_junior
* [Who were you with during the day?]
    Jace: "Who were you with during the day?"
    Junior: "I was mainly with my team on the floor. We were just doing our routine checks. After that I was alone working on my proposal. And when I went to Frank's office I saw Simon.
    * * [Did you see Deborah?]
        Jace: "Did you see Deborah at all?"
        Junior: "Hmm, maybe. I don't remember. Should I have saw her?"
        Jace: "It's alright, don't worry."
    * * [What was Simon doing?]
        Jace: "Did you see Simon at all?"
        Junior: "Oh I did, just briefly in the hallway. I asked what he was doing, he said he had to fix a mistake he made."
    - - -> day_4_frank_junior
* [Have you noticed anyone acting suspiciously?]
    Jace: "Have you noticed anyone acting suspiciously?"
    Junior: "Not really, everyone seems normal in my eyes. I don't remember seeing Deborah. Maybe she's hiding from us?"
    Jace: "She's over there."
    Junior: "Oh, hi Deborah!"
    Deborah: "Hope you're doing well Junior."
    -> day_4_frank_junior

* [Thank you.]
    Jace: "Thank you Junior. Take care now."
    Junior: "Good luck with your project!"
    -> day_4_frank_select
-> day_4_frank_select


=== day_4_frank_decide ===
Leo: "Are you sure? We really only have time to hold down one of them. We can't keep them all here."
Jace: "I can't make the wrong choice. Frank's working hard and so will I."
Leo: "Alright then, who is it?"
* [It's Deborah]
    ~ selected_culprit = "Deborah"
    Jace: "It's Deborah, her actions don't seem plausible."
    Leo: "Alright then. I'll get her."
    Leo walks toward Deborah and grabs her by the arm.
    Leo: "Hello Deborah, you need to come with me this instant."
    Deborah: "What is the meaning of this?"
    Leo: "We can talk privately, now follow me."
* [It's Simon]
    ~ caught_culprit = true
    ~ selected_culprit = "Simon"
    Jace: "It's Simon, his alibi hasn't lined up with what the others said."
    Leo: "Alright then, I'll get him."
    Leo walks toward Simon and grabs him by the arm.
    Simon: "I'm sorry? What do you think you're doing?"
    Leo: "You'll need to come with me Simon."
    Simon: "For what? You called us in here and now you're taking me away?"
    Leo: "Just follow me please."
    
* [It's Junior]
    ~ selected_culprit = "Junior"
    Jace: "It's Junior, his movements have been spiratic apparently."
    Leo: "Alright then, I'll get him."
    Leo walks toward Junior and grabs him by the arm.
    Leo: "Hey Junior, you need to come with me."
    Junior: "Oh okay, but could I drop off my proposal to Frank first?"
    Leo: "Sorry, no can do. Just come with me first."
    Junior: "Oh, alright."


- As Leo takes {selected_culprit} away, the alarm system turned off. The doors toward the hallway swing open with Frank walking out in a pile of sweat.
Frank: "Alright, I patched up the cooling system and got the control panel back to it's original state, so we should all be good out here. How about you, did you find the culprit?"
* [Yeah, we found them]
    Jace: "Yeah, we found them. They won't be sabotaging us anymore. Leo is taking them right now."
    Frank: "Well that's good to hear now, good for you."
* [I think so]
    Jace: "I think so, what if I'm wrong?"
    Frank: "You need to be confident in yourself. If something like this happens again I'll just come over and fix it like I normally do, haha."
- Frank: "Come on, we're done here. Let's head back."
Jace: "Alright then."
-> day_4_frank_return


=== day_4_frank_return ===
You and Frank arrive back at the laboratory, feeling exhausted you fell deep into the couch. Just then, Frank receives a call and answers.
Frank: "Uh huh... Okay... Alright... Okay take care now."
* [Who was it?]
    Jace: "Who was it?"
    Frank: "It was Leo, he finished talking to {selected_culprit}.
* [Everything good?]
    Jace: "Everything good over there?"
    Frank: "Everything is alright now, I got off the phone with Leo."
- Jace: "What happened?"

{caught_culprit == true : -> day_4_frank_correct }
{caught_culprit == false && selected_culprit == "Deborah": -> day_4_frank_incorrect_deborah }
{caught_culprit == false && selected_culprit == "Junior": -> day_4_frank_incorrect_junior }

=== day_4_frank_correct ===
~ frank_relationship += 3
~ draven_relationship -= 3
Frank: "You were right, It was Simon. His alibi wasn't lining up and his actions were suspicious. He confessed, saying he was working for Draven the past month and was waiting for a time for where everyone was away from the cooling system."
Jace: "That's great! We can run everything like normal then."
Frank: "Good job kid, I knew you could do it."
* [Thanks, it means a lot.]
    Jace: "Thanks, it means a lot."
    Frank: "Don't sweat it kid. You just have to believe in yourself more."
    Jace: "Thanks Frank."
* [Of course I could.]
    Jace: "Of course I could do it, who else could."
    Frank: "Don't set your ego so high kid, Leo and I could have done it a lot faster. We known these people for a long time, even the slightest change we would have seen."
    Jace: "Sorry, I was just making a joke."
    Frank: "I know, I still wanted to give you a reality check."
    

- Frank: "You've been here for a while now Jace. Why don't you head on home and rest for now. We have a long day ahead of us tomorrow and I'll need you well rested."
Jace: "Alright, take care Frank."
Frank: "Have a great day Jace."
->->


=== day_4_frank_incorrect_deborah ===
~ frank_relationship -= 3
~ draven_relationship += 3
Frank: "Deborah wasn't the culprit. You said her alibi wasn't plausible but everything was true. Security cameras, logs, everything was in order. It turned out to be Simon, he was acting suspicious throughout the day. Leo went looking for him, but he was nowhere to be found."
* [I'm sorry. I should have done better.]
    Jace: "I'm sorry, I should have done better."
    Frank: "Don't beat yourself up too hard Jace. This is a new setting for you and you don't have the experience like Leo and I do. You'll get the skills overtime."
    Jace: "But Simon escaped."
    Frank: "We'll be fine, if you asked me he wasn't the brightest one there."
* [Are you sure? It definitely was Barbara.]
    Jace: "Are you sure? It definitely was Barbara I'm sure of it!"
    Frank: "Listen here! I've known Barbara the whole time I've been at the plant. All of her actions were recorded and there wasn't a chance that she pulled of the sabotage. You need to take a step back and observe the whole picture. Take a second and look back on your mistakes and learn from it."
- Frank: "You've been here for a while now Jace. Why don't you head on home and rest for now. We have a long day ahead of us tomorrow and I'll need you well rested."
Jace: "Alright, take care Frank."

->->

=== day_4_frank_incorrect_junior ===
~ frank_relationship -= 3
~ draven_relationship += 3
Frank: "Junior wasn't the culprit. You said his actions were suspicious but that is just how Junior is. He's always on the move, coming up with ideas and constantly working to improve things here and out there."
* [I'm sorry. I should have done better.]
    Jace: "I'm sorry, I should have done better."
    Frank: "Don't beat yourself up too hard Jace. This is a new setting for you and you don't have the experience like Leo and I do. You'll get the skills overtime."
    Jace: "But Simon escaped."
    Frank: "We'll be fine, if you asked me he wasn't the brightest one there."
* [Are you sure? It definitely was Junior.]
    Jace: "Are you sure? It definitely was Junior I'm sure of it!"
    Frank: "Listen here! I've known Junior the whole time I've been at the plant. Yes he is a spiratic kid but he's just passionate in doing what is right. You need to take a step back and observe the whole picture. Take a second and look back on your mistakes and learn from it."
- Frank: "You've been here for a while now Jace. Why don't you head on home and rest for now. We have a long day ahead of us tomorrow and I'll need you well rested."
Jace: "Alright, take care Frank."

->->