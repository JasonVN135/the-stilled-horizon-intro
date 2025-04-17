
=== pick_ending ===
# BACKGROUND: images/Apartment.PNG

You wake it after a long day feeling exhausted.
{frank_relationship >= 10: Frank and Aria are currently waiting at the lab. They are expecting you to come over and help them with the final planning of the raid.} 
{draven_relationship >= 10: Draven invited you to his party tonight. He's hoping that you will come over and help him break in and set up some of the attractions.} 
{frank_relationship < 10 && draven_relationship < 10: You were never able to develop a close bond with either Frank or Draven. They don't expect you to come over to their place, nor wish for you to show up.}

* {frank_relationship >= 10} [(Go to Frank and Aria)]
    -> epilogue_frank
* {draven_relationship >= 10} [(Go to Draven)]
    -> epilogue_draven
* [(Stay at home)]
    -> epilogue_solo


=== epilogue_frank ===
# BACKGROUND: images/PowerPlant.PNG
You decided to join Frank and Aria in their mission to save the city. Heading to the lab, you find Frank meticulously poring over schematics while Aria prepares the tools and equipment. As you approach, you voice your desire to help, and they welcome you into the operation with a smile. The air is thick with urgency and resolve, a stark contrast to the emptiness of outside.

Together, you finalize the plan: sneak into Draven's place and retrieve the stolen components. Frank's experience and Aria's quick thinking will come in handy for the operation, boosting your confidence. With every detail accounted for, the three of you gather your gear and set out under the cover of night, ready to face the challenges ahead.

The journey is just beginning. You make your way toward Draven's building. The fate of the city rests on your shoulders, and with Frank and Aria by your side you know you're ready for whatever comes next.

To Be Continued.
-> END

    
=== epilogue_draven ===
# BACKGROUND: images/City.PNG
You joined Draven at the party in the apartment he and his goons had broken into. The place, once a symbol of luxury, now thrashed by the haven of indulgence and rebellion. You've chosen to side with him, deciding to keep the city frozen rather than aid Frank and Aria in restoring their home.

As the music blares and the room fills with chaos, you pull Draven aside and reveal Frank and Aria's plan to steal the missing parts needed. Together, you devise a plan to thwart their efforts. An ambush on their group takes place that night, stopping Frank and Aria and ensuring the city remains frozen.

With Frank and Aria out of the picture, you and Draven settle into a routine of decadence. Parties continue, liquor consumed, and buildings thrashed and destroyed. The city outside remains trapped in its still prison, as the sunset beams down forever.

You find yourself slipping back into your old ways, devoid of responsibility or purpose. The freedom you once craved now feels hollow, filled with the same empty pleasure.

Your life becomes a cycle of indulgence and apathy, devoid of direction. The city remains still, its inhabitants thoughtless, while you and Draven bask in the shallow glory of unrestrained freedom. In the end, you realize you've traded a life of purpose for one of pleasure, caught in a self-imposed prison of your own making.

The End.
-> END

=== epilogue_solo ===
# BACKGROUND: images/Apartment.PNG
You decided to go alone. Without visiting either Frank, Aria, or Draven, you remain dormant in the comfort of your home. At first, the solitude feels like a reprieve from the chaos outside. But over time, your life begins to feel dull and monotonous. Each action you take seems to blur into the next, as if you had just done it the previous time you were awake. Then, it feels like you did it just a few hours ago. Before long, it feels like mere minutes.

Your days become a never-ending cycle of repetitive actions. You head to the kitchen to heat up another instant meal, the same meal you've had countless times before. The beep of the microwave is a haunting reminder of the life you're no longer living. You turn to the static TempTV. Its droning hum fills the silence of the room as you stare blankly at the flickering screen. Time loses its meaning as you sit there, eyes glazed over the madness, unable to muster the energy to even change the channel.

You glance at the clock, but its hands seem frozen, much like the city outside. Your brain automatically decides that you've had enough, as you roll over onto your TempI and begin navigating the endless stream of nonsense. The glow comforts you in the chilly room, as you mindlessly binge. None of it registers in your mind.

Days turn into weeks, weeks into months. Your thoughts fade into the background, replaced by a hollow echo of routine. You no longer feel hunger, joy, sorrow, anger—just an empty repetition of the infinite cycle.

You become an Aimless, a shell of your former self. Just like the receptionist, the couple, the kid with the Pomeranian, you no longer remember, and no longer think.

The End.
-> END