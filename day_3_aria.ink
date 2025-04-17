VAR places_searched = 0
VAR has_photo = false
VAR has_gun = false
VAR num_parts = 0
VAR jace_hides = false
VAR stolen = false
VAR day_3_choices = 0

=== day_3 ===

#BACKGROUND: images/Apartment.PNG
{day_3_choices < 2:
    ~ day_3_choices += 1
Jace wakes up after sleeping barely 3 hours. Sleeping with a constant sunset is not the easiest. Jace decides what to do today.
* [Go with Aria for a supply run] -> day_3_aria_intro
* [Go with Frank to research] -> day_3_frank
* [Go with Draven to mess with the city] -> day_3_draven
    - else: 
        ->->
}


=== day_3_aria_intro ===
#BACKGROUND: images/City.PNG
Heading down the street after multiple turns and potentially getting lost along the way, you found Aria who appears to be a little impatient.
Aria: "There you are! Took you long enough."
* [Sorry, I got lost on the way.]
    ~ frank_relationship += 1
    Jace: "Sorry, I got lost on the way. I ended up taking a right a few streets back instead of a left.
    Aria: "You're fine, glad that you made it safely. It's not like you're late.
    * * [That's good, didn't want to miss a chance to hang out.]
        Jace: "That's good, didn't want to miss a chance to hang out and collect scraps. Hopefully we find everything for Frank."
        Aria: "That's the spirit. If we get this done fast enough maybe we have time to get some food. Since you like burgers so much I know a great place."
        Jace: "Nice, I would definitely like some food after this. My fridge is still empty."
    * * [Yeah, trying to not be late anymore.]
        Jace: "Yeah, trying to not be late anymore. Working on that."
        Aria: "Well that's a good habit to build up. Wouldn't want someone to be late, especially when it's hard to even know what time it is.
        Jace: "With every clock not moving forward, I can't even sleep peacefully without even knowing if I overslept."
        Aria: "Well, you'll get used to it. Not the worse thing that's happened."
* [I've been here for 3 days!]
    Jace: "I've been here for 3 days! What do you expect from me to just have the whole city in my head?"
    Aria: "Alright my bad, I was just joking. I wasn't trying to get you all riled up."
    * * [Sorry, everything just seems to be moving fast.]
        Jace: "Sorry, everything just seems to be moving fast. Even when this city doesn't.
        Aria: "It's okay, it's a big change especially since all of this is happening."
        Jace: "It's a bit daunting, hopefully I do get used to it."
        Aria: "You will, but hopefully we can fix everything soon."
    * * [You could be a bit more supportive.]
        Jace: "Yeah, you could be a bit more supportive. All of this happening at once is not easy to deal with.
        Aria: "Okay but we all have to deal with this. Frank and I have been here for a lot longer than you. It's now our lives and it's gonna be yours too!"
        * * * [Sorry, for lashing out]
            Jace: "Sorry, for lashing out. I wasn't trying to be rude."
            Aria sighs under her breath, still a little frustrated but calmed down.
            Aria: "It's okay."
        * * * [(Say Nothing)]
            ~ frank_relationship -= 1
            Aria remains a little frustrated with you.
* [(Say nothing)]
    Jace: ...
    Aria: "Not much of a talker I guess. Hopefully this run won't be too boring."


- Aria: "Come on let's go. We still got a couple more things to gather for Frank before the machine is complete. We don't much time left so we have to move fast."
-> day_3_aria_city

=== day_3_aria_city ===
Aria stands in front as the leader of the expedition. Your eyes scan the towering skyscrapers with their glass facades shimmering under the sunlight. Neon signs flash advertisements for the latest gadgets. The newest TempI XXV is set to launch in a few days, but the day will never change. The streets are a blend of old and new, with cobblestone pathways juxtaposed against holographic billboards. The autonomous vehicles stand still on the roads, with the passengers in the cars listening to music that is not playing. The city feels abandoned and desolate, even with the aimless wandering the streets.
Aria: "Okay, we're here."
You turn your head and arrive at a once-bustling building, now abandoned and left to the elements. The exterior is different to the skyscrapers you witnessed initially. Rusting metal and broken glass windows, vines and other foliage reclaimed the structure.
* [What is this place?]
    Jace: "What is this place?"
    Aria: "It's the department store that Frank frequently visited for parts. Whenever he had any ideas and wanted to make something, he would always come here first since the parts were cheap."
    Jace: "How long has this store been here?"
    Aria: "Almost as long as he was alive, maybe longer. Though that's what he told me at least."
    * * [It looks so beat up and dreadful.]
        Jace: "It looks so beat up and dreadful."
        Aria: "You wouldn't understand, you've only been here for what, 3 days?"
        Jace: "You're right but I'm seeing it now and that's what I see."
        Aria turns her head away from you, looking up at the broken down LED sign. A slight frown is all you could see.
    * * [It looked like a nice place.]
        Jace: "It looked like a nice place when it was still standing."
        Aria: "It really was. I remember the times that I came by, the owner would hand me a little candy pop if I helped Frank out with carrying the extra parts. I was pretty much an extra set of hands."
        Jace: "That must have been nice."
        Aria: "It really was."
        Aria heads forward feeling nostalgic of the past.
* [You think there are ghosts?]
    Jace: "You think there are ghosts?"
    Aria: "Are you dumb? Of course there aren't any ghosts.
    * * [Could you hold my hand]
        (You say in a joking voice)
        Jace: Could you hold my hand if there are any ghosts? I get scared.
        Aria: You're so dumb
        Aria looks away to hide her laughter.
    * * [But what if there are?]
        Jace: But what if there are ghosts? I get scared easily.
        Aria: You can fight it off, I believe in you.
        Jace: How am I supposed to fight a ghost?
        Aria: Just give it a one-two.
        Aria turns and looks at the building with a small smile.

* [You're not going to kill me here, right?]
    Jace: "You're not going to kill me here, right?"
    Aria: "Please, it's not like you're of any value."
    Jace: "Ouch."
    
- Aria: "Come on, lets head inside. We don't have much time."
Jace: "How come?"
Aria: "Draven's goons are under surveilance in this area. It's typically hard to do anything because the second they see any of us, they start to chase us out of their turf."
Jace: "Wait so what happens if they find us?"
Aria: "We run."
Jace: "Easier for you now is it."
-> day_3_aria_store

=== day_3_aria_store ===
As you enter, you notice how the department store now lies in decay, its neon signs flickering weakly, hanging on by the thin exposed wires. Dusty shelves sag under the weight of rusted, outdated electronic and mechanical parts, some broken and irrepairable. Broken screens and tangled wires clutter the aisles, while the dim, flickering lights struggle to illuminate the remnants of a technological age long past. The air is thick with the scent of oil and mildew.
Aria: "Alright, here it is, good old Linus Parts and Stuff.
Jace: "What?"
Aria: "That's the name of the store. Guess you couldn't tell because half the words on the sign outside were missing."
Jace: "Maybe I should have taken a guess."
Aria: "Anyways, I'm going to check the backroom this time, I haven't had a chance to check back there but there has to be good stuff. Take this bag and check the main store here to see if there is anything that I might have missed."
Jace: "Will do!"
-> day_3_aria_lobby

=== day_3_aria_lobby ===

// Check if the player is out search turns
// Divert to next story beat
{places_searched >= 2:
    -> day_3_aria_goons
}


* [(Search the display wall)]
    The display wall of the store, once a showcase of cutting-edge technology, now stands as a relic of the past. Broken screens hang haphazardly, their surfaces cracked and covered in dust. Rows of empty hooks and shelves hint at gleaming gadgets that adorned this wall.
    ~ places_searched += 1
    -> day_3_aria_display_wall
* [(Search the front desk)]
    You step towards the front desk, where a layer of grime coats the counter and an old, cracked touch-screen interface sits in idle. You see a faded holographic advertisement cycling through the same outdated deals back when the freeze happened.
    ~ places_searched += 1
    -> day_3_aria_front_desk
    -> DONE
* [(Search the knocked shelves)]
    You crouch beside the toppled shelves, noticing how dust has settled thickly over the scattered electronic parts and broken gadgets. Amid the tangled mess, a few pieces seem to retain a faint glimmer, hinting at once being valuable in their prime.
    ~ places_searched += 1
    -> day_3_aria_shelves


=== day_3_aria_display_wall ===

* [(Check top drawer)]
    You opened the top drawer that you were barely able to reach, using the step stool conveniently placed right next to you, you step up and look insde. Empty.
    -> day_3_aria_display_wall
* [(Check bottom drawer)]
    Stepping to the side you open the bottom drawer hoping to find some parts. Digging through the rummage you found some scraps of metal, along with bolts and wired electronics.
    * * [(Take parts)]
        You grabbed the metal, bolts and electronics and carefully placed them into your bag.
        ~ num_parts += 5
        -> day_3_aria_display_wall
    * * [(Leave)]
        You decided to leave behind the bolts and electronics.
        -> day_3_aria_display_wall
* [(Check cabinet)]
    You take a step back, with both hands on each handle you swing the doors open. Dust immediately flies out as you let out a flurry of coughs.
    Aria: "Are you okay over there?"
    * * [(Yeah, just some dust.)]
        Jace: "Yeah, just some dust."
        Aria: "Just be careful then."
    * * [(Just fought off an army of bats.)]
        Jace: "Just fought off an army of bats, maybe like a dozen of them"
        Aria: "Right and I will rule this city with the power of imagination."
        Jace: "...One can believe."
    - - Turning back and fanning away dust you take a look. Some parts are taped together in an attempt to repair what's already destroyed. A few metallic tools are scattered across the base of the shelf, collecting dust. A metal contraption seems to be taking a bulk of the space, it looks promising. 
    * * [(Take parts)]
        You grabbed parts, tools and contraption and carefully placed them into your bag
        .
        ~ num_parts += 12
        -> day_3_aria_display_wall
    * * [(Leave)]
        You decided to leave behind the parts and the contraption.
        -> day_3_aria_display_wall
+ [(Leave)]
    Jace: "I think I got everything, time to keep looking around."
    -> day_3_aria_lobby
-> day_3_aria_lobby


=== day_3_aria_front_desk ===
* [(Check top drawer)]
    You open the top drawer, filled with scraps and trinkets. A bunch of bolts, electronic plates, and more fill the drawer. The tipped ends aren't very sharp, but just reaching in aimlessly will definitely hurt.
    * * [(Take parts)]
        You grabbed the scraps and trinkets and carefully placed them into your bag.
        ~ num_parts += 4
        -> day_3_aria_front_desk
    * * [(Leave)]
        You decided to leave behind the scraps and trinkets.
        -> day_3_aria_front_desk
* [(Check below table)]
    You reached below the table and felt around to see if there was anything to grab. Your hand felt what looks to be like a handle, and grabs whatever object you found. It was the latest Temp G Pistol. The owner must have not been able to use for self defense when the freeze happened.
        * * [(Take pistol)]
            You grabbed the pistol, hopefully it still works.
            ~ has_gun = true
            -> day_3_aria_front_desk
        * * [(Leave)]
        `   You decided to leave behind the pistol.
            -> day_3_aria_front_desk
    -> day_3_aria_front_desk
* [(Check bottom drawer)]
    You open the bottom drawer, files of random documents including finances and inventory. Looking around you find an item frame with a torn picture. Two men stand with a young girl, a girl that looks just like Aria. A third man is in frame, but only torso down as the head is torn off.
    * * [(Take photo)]
        ~ has_photo = true
        You grabbed the photo frame, thinking it might be important.
        -> day_3_aria_front_desk
    * * [(Leave)]
    `   You decided to leave behind the photo frame.
        -> day_3_aria_front_desk
    -> day_3_aria_front_desk
+ [(Leave)]
    Jace: "I think that's everything, hopefully there is some more stuff."
    -> day_3_aria_lobby


=== day_3_aria_shelves ===
* [(Check first shelf)]
    The first shelf is collapsed onto the second shelf. It will be hard to even check if there is anything left unless you decide to crawl through the cracks.
        * * [(Crawl through)]
            You squeezed right through the cracks, though it was a tight fit, you were able to find a couple of components still working that might be useful.
                * * * [(Take components)]
                    You grabbed the components and carefully placed them inside your bag.
                    ~ num_parts += 8
                    -> day_3_aria_shelves
                * * * [(Leave)]
                    You decided to leave behind the components
                    -> day_3_aria_shelves
        * * [(Leave)]
            You decided it wasn't worth the hassle
            -> day_3_aria_shelves
* [(Check second shelf)]
    You checked the second shelf that was filled with the electronic parts you saw. Thinking something here would be useful, you realized everything was already split in half after the collapse.
        Jace: "Looks like nothing here works"
        -> day_3_aria_shelves
* [(Check third shelf)]
    The third shelf fell flat right onto the floor, making it near difficult to look under without lifting. But before you abandon it you notice a small piece of metal near the edge of the shelf. It was a Tempus Device Driver. It was strong enough to even power various buildings and machines, just like the slot machines back in your old town. Oh the memories.
        * * [(Take driver)]
            You grabbed the Device Driver and carefully placed it in your bag.
            ~ num_parts += 15
            -> day_3_aria_shelves
        * * [(Leave)]
            You decided to leave behind the driver.
            -> day_3_aria_shelves
+ [(Leave)]
    Jace: "I think that's everything, hopefully there is some more stuff."
    -> day_3_aria_lobby

=== day_3_aria_goons ====
As you head back you hear a loud shout in the distance. Loud screeches can be heard in the distance slowly getting closer. Draven's goon, maybe four or five of them carrying bats and hammers are getting closer and heading right over here.
* [(Hide)]
    ~ frank_relationship -= 2
    You decided to hide between the cracks of the shelf. Not wanting to make any noise you held your breath. The goons entered kicking things around without a care in the world. Laughing and making weird noises you never heard before, you kept staying silent.
    Aria: "What's with all the noise out there?"
    Aria steps out of the back room to then be met with a small party of goons.
    Goon: "Well, well, well. Look at who we have here. Fancy seeing a pretty lady like yourself in these parts of town."
    Aria: "Dammit, what do you want."
    Goon: "Oh nothing, we just happen to be stumbling by this dirt hole of a store. Can't believe you still would come to a dump like this."
    Aria: "Don't talk down about this store!"
    Goon: "Looks like we got a fighter here. You really think you have a chance with all of us? I know you're not much of a fighter."
    * * {has_gun == true} [(Step out and point gun)]
        ~ frank_relationship += 2
        ~ draven_relationship -= 2
        Jace: "I'm not too sure on that."
        Goon: "Woah woah woah there man! I don't want no trouble."
        * * * [(Well neither do I.)]
            Jace: "Well neither do I, so I suggest you guys leave right now."
            Goon: "Okay we're leaving, don't want to cause no trouble now."
        * * * [(Better leave right now!)]
            Jace: "You better leave right now! Don't want to do anything risky now do I?"
            Goon: "Yeah we heard you, I still want to leave here with my head intact."
        * * * [(I will shoot!)]
            Jace: "I will shoot! Don't test me now!"
            Goon: "Alright we're leaving! Don't hurt Jimmy over there he might piss himself."
        - - - The goons left very hastily, one even tripping against the uneven tiles of the floor.
        
    * *  [(Step out)]
        ~ frank_relationship -= 1
        ~ draven_relationship -= 1
        Jace: "She isn't alone you know."
        Goon: "Oh look here, we got a big bad guy. You think you can take all of us at once?"
        * * * [You want to find out?]
            Jace: "You want to find out?"
        * * * [Maybe, but you should watch your back.]
            Jace: "Maybe, but you should watch your back."
        - - - Goon: "Alright then, we'll leave you alone this time. Better watch yourself. But watch your back, Draven won't take y'all as lightly as I did."
        The goons left feeling undisturbed, laughing and mocking your remarks.
        Aria: "Nice for you to just pop out randomly."
        * * * [I was just waiting for the right moment.]
            Jace: "I was just waiting for the right moment. You know my heroic entrance."
            Aria: "Sure, you weren't just a little afraid or anything"
            Jace: "Okay, maybe a little."
        * * * [Sorry, I got nervous and forgot to warn you.]
            Jace: "Sorry, I got nervous and forgot to warn you when they were coming in."
            Aria: "It's okay, at least you got my back in the end."
        
    * * [(Continue hiding)]
        ~ frank_relationship -= 1
        Goon: "I can't believe you really came out here alone, what were you doing in that room anyways? Talking to your old pops? You know he's gone."
        Aria: "Shut up! When all of this is over I'm coming to get you first!"
        Goon: "Woah there no need to be so feisty. I think you have your own problems to deal with. Don't end up like your pops now!"
        The goons leave crackling with every step they take, kicking down the depleting door on their way out.
        You step out from the shelves, feeling nervous.
        Aria: "So you were just hiding in there the whole time!"
        * * [Sorry, I froze up.]
            Jace: "Sorry, I froze up."
            Aria: "You froze up? Were you just planning to leave me to deal with them? You didn't even warn me!"
            Jace: "I know. I should have told you that Draven's goons were coming. I got scared and wasn't sure if I had time so I hid."
            Aria: "Don't do this again, we can't afford one of us getting hurt. We have to make it up back to Frank with the supplies."
        * * [What else was I suppose to do?]
            Jace: "What else was I suppose to do? I can't fight them!"
            Aria: "You could have backed me up and not left me to deal with them alone! At least with both of us we have a better chance!"
            Jace: "Our chances were small to begin with, me joining in wasn't going to help!"
            Aria: "It doesn't matter if our chances were small, we are a team! We're suppose to have each other's back. I wouldn't have left you even if I've only known you for 2 days.
            Jace: "Alright I get it, sorry."
            Aria has a disgusted look on your face.
* [(Tell Aria)]
    ~ frank_relationship += 2
    Jace: "Aria! Draven's goons are here, stay inside!"
    Aria: "Really? Shoot alright, you gotta hide yourself!"
    Jace: "Alright, just be safe!"
    * * [(Hide in shelves)]
        You head towards the shelves to hide between them but you were too late.
    * * [(Hide under front desk)]
        You head towards the front desk to hide under but you were too late.
    - - Goon: "Hey now! Don't go hiding away from me! I can see you boy!"
    You stood back up slowly, knowing you got caught.
    Goon: "Well look at who we have here, an unfrozen boy. Now what could a guy like you be in a dump like this?"
    * * [Just looking for some things.]
        Jace: "Just looking for somethings."
        Goon: "Really? In a place like this? The only thing I see is the broken neon sign right next to you, which I'll be taking for myself."
        Jace: "Go ahead, I don't need it."
        Goon: "Haha, you get it."
    * * [It's none of your business.]
        ~ draven_relationship -= 1
        Jace: "It's none of your business now, you should move along."
        Goon: "Oh, we got an attitude right here, you sure you want to be talking like that in front of us?"
        Jace: "I can say whatever I want here."
    * * [(Stay silent)]
        Jace: ...
        Goon: "Not much of a talker are we? Did you pee your pants or something? Hahaha"
    - - Goon: "Well then, I see you got a nice bag of goods. Why don't you hand that over to us and we will be on our merrily way."
    * * [That's not going to happen.]
        Jace: "Sorry, that's not going to happen."
        Goon: "Oh what are you gonna do, fight all of us."
        * * * {num_parts == 0} [There isn't anything in here anyways.]
            ~ draven_relationship -= 1
            Jace: "There isn't anything in here anyways, I just got here as well."
            You show them the empty bag.
            Goon: "Ha, I guess you're right. I told you there isn't anything in this store to begin with, you're wasting your time."
            Goon: "We'll leave now since you seem to just be wasting our time, see yah loser."
            The goons left, laughing about your empty sack.
        * * * {num_parts > 0} [There isn't much in here anyways.]
            ~ draven_relationship += 1
            Jace: "There isn't much in here anyways, just some scraps that I found laying around. You probably can't do anything with it anyways."
            You show them the bag filled with random objects that you grabbed.
            Goon: "Yeah I guess you're right, there isn't much in here anyways. You're lucky today. I'll leave you alone since you're as worthless as your sack."
            The goons left, laughing about the sack of scraps.
        * * * [You want to find out?]
            ~ frank_relationship += 1
            ~ draven_relationship -= 1
            Jace: "You want to find out? I'll take you all on right now!"
            Goon: "Oh where did all of this confidence come from. Forget it, you're not even worth our time. Just be happy you get spared today."
            The goons left, laughing at the remarks you made.
        - - - Aria steps of from the back room, slowly opening the door.
        Aria: "Well that could have been a lot worse. You okay?"
        Jace: "Yeah I'm alright, luckily they didn't take anything."
        Aria: "That's good. It's alright if you had to give it up, it sounded like there was a lot of them."
        * * * [They weren't that threatening.]
            Jace: "They weren't that threatening anyways, just carrying a few bats and hammers."
            Aria laughs at your joke.
            Aria: "Well glad you're alright."
        * * * [I'll keep note of that.]
        Jace: "I'll keep note of that next time."
        Aria: "Hopefully there won't be a next time."
    * * [Fine, take it and move along.]
        ~ frank_relationship -= 1
        ~ draven_relationship += 1
        ~ num_parts = 0
        ~ stolen = true
        Jace: "Fine, take it and move along."
        Goon: "See was that so hard. Some people just need to learn how to shut up and follow instructions."
        Goon: "Thanks for the stuff, now run along back home before the sunsets."
        The goons leave carrying your sack, laughing at the thought of you.
        Aria steps of from the back room, slowly opening the door.
        Aria: "Well that could have been a lot worse. You okay?"
        Jace: "Yeah I'm alright, but they took the stuff I got."
        Aria: "It's okay, as long as you weren't hurt we can always find more."
    * * {has_gun == true} [(Pull out gun)]
        ~ draven_relationship -= 2
        Jace pulls out the gun he had on.
        Jace: "I don't think that's going to happen."
        Goon: "Woah woah woah! Alright we won't do anything. Just let us leave."
        Jace: "Head on out now before I think twice on sparing you."
        Goon: "Alright we're heading out now!"
        The goons left very hastily, one even tripping against the uneven tiles of the floor.
        Aria steps of from the back room, slowly opening the door.
        Aria: "Well that could have been a lot worse, you okay?"
        Jace: "Yeah I'm doing alright, luckily I found this gun under the front desk."
        Aria: "That's Linus' gun, I remember the first time he was getting robbed, he shot four bullets at the robber and scared them off. Ended up braking a screen, but the robber paid for it."
        Jace: "Well, sounds like the gun and you have been through a lot."
        Aria: "Yeah, time sure does fly."

- Aria: "Anyways, I think we got everything we can. We should leave before they come back."
Jace: "Sounds good."
The two step out of the run down department store. The sunset beam down right where they stood and gave a warm presence on the back of the their heads.

{has_gun == true: -> day_3_aria_has_gun }
{has_photo == true: -> day_3_aria_has_photo }
{has_gun == false: -> day_3_aria_exit }

=== day_3_aria_has_gun ===
Aria: "Hey can I see that gun?"
* [Yeah sure]
    Jace: "Yeah sure, here you go."
* [Are you going to shoot me?]
    Jace: "Are you going to shoot me with it?"
    Aria: "Just give it over."
- You hand Aria the gone. She starts to inspect it from every angle.
Aria: "As I thought, it's broken. Even if you tried to fire it nothing will come out."
Jace: "So if the goons attacked me, I was doomed."
Aria: "Yep, you're lucky they didn't attack. I'll take it from here so you don't have to worry about it.
Jace: "Thanks."
-> day_3_aria_exit

=== day_3_aria_has_photo ===
Jace: "Also I found this photo, I think you might like it."
Aria: "Oh really! Wow I haven't seen this in so long, this must have been taken a decade ago."
Aria: "This right here is Linus, next to him is Frank, and that's me right there!
* [Hope it brought back memories]
    Jace: "I hope it brought back some good memories."
    Aria: "It did, thank you!"
    Aria smiles as she puts the photo away.
* [Who's the other guy?]
    Jace: "Who's the guy that got removed?"
    Aria: "That's... that's Draven."
    Jace: "Really? Why was he here?"
    Aria: "Frank, Linus, and Draven used to be close. Draven was one of the head engineers at Tempus Inc. Then, the accident happened and things changed."
    Aria frowned a little as she placed the photo in her bag.
~ frank_relationship += 2
- -> day_3_aria_exit

=== day_3_aria_exit ===
Aria: "Let's take a look at all of our stuff."
{stolen == false: Aria rummages through your sack.}
{
-num_parts >= 20: Aria: "Looks like you got a lot of stuff. This will be useful for Frank"
    ~ frank_relationship += 1
- num_parts >= 10: Aria: "Not bad hopefully this will be enough for Frank.
     ~ frank_relationship += 1
- num_parts > 0: Aria: "Doesn't look like you were able to find much. Hopefully we have enough for Frank so we don't have to go again.
     ~ frank_relationship += 1
- num_parts > 0 && stolen == false: Aria: "You weren't able to find anything? I swore there were things leftover since my last run."
}
Aria: "Alright, that should be it for today, you should head home soon. If you need anything, feel free to find me. Even if you are a bit annoying to deal with."
Jace: "That was rude, but I'll take up that offer."
Aria: "Well, take care."
Jace: "You too."

-> day_3

