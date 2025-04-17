=== day_3_frank ===
# BACKGROUND: images/Apartment.PNG
You think about what Frank said to you yesterday, about how he said that he needed your help with some experimentation and research.

<i>I'm not really sure how much help I'm gonna be to him. Honestly, I'm not even sure I understand what's really going on, or if I want to get involved in their mess.</i>

You look around at the empty apartment, listening to the couple next door engage in their endless fight. *But I guess I've got nothing better to do.*

* [You pick up your bag and leave the apartment.]

# BACKGROUND: images/PowerPlant.PNG
- You arrive at the front door of Tempus Inc. You try to enter the front door, but it's locked. You notice a PA speaker with a little button underneath. You push the button and Frank lets you inside and down into the lab.

* You start working.

- "Alright, well let's get to work. I've got a lot of data from the Cascade's primary time flux capacitor, and there's some anomalies. I'd like your help with running some diagnostics."

"Yeah, of course. I'll do my best to help out with that. What do we do first?"

"The first thing we need to look at are the data logs." He walks you over to a work station with a technical readout of the machine. "This information will help us run better diagnostics on the Cascade, so look closely."

Frank sits down at the other end of the workstation to analyze the readout.

* [You look closely at the data displayed.]

- (dataReadout) Looking at the energy graph throughout the machine, you find significant energy drops that could lead to a recurring issue within the machine.

There's also some consistent, but low-level noise in the data from the readout. There may be some potential environmental factors that affects the data.

You could try to adjust the data logs manually to correct for the anomalies, but that's risky even for an experienced technician.

The anomalies on the readout look similar to a different readout from another diagnostic. Maybe all of these anomalies are linked.

When you have enough data to run the diagnostics with, you can proceed with the tests.

* [Explore energy drops.]
    ~ frank_relationship += 1
    You focus on the energy spikes, cross-referencing it with previous data. "I've noticed some unusual drops in the energy readings happening at regular intervals."
    Frank analyzes the energy graphs. "Hm, that's interesting Jace. These voltage drops could mean a power failure in one of our components. We'll keep that in mind when running the diagnostics."
    
        * * [You return to the data.] -> dataReadout

* [Investigate environmental noise.]
    ~ frank_relationship += 1
    You focus on the background noise and try to isolate its potential sources. "I’ve detected some consistent background noise in the data. It’s subtle but present."
    "It’s possible that the noise is just background interference. We should keep an eye on it, though."
    
        * * [You return to the data.] -> dataReadout

* [Manually adjust data logs.]
    ~ frank_relationship -=1
    You alter the parameters in order to manually factor out the anomalies from the data.
    Suddenly, Frank starts to look confused at his desk. "Jace, what did you do just now?"
    "I manually adjusted the parameters to factor out the anomalies."
    "Jace, those parameters were important to the good data too. Now some of our data is corrupted."
    "Oh, I'm sorry. I didn't know that."
    Frank looks at you, disappointed. "Just try to be more careful."
    
    * * [You return to the data.] -> dataReadout

* [Analyze prior anomalies.]
    ~ frank_relationship += 1
    You investigate the anomalies from previous readouts and a clear pattern can be seen between each set of anomalies. This could help you find the source of the anomalies.
    "There's a pattern in the anomalies that matches a previous incident. I think we're onto something here."
    Frank gets up from his chair and looks at your screen. "You're right. It's been there the whole time. That's a good catch, Jace. If this pattern holds, it might explain where exactly the anomalies are coming from. This will help us analyze the diagnostics data".
    
        * * [You return to the data.] -> dataReadout

* [Run diagnostics.]
    
- You suggest running the diagnostics based on the data you have.
Frank starts up the diagnostic software, and the machine starts to hum softly as the process runs through.
As the proccess runs, you hear the constant humming of the machine start and stop, and some faint sparks near one of the control modules.
What could be the cause of that?

* [The voltage drops.]
    ~ frank_relationship += 2
    "I think the sudden voltage drops might indicate a failing component or power issue. We should check for component failures or a power instability"
    "Good idea, Jace. Let’s see if we can pinpoint the faulty component." Frank adjusts the diagnostics to run through each primary component module. "Aha! I've found it. There's a power imbalance in the primary flux capacitor. It's drawing too much power. Great work, Jace!"
        * * [Resume diagnostics.]
        - -

* [The environmental noise.]
    ~ frank_relationship -= 2
    Frank runs through the diagnostics with your proposal, but nothing is turning up. "I'm not finding anything here, Jace."
    "I thought that might've been the answer. I guess I should've paid more attention."
    "We have to be more accurate with this, Jace. We can't afford mistakes."
        * * [Resume diagnostics.]
        - -

* [The anomaly pattern.]
        ~ frank_relationship -= 2
    Frank runs through the diagnostics with your proposal, but nothing is turning up. "I'm not finding anything here, Jace."
    "I thought that might've been the answer. I guess I should've paid more attention."
    "We have to be more accurate with this, Jace. We can't afford mistakes."
        * * [Resume diagnostics.]
        - -

- As the diagnostics continue, you notice an inherently flaw in the diagnostic process. You believe you could make the process run much more efficiently, but that would require a drastic adjustment of the diagnostic process while it's running.

* [Perform the adjustment.]
    ~ frank_relationship -= 5
    You type away at the terminal, altering the process' runtime algorithm. But that was a clear mistake. One of the control modules rattled loose from the machine and was sucked up into one of the giant magnetic coils, completely destorying the module and causing damage to the coil before the diagnostic shut itself off.
    Frank jumps up in terror. "Jace! What happened?"
    "I altered the process to make it more efficient."
    "You can't do that in the middle of a process, now the whole system is malfunctioning. That module is gonna have to be replaced now."
    "I'm really sorry, Doctor. I didn't mean to screw anything up."
    He looks at you painfully, like he's trying not to be upset at you. "Just... go home, Jace. I appreciate the help, but I'll take it from here."
    * * [You leave the lab and head home.]

* [Let the diagnostics run.]
    The diagnostics finish running and another readout is displayed at the workstation.
    Frank analyzes the data. "It would appear that the primary flux capacitor needs working on. It's drawing way too much power and is causing some fluctuations." He looks at you fondly. "I really appreciate the help here, Jace. Go on home, I can fix the capcitor myself."
    "I'm happy to help out, Doctor." You smile back at him, proud of the the work that you've done.
    * * [You leave the lab and head home.]

-

-> day_3