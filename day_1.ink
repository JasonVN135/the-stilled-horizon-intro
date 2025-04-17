=== day_1
# BACKGROUND: images/City.PNG
You enter the apartment complex and observe the lobby. The air is thick with the advanced air purifiers. The walls are adorned with sleek, minimalist designs and LED accents that gently pulse with a calming blue light. The marble flooring is pristine, reflecting the soft glow of the modern chandeliers hanging above. The floor shined so bright you could even see your own reflection.
-> day_1_lobby

=== day_1_lobby ===
* [Look at fish tank]
    The fish tank is teaming with fish, though lacking in variety. The water is crystal clear, illuminated by built-in lights that change color periodically, casting a glow on the fish as they swim, or at least the few that still do.
    ???: "There are a lot of fish in here. They don't look too well though. This one is even sideways..."
    -> day_1_lobby
* [Look at flowers]
    The flowers stand tall and blooming, their Vibrant colors almost too perfect. Upon a closer look, you realize they are just replicas, synthetic petals indistiguishable from the real thing.
    ???: "These flowers look really nice, too bad their all fake."
    -> day_1_lobby
* [Head to receptionist]
    The receptionist stands behind a sleek, glass counter in a crisp blue uniform. She smiles warmly, but there's a trace of exhaustion in her eyes, the subtle sign of long hours, maybe beyond what is even normal.
    Receptionist: "Good Evening! How can I help you?"
    * * [I'm moving in today, picking up my room key.]
        ???: I'm moving in today, picking up my room key.
        Receptionist: "Alright, can I have your name?"
        Jace: "It's Jace, Jace Fleming."
        Receptionst: "Here you go, enjoy your stay!"
        Jace: "Thank you, have a great day."
    * * [You can give me your number!]
        ???: "You can give me your number!"
        Receptionist: "Alright, can I have your name?"
        Jace: "Oh really! It's Jace Fleming! You know I drove past this really nice billards hall and-:
        Receptionst: "Here you go, enjoy your stay!"
        Jace: "Oh... thank you."
-   You head to the elevator and press the button to call it. The control panel is touch-sensitive, with a holographic display that lights up at your touch. As you wait, a  kid comes out from the side of the hallway, running as fast as any kid would. Alongside her is a small Pomeranian, with it's tiny legs eagerly trying to catch up. As she runs by, she almost collides with an older man in a suit, hist brows showing mild irritation as he grumbles and continues on his way.
    The elevator dings, and the doors slide open with a soft whoosh. Stepping inside, a woman follows closely behind, her fingers dancing over the holographic display of her TempI XXIV, the latest model smartphone. You press the button for the 8th Floor, while she selects the 4th floor.
    Woman: "Just like I was telling you, Cyrus can not be treating you so poorly. How can he just make you pay for the drinks after buying you dinner?!"
    Woman: "So what he spent $300, he can spend another $10 for drinks."
    * [Yeah, Cyrus needs to do better.]
        Jace: "Yeah, Cyrus needs to do better."
        Woman: ...
        Woman: "It's okay, there are plenty of fish in the sea."
        She dismisses you with a glance.
    * [I think you're asking for too much.]
        Jace: "I think you're asking for too much from him."
        Woman: ...
        Woman: "It's okay, there are plenty of fish in the sea."
        She dismisses you with a glance.
    * [(Stay Silent)]
        Woman: ...
        Woman: "It's okay, there are plenty of fish in the sea."
-   Woman: "Maybe not all of them will be that rich, but he wasn't that good-looking anyways."
    The elevator opens on the 4th floor, and the woman exits, still engrossed in her conversation. Her voice fades away as she walks away. The door closes, and the elevator continues its ascent with a smooth hum.
    On reaching the 8th floor, the doors part, and you step out.
    Man: "Where did you put the salt? I swore it was in the cabinet!"
    A faint noise can be heard in the room next to yours.
    * [(Listen)]
        ~ did_listen_neighbor = true
        You press your ear against their door. The cool surface chilling your skin.
        Woman: "I put it where I always do!"
        Man: "Nobody puts it in the drawer, Sharon! You're supposed to put it in the spice rack!"
        Woman: "It looks better when it's next to the pepper."
        Man: "Why is the pepper also in the drawer?"
        You heard enough, you straighten up and head towards your room.
    * [(Go to your room)]
        It was probably best not to listen in.
    - -> day_1_apartment

=== day_1_apartment ===
# BACKGROUND: images/Apartment.PNG
You enter your one bedroom apartment, the air crisp and sterile. The lights automatically turn on as you step insde, casting a soft, ambient glow that highlights the sleek, modern design. Every step echoes slightly in the spacious room, every step heard be the sleek teak wood.
* [Step outside]
    The view outside is breathtaking. The sunset paints the sky in hues of violet, blue, and yellow, each color blending seamlessly into the next. The glass panes of the surrounding skyscrapers reflect the fading light, creating a mesmerizing mosaic that stretches across the cityscape.
    -> leave
* [Look at mirror]
    The mirror stands tall with a few specs of dust in the corners. The filtration system did a good job removing most of the dust. In front stands a man in his mid-20s, average build that hints at a once-atheletic frame, now softened by neglect.
    His dark hair is often tousled and unkempt, falling above weary hazel eyes. His pale skin and stubble a few days past due for a shave, add to his rugged, careless aura. Dressed in worn-out jeans and faded t-shirts, he looks like someone who's been through one too many late-night expeditions.
    -> leave
* [Look at filtration system]
    You glanced around the room, noticing a thin layer of dust, as if the cleaner hasn't been here in weeks. Looking up is the filtration system that kept the room smelling crisp, but struggled to remove all the dust. The brand on the side also cover in dust, Tempus Filtration.
    -> leave

- (leave) This place holds a promise—a new beginning for you, a chance to redefine yourself and leave behind the remnants of a life once wasted.
Exhausted, you decide it's time to rest. You unfurl your sleeping bag and lay it out on the floor, its familiarity providing a small comfort in this otherwise unfamiliar setting. You settle in, your body sinking into the makeshift bed, ready to drift into a much-needed slumber.
* [One Sheep]
    Jace: One sheep
    * * [Two Sheep]
        Jace: Two sheep
        * * * [Three Sheep]
            Jace: Three... sheep
            * * * * [Four Sheep]
                Jace: Fooourrr..... sheeep
                * * * * * [Five Sheep]
                    Jace:.......
                    You fell asleep for what feels like merely a few hours.

- Your eyes open begrundingly

->->
