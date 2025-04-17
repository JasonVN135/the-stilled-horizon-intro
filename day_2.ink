INCLUDE day_3_aria.ink
=== day_2 ===
# BACKGROUND: images/Apartment.PNG

Your eyes open begrudgingly. Your head swimming and thoughts foggy, you roll over onto your side.
* [The clock reads <strong>6:54pm</strong>]

- Your eyes open a little wider.
<i>God, did I really sleep all day?</i>

* [Pick up alarm clock]
    <i>Didn't I set an alarm last night?</i>
    You rub the sleep out of your eyes as you pick up the alarm clock. The holographic read out confirms that an alarm is set.
    <i>Stupid thing must be broken</i>
    -> standup

* [Stand up]
-> standup

- (standup) You stand up from your sleeping bag and look around your apartment.
* [Look around the apartment.]

- (apartment)
# CLEAR
The tinted out windows let a soft orange light down onto the dusty floor. The kitchen can be seen on the other side of the room. A TV display is mounted onto the wall next to the kitchen. Beside your bed is a door with a mirror on it leading to the bathroom.
* [Look out of the window.]
    You walk over to the tinted out windows. You slide the dial on the wall next to the window to lighten the tint. The sky is again filled with low clouds and vibrant hues, similar to last night. The striking silhouette of the Lumenar skyline shines before you.
    
    * * [<i>I could get used to a view like this.</i>]
    -> apartment
* [Go to the kitchen]
    The kitchen's autolight kicks on as you walk through the entry way. The stovetop is dusty and the sink has a small crack in it. The fridge hisses as you open up the door, its neon light illuminating empty shelves.
    * * [<i>I suppose I'll need to shop for groceries eventually.</i>]
        -> apartment
    * * [<i>I need to stock up on some beer. It's not a home without some beer.</i>]
        -> apartment
* [Stand in front of the mirror.]
    You stand in front of the full length mirror on the back of the bathroom door, staring at the ragged body of a young man. His hair is disheveled and his clothes are old. He stares back at you.
    * * [<i>Handsome as always</i>]
        -> apartment
    * * [<i>Maybe I should cut my hair.</i>]
        -> apartment
    * * [<i>Yikes.</i>]
        -> apartment
* [Turn on the TV.]
    You look at the TV mount on the wall and speak.
    "TV."
    The mount lights up as a holographic display crackles into view in front of it. Nothing but neon snow fills the display.
    * * <i>Great, I'll have to get someone to fix the TV.</i>
        -> apartment
* [Leave apartment.]

- As you approach the apartment door, you zip up your backpack lying by the door and sling it over your shoulder. 
You place your hand on the door and it slides open. You walk out into the hallway and head towards the elevator. The door closes and locks behind you as you walk away. The apartment complex's restaurant down on the 1st floor should have some decent food for you to eat. 
You hear the couple in the room next to yours shouting again.

* [Listen in.]
    {
        - did_listen_neighbor == true:
        <i>What are they arguing about now?</i>
        "It looks better when it's next to the pepper."
        "Why is the pepper <strong>also</strong> in the drawer!?"
        <i>God, the same argument again? Can't they move on from the salt already?</i>
        - else:
        <i>These two must argue a lot</i>
        "It looks better when it's next to the pepper."
        "Why is the pepper <strong>also</strong> in the drawer!?"
    }
    * * [You decide you heard enough.]
    -> walkBy

* [Walk by.] -> walkBy

- (walkBy) You head into the elevator at the end of the hall. You press "1" as the doors slide shut.

The elevator stops on floor 3. The doors open up to reveal a little girl desperately clutching a leash. She darts into the elevator, out of breath. Her small pomeranian follows her. This is the same young girl you met yesterday.

* "That's a cute dog."
    The girl continues to stand there, impatiently waiting for the doors to open up. She doesn't even look your way.
    * * [<i>I guess she's busy.</i>] -> leaveElevator
* [Stay silent.] -> leaveElevator

- (leaveElevator) The elevator stops on the ground floor and the little girl runs out of the door with an excited squeal, dragging her poor dog behind her. You follow behind her as you pass by a woman talking on her phone.
You see the same receptionist sitting alone at her desk. Her eyes seem even heavier. As you walk by towards the restaurant, she chirps up in a cheery voice: "Good evening! How can I help you?"
* "I'm just on my way to grab some food."

- "Alright, can I have your name?"

<i>My name? Doesn't she remember me?</i>

* "...It's Jace. I moved in yesterday?"

- "Here you go, enjoy your stay!" She holds a blank keycard out in front of her, waiting for you to take it.

* [Take it.]
    You reluctantly take the key from her, not sure what you're going to do with it.
    <i>Thanks?</i>
    As you take the keycard, the cheery smile on her face drops to a glazed stare, her eyes glassy and empty. It's as if months of stress and restlessness were suddenly placed upon her in a singluar moment. You're not even sure if she's fully conscious anymore.
    * * [<i>There is definitely something wrong here.</i>]
    - -
* [Don't take it.]
    You leave the keycad in her hand as you walk away, worried and a little unseasy.
    * * [<i>There is definitely something wrong here.</i>]
    - - 

- <i>These people are acting so strange. It's like it's deja vu. Did something happen here? Am I going crazy?</i>
The grumble of your stomach interrupts your racing thoughts.
<i>Maybe I should eat something first. I'm not thinking clearly.</i>

* [You make your way to the restaurant]

-
~ temp foodType = ""
The food in the restaurant is simple, but there's lots of different options to choose from. They all sound good right now.

* [Italian]
    ~ foodType = "Spaghetti"
* [Mexican]
    ~ foodType = "Soft Tacos"
* [Indian]
    ~ foodType = "Chicken Tikka Masala"
* [Korean]
    ~ foodType = "Kimchi"
* [American]
    ~ foodType = "Cheeseburger"

- You approach the counter and make an order with the cashier for {foodType}. The cashier's smooth, synthetic voice calms your nerves slightly.
"Your order of {foodType} is confirmed. Please pay at the register."
You wave your holo-watch above the register with a confirming ding.
"Thank you, and please be seated. Your food will arrive shortly."

You sit down at an empty table and grab your laptop from your bag. The neon display asks for your password.
* ["p4ssw0rd"]
* ["spicyDude1234"]
* ["c-x2~d(Uo2Q>"]

- The screen in front of you projects into a holographic display that wraps around the front of your head, reacting to your movements. All of the world's information is waiting at your fingertips.
You begin your research into Lumenar, trying to see any current events that could lead to the strange things you see around you. Articles about the artificial weather in the city, increasing crime rates, politics. Nothing interesting. But you can't seem to find anything recent about the city. The stream of information in front of you ends a few months ago. It's almost as if the city stopped existing.
A waiter rolls on by the table and stops, revealing a tray with {foodType} waiting to be grabbed. You take the tray and set it on the table. The waiter chirps and wheels away into the kitchen.

* As you start to eat your food, you open up the most recent article about the city.

- "<strong>TEMPUS INC EXOTIC EXPERIMENT UNDERWAY</strong>"
The article's headline flashes before your eyes. There are passages talking about exotic material extracted from NASA's deep space missions. How they brought the material back here to Earth to be researched. One of those research stations is Tempus Inc, located right here in Lumenar City.
The researchers performing experiments on the exotic material don't exactly know what will happen during their experiments. But they are very eager to get started. 
The head researcher is Dr. Frank Baldwell. You can see a picture of him cross in front of your view. A hardened but kind face, with a short, white beard that connects with the rest of his short hair. A pair of large, neon glasses rests on his face. Most likely some sort of next-gen tech. He wears a long, flowing lab coat over a pale sweater vest and dark pants. <i>He certainly looks like a researcher.</i>
Their first major experiment with the exotic material was supposed to be conducted a couple months ago. The article details the excitement of the researching team, as well as everyone else in the scientific community. <i>Maybe something happened during the experiment that froze all of these people into the same loop over and over again.</i>

* [This is too much for you to handle.]

- <i>I came here to find a new life, find a purpose to pursue. And now I'm stuck in some freak city where everyone is a mindless zombie with no agency?</i>

* <i>Although...</i>

- <i>Maybe a whole city to myself isn't such a bad thing...</i>

* <i>...</i>

- 

* [<i>Where's the nearest bar?</i>] -> day_2_bar


=== day_2_bar ===
# BACKGROUND: images/City.PNG
You make your way to the front of the apartment complex and hail a taxi. Stepping your way inside, the robo-driver asks for a location. You make him take you to the nearest bar in town.
During the ride, you look out of the car's windows. At first, everything seems normal. The people you pass on the street look normal, as if they have places to be in their lives.

* But then you see the glitch.

- All at once, the people on the street stop in their tracks and radiate a neon burst of light before vanishing from the street.
You sit there in silence for a moment, unsure of what exactly you just saw. But not a moment later, the streets are once again filled with light as new pedestrians appear out of thin air, back on the street. They walk down the street as if nothing strange happened.

* [If you were drunk right now, this would make a lot more sense.]

# BACKGROUND: images/Bar.PNG
- After a short ride through the city's streets, you arrive at a small dive bar on the corner of a busy street. The place is half-full of patrons. You open the door and sit down at the end of the bar.
Again, your eyes are hit with neon light as the people in the bar vanish and reappear right in front of you.
You start to feel sick to your stomach, the absurdity of reality starting to set in. You're definitely no stranger to being drunk and you end up seeing weird things all the time. But to see things that would top your drunkest night without even a drop of liquor just doesn't make any sense.

* [You need a beer.]

- You knock on the table to grab the bartender's attention. The tender slides over to your side of the bar.
"Just gimme a beer."
The tender responds in a gruff, synthesized voice. "Comin' up." He spins around and grabs a bottle of beer from a cooled container, simultaneously popping the cap and placing it on a coaster before placing it in front of you. All within a second.

* [You take a sip.]

- You take a sip. The cool liquid settles in your mouth, calming you down slightly. Like a breath of fresh air.
You take another sip. And another.
Before long, the last drops of beer are sliding down your throat.
<i>That really hit the spot.</i>

* [Have another.]
    You knock again and ask for another beer. Another was placed in front of you at lightning speed.
    <i>Maybe this isn't so bad.</i> You pick your head up and look around the bar. Another neon flash as the patrons of the bar reset. <i>There's nobody around to stop me.</i>
    
    * * [Have another.]
        Another beer gets set down in front of you. A drop of cool condesation slides down the side of the glass. You needed this.
        You start to feel warm and fuzzy. As good as the beer was at calming your nerves, you know you can't commit to another one. You know just how drunk you can get, and you're not quite done with this city just yet.
        
        * * * [Pay the tab.] -> payTab
    * * [Pay the tab.] -> payTab

This beer went down smoother than the first.
* [Pay the tab.] -> payTab

- (payTab) You wave your hand over the register at the end of the bar before getting back up. You feel a lot better. Almost as if you're thinking clearer.
<i>This city might not be so bad after all. I don't have to worry about getting a job anymore. I don't have to worry about pleasing people.</i>

You glance outwards at the setting sun, painting the sky in a peaceful orange. <i>I don't even have to worry about missing the view.</i>

* [Let's have some fun.]

- You head to the back of the bar and pass through a set of glass doors. You're met with the sight of a large, dim room, the walls of the room lined with pinball machines and other games. You can see a group of other young adults playing some games in the corner. Every minute or so, they will reset in the corner in a flash of neon light.

* In the center of the room is a large pool table.

- This isn't the holographic pool that you're used to. This is a real pool table. Real billiard balls. Real pool cues.

* [You rack 'em up.]

- You grab a rack and place all of the balls inside, setting the table up for a game.
As you finish setting up, a group of rowdy young men come into the room, laughing and shoving each other around. They walk in and stop when they see you, an incredulous look on their faces.

* "Hey."
    ~ draven_relationship += 1
    A large, rugged young man at the front of the group walks forward and sizes you up.
* "You're not frozen."
    A large, rugged young man at the front of the group speaks up. "<i>You're</i> not frozen!" He stares at you with his mouth slightly open. He walks forward and sizes you up.
* [Say nothing]
    ~ draven_relationship -= 1
    A large, rugged young man at the front of the group walks forward and sizes you up.

- He sees the balls racked up on the pool table and his look of confusion slows turns into a devilish grin. He grabs the pool cue right out of your hands and walks over to the front of the table. "You know how to play?"

* "Um.. a little."
* "I know my way around a pool table."

- He bends down and slams the pool cue into the cue ball, sending it down the length of the table and breaking up the racked balls. He stands up, admiring his shot. "I'm Draven." He extends his hand out to you.

* [Shake it.]
~ draven_relationship += 1
- You shake his hand. "I'm Jace."
"Good to meet you, Jace." He hands you the pool cue, prompting you to take your shot. "You new around here?"
You take a shot before answering.

* "Yeah, I just moved in yesterday."
    The cue ball bounces off of a ball, but it misses the corner pocket.
    "Mm, I see." Draven nods his head thoughtfully. "You know, this isn't exactly a normal city."

    * * He takes the stick from you.
    
* "Maybe, why?"
    The cue ball bounces off of a ball and lands it in a corner pocket.
    "Well, I'm not sure if you noticed, but this isn't a normal city."
    * * He takes the stick from you.

- He lines up a shot with the cue ball and makes it. The other men of Draven's group head over to the other people hanging out by the arcade machines.
"Yeah, I figured that out pretty quickly myself." He looks at you, but you're unsure about what he's thinking. "I take it you know something about it?"
He hands the stick back to you. You prepare to take another shot. "Yeah, I might, but that's not really important. What <i>is</i> important is knowing how to have fun with it."
You make your shot before looking back at him.

* "What do you mean?"

- He glances at you with a wry smile before turning around and heading over to his group. The other guys have singled out a pretty looking woman from her friends, talking with her and laughing. She doesn't look like she enjoys it.
Draven struts right up to them with broadened shoulders and speaks in a mockingly deep voice. "Let me show you how it's done boys." He grabs her face and plants a kiss right on her lips.
She steps back with astonishment, clearly outraged at him. For a moment, it looked like she was going to smack him right across the face, but she glances at his large size and thinks otherwise before storming right out of the room. The other guys start laughing and jeering at her and her friends as they chase after her.

* You don't laugh.

~ draven_relationship -= 1
- Draven turns back at you, an arrogant smirk across his face. "The Draven charm never fails." He takes the stick back from you.
"Looks like it failed to me." Draven looks at you amused before taking another shot. As one of his balls sinks into a pocket, the corner of the room brightens with neon light. The group of friends reappears back at the arcade machine, talking and laughing. The pretty woman with them acts as if nothing ever happened. They've reset.
Draven smirks, still amused at what he did. "Do you know how many times I've done that?" He hands the stick back to you.

* "That's messed up."

~ draven_relationship += 1
- You put the stick down on the table. Draven's arrogant smile turns into a disappointed look. "I guess I need to teach you a thing or two about how to have fun."
You turn away from him and the group and head for the door. He makes one last remark towards you before you leave. "You know where to find me when you remember how to have a good time!"
You walk out into the main room and head towards the front door. But before you leave, you hear a light voice speak up behind you.


* "You're not like them." -> day_2_aria

=== day_2_aria ===

You turn around to see a woman not much older than yourself. She's shorter, but not by much. Her most defining characteristic is her blazing red hair, draping her shoulders and curling down her back.

* "Who are you?"
    
* "You're not like them either."
    "No, I'm not."

- She scrunches up her face and looks deeper into your eyes, almost as if she's studying you. You look into her eyes in response.
<i>They're green.</i>
You turn to face her, but shes walking away. She turns to look at you, and you realize she is waiting for you to follow.
"I'm Aria." She studies you for a bit longer. "Who are you?"
"Jace."
"Hm."
She turns away from you and heads for the door. "Come with me."

* You follow her.
    
# BACKGROUND: images/City.PNG
- She steps out of the door as you follow behind her. Even though she's shorter than you, it takes some effort to keep up with her.
"Where are we going?"
She ignores your question. "How did you get here?"
"I drove in from out of town."
"Really?" She sounds skeptical.
"Yeah, just yesterday."
She looks over at you as you two walk down the street. "Nobody comes in or out of this city."

* [You're not sure of what to say.]

# BACKGROUND: images/PowerPlant.PNG
- After a long, awkward walk, you two finally arrive at an old research facility. The large sign in front of the building reads: "Tempus Inc."
It clicked for you. "Oh, this is where it happened. The experiment."
Aria looks away, ashamed. "Yeah."
She stands there awkwardly for a moment before making her way through the front door.

* [You follow her inside.]

- The station, though a bit run-down and eerily empty, still held an undeniable air of grandeur. The vast, vaulted ceiling, once adorned with intricate murals, now flaked with peeling paint, still soared upwards, a testament to a time of bold ambition. Dust motes danced in the shafts of sunlight piercing the grimy windows, illuminating the deserted platforms and the tracks that stretched into the distance, shimmering like mirages. 
An unsettling silence reigned, broken only by the occasional drip of water from a leaking pipe, echoing through the cavernous space. Despite its current state of neglect, the station retained a haunting beauty, a reminder of a past era of bustling activity and vibrant life.
You follow Aria through the large artium towards the other side and stand by a set of elevators. She pushes the button to bring the elevator upwards.

* "This place is huge."
    "I know. You should've seen it in its prime. It was incredible." Her voice trails off wistfully.
    
    * * "Do you work here?"
        She nods. "I do. I'm an assistant here." She pauses for a moment before correcting herself. "I <i>was</i> an assistant here..."
        
        * * * "Did you like working here?"
            ~ frank_relationship += 1
            "I did. This is the best job I've ever had. I've always felt like I had a real sense of purpose here, like I was really making a difference. Like I was really doing something with my life." You nodded thoughtfully.
            Then she asks you a question:
            
            * * * * "Do you have something like that in your life?"
                "Oh, uhhh..." You were taken aback by her question, unsure of what to really say to her.
                
                * * * * * "Yeah, I've got things to keep my busy."
                    She nods understandingly. "It's good to have a purpose in your life." You nod awkwardly.
                
                * * * * * "Not really, no."
                    "Oh."
                    You and her stand for an awkward moment before she speaks again. "I'm sure you'll find something eventually."
                    "Thanks."
        
        * * * [Say nothing.]
    
    * * [Say nothing.]

* [Say nothing.]

- The elevator arrives.

The doors of the elevator open up to its interior and you follow Aria inside. After a short ride, the doors of the elevator open back up to reveal a small corridor leading to a heavy steel door at the end of the hallway. Aria walks up to the door and places her hand on a black panel built within its rugged metal surface. The door beeps confirmingly and slides open.

* [The view is breaktaking.]

- Gigantic magnets arched across the cavernous chamber, forming a skeletal cage containing a web of intricate circuitry, criss-crossing like crazy. At the heart of this magnificent machine was a shimmering sphere, pulsing with an otherworldly glow. Almost like it's breathing.
The air crackled with static electricity, the silence broken only by the rhythmic hum of the machinery like a heartbeat that vibrated through your bones.

* "This is incredible..."

- You hear a warm voice beside you. "It should have been."
You turn to see a man standing next to you. Middle-aged with short white hair and a beard to match. You were so busy staring at the machine that you didn't realize he walked up next to you.
<i>This is the man from the article.</i> "You're the head researcher, aren't you? Dr. Frank."
He nods and looks at you curiously. "And who exactly are you?"
"I'm Jace."
Aria speaks up from behind you. "He's from the outside, Doctor."
He leans backwards, his brow furrowing. "Huh." His eyes are looking all over you, studying you. You can see his brain working overdrive.

* "Is that somehow significant?"

- Frank speaks as he turns and walks away. "Considering you're the only person in the past 6 months to do so, I would say so." He walks up to a section of the machine that's been disassembled. He returns with some sort of device and holds it up to your face.

* [You back away reflexively.]

- "Whoa, what are you doing?"
"Relax, this won't hurt. It'll only take a moment." He pushes a button on the device and a bright light shines out of the side of it. He waves it over your face first, making you squint in response.
"Huh..." He brings the device lower and scans your arms and chest, too. He walks around you, waving the device all over.
The device lets out a chime as Frank reads the display. "There's absolutely no trace of a temporal abberation."
Aria nods understandingly. "I knew he was important when I saw him. That's why I brought him here."

* "Can someone tell me what's going on?"

- Frank hands Aria the device. "Take this and start a new file, if you would." She takes it and walks off to a work station across the room. He turns back to face you. "How familiar are you with Quantum Metaphysics?"
"Uhh..."
He nods, getting the hint that you have no idea what he's talking about. He pats the side of the machine fondly. "This is a Quantum Cascade. I won't bore you with the details, but do you remember NASA's deep space expeditions a few years back?"

* [You vaguely remember that being a big deal when you were in high school.]
* [You have no idea what he's talking about.]

- "Well, they brought back something we've only ever theorized about." He gestures to the pulasting sphere in the middle of the room. "Exotic material."
You nod, impressed. "Looks important."
"That would be a huge understatement. This is the kind of breakthrough that changes the entire course of humanity's future. The kind of ideas you only see in movies or sci-fi books. Flying cars. Teleporters."
You chime in.

* "Time travel."


- Frank looks at you affirmingly. "Then you already know what we were trying to do here."
"What went wrong?"
He sighs and looks back at the machine. "My equations were wrong. We didn't use enough reactant. Our failsafes malfunctioned." He looks back at you. "We were eager and impatient. We didn't take the right precautions and we left out steps that were too important to forget. Now the city is paying for our negligence."

* I'm sorry.
~ frank_relationship += 1
    "It's ok, son. Science is about making mistakes." Despite his reassurances, you can still hear the regret in his voice. "But we've been working to fix those mistakes."
* You should've been more careful.
~ frank_relationship -= 1
    Frank looks at you shamefully. He knows you're right, and there's not a part of him that wants to admit otherwise. "We've been working to fix our mistakes."

- He turns and walks away from the machine. "And I'd like for you to help us."
You look back at him, confused. "You want my help?"
"You have no obligation to me or this city. You can turn and walk out of this door and never see us again, and I won't judge you for it. But Draven is planning something big in 3 days, and we really need all the help we can get to stop him."

* "You guys know Draven too?

- Frank looks away. "He used to be my partner, my right hand man. He had so much potential, and I had high hopes for him."
"What happened?"
"Some of us wanted to fix our mistakes. The rest didn't see them as mistakes at all." You think back to Draven's kiss with the pretty woman. "He's been sabotaging us ever since the accident, and he's taken plenty of our researchers with him."
He walks you back to the elevators and looks back at you, a small glimmer of hope in his eyes, mixed with a large amount of pity. "Think about it, Jace. I won't pressure you for an answer right now, but you know where to find us if you decide to help."
You look over to the workstation on the other side of the room. Aria is looking back at you.

* "I'll think about it Doctor."

- ->->
