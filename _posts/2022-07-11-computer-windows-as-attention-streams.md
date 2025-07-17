---
title: "Computer Windows as Attention Streams"
date: 2022-07-11
description: "Thoughts on the desktop experience and taking a more intentional approach to workflows that can further help us track our overall experience."
---

Modern digital systems present extreme fluidity between contexts. **Context, in this case, describes task-specific environments**; in the physical realm, this could correspond to the tasks we do in each of the rooms in our house: working in the office, cooking in the kitchen, and sleeping in the bedroom. Much easier to segregate in the physical realm with space and insight from centuries of building houses. But in the digital realm, our laptops, phones, and tablets have become the one stop shop for most of our environments ranging from writing code for work to watching Netflix for leisure. Modern challenges call for modern solutions (rather, digital solutions call for digital solutions or fight software with software!)

Operating Systems (OS) have tried to implement digital walls in the form of "virtual desktops" to help organize our contexts, but I personally have found these attempts to be miserable at best. I have been a heavy advocate for Notion, and when setting up virtual desktops, Notion is unable to be opened more than once, meaning that I cannot use separate Notion windows in each desktop. Of course, this is a small nuisance, and there is no reason why I can't just move Notion over when I context-switch or open Notion in a web browser. cmd+tab also cycles through applications regardless of which desktop they reside in. There's more. But it leads me to the point that **the modern "desktop" experience is still very unintentional when it comes to being optimized as a multi-environment machine for our seemingly complex modern needs.**

## **The Desktop Experience Sucks**

As a (novice) Mac user, I rely heavily on the three finger swipe. Seeing all the windows and quickly picking the one I need is a non-negotiable at this point. Especially considering that cmd+tab cycles through applications rather than windows (cmd+` for within app window cycling), the three finger swipe is the only way I can stay sane while switching between windows. However, as I dive into more topics, research, and apis, I have a steadily increasing amount of browser tabs. With more tabs, comes more windows; each window holding similar types of content. I've also resorted to having personal tabs in a secondary browser in Chrome, given the disappointing cmd+tab hotkey. But as topics and tabs increase, the number of windows has increased, and the three window swipe starts to look a lot like the Mac desktop with a gazillion screenshot icons that you can barely see. I've definitely noticed that I have to consciously sift through my windows instead of having my hands work their seasoned unconscious magic.

***This has lead me to consider what I would prefer instead. What an ideal, yet feasible desktop experience would consist of.***

## **Reducing Windows with Intention**

*In theory*, virtual desktops should work; **we should be creating intentional siloes between different context environments.** *So, what should be in each environment? In other words, what windows should exist within each environment?*

Consider the case in which you are programming. You are likely typing away (or cmd+v-ing) on VSCode or another IDE with a separate browser window open where you can paste your error message into Google. You might also have Slack open to complain to colleagues about running into so many errors, and Spotify to play some LoFi to keep a state of psychological flow. In this case, four windows would suffice: *one where you are actively outputting into (VSCode), one where you are getting input from (browser with Stack Overflow), one where you are communicating (Slack), and one where you are receiving audio or background input from (Spotify).* **Four windows for four "streams,"** and no distractions.

Let's try another case in which you are a student taking notes from a Zoom recording. You likely have one window open for playing back the recording, and another for word or google docs to regurgi-type the professor's words at 2x speed. These windows could be in split-view or on separate monitors, but there is no case in which these two "streams" should live within the same window. You could also hold the superhuman ability to listen to music from YouTube during the lecture. Or you are texting a friend about how software engineering pays too well to be paying attention to neuroscience lectures on Discord. In this case, a focused student likely only needs two windows for playback and note-taking. But when the lecture is over and you start working on the related assignment, you may want to quickly turn on some background audio. The playback window can be transformed into the problem set PDF and the note taking output window into a blank answer sheet. Even in this case where the environment calls for two separate tasks, the maximum number of streams I can think of is four.

Now I am not suggesting that everyone settles with four windows. **What I do believe is that windows should represent these "streams," rather than the applications.** The arbitrary choice behind having windows for each application is a trivial limitation of software development.

## **Windows as Attention Streams**

Going back to the four streams I chose of output, input, communication, and background audio, these represent what I call **digital "attention streams."**

- **_Output_** corresponds to the interfacing we are doing with the computer which could range from scrolling to typing to gaming.
- **_Input_** captures where our eyes (and sometimes our ears) are attentive to. This stream only deals with information we consciously process.
- **_Background audio_** is likely the most self-explanatory and consistent with physiological attention streams. This is the information that travels through our auditory system, but is mostly not processed.
- **_Communication_** is an interesting one, considering that it is likely not necessary most of the time, and *that it represents a neocortical attentional stream:* the direct and instantaneous communication that the internet has made possible. Although this stream does not correspond to any of our five senses, it does represent a shift towards the adoption of digital capabilities within our everyday processing.

Although somewhat arbitrary, **my choice of these four relate to my ability to concurrently attend to each stream.** Rarely will I listen to music on YouTube at the same time as my Spotify radio; my auditory system is already saturated with one background audio stream. Similarly, it is rare to think of a case where I need any two of Slack, Discord, Signal, and Gmail open in the same environment, and rather find the extra window(s) a nuisance when navigating windows. A caveat for the input and output is that use cases can be complex where multiple windows of each or custom visualization could be necessary.

Regardless, this system of *windows as attentional streams* is much more intentional in how to set up our desktop experience.

## **The Counter-Arguments: You Could Just Open and Close Windows...**

To anyone who suggests I close and open windows... No. Unfortunately, the problem is that most people simply pick the default. The default sucks, and if we are spending significant time on our desktops, it should deliver the best experience.

Consider how mentally taxing it is to see merge conflicts when you git push. Or when you have a million *actually* relevant tabs open that you need to organize into Mendeley or bookmarks. Digital cleaning sucks, and sometimes you have to leave things open in order to switch quickly; this is another **prioritization of attention as a currency** when context switching.

## **Attention as a Currency: We Can Track Our Spending Better**

Another benefit to organizing windows into attentional streams, is to make tracking our digital experience easier. The iOS "Screen Time" statistic is interesting at best, since we rarely use a single app at a time. Furthermore, time spent on our browser can literally be anything. With better tracking by streams, rather than by applications, the data can be game-changing for context logging and tracking: the first-step in creating personalized insights into lifestyle management.

[Amie](https://amie.so/) is a calendar app that has realized one aspect of this through its Spotify integration. It logs what you were listening to as a timeseries of songs inside of the calendar in a side-bar view. Similar to this feature, if we have a dedicated window for our audio stream, we can find correlational insights between audio and productivity, not just from Spotify (think insights like when playing LoFi, I produce 15% more productive keystrokes than with no music).

With four streams (or however many streams you use) we can see when and what we are attentive to in each stream; in other words, capturing the time-series of each stream. **We can further log this in a way that we can combine physiological and extraneous signals to train personalized algorithms to gain insight into optimizing our workflows from a physiological level as well.**

## **The Browser Company's Arc**

These frustrations have prompted me to explore the endless world of productivity apps and each unique solution to the digital mess that we indulge in everyday.

Most recently, I was given access to Arc, [The Browser Company's](https://thebrowser.company/) currently private browser. A nifty application with extremely pleasant and intentional aesthetics along with various customization options to help organize browsing the internet. But **the feature I was most impressed with was the ability to organize contexts into what they call "spaces."** Neatly packed in the bottom of the navigation bar, you are able to create and switch between spaces which hold its own bookmarks (pinned tabs), open tabs, and notes/easels.

I had previously used separate Brave windows to hold different contexts such as work, personal, school club, my writing, etc. which gets messy very quick. On MacOS, I have to cmd+tab to the Brave application and further cycle through multiple Brave windows with cmd+` to find the window of interest. **With Arc's new organization, I came to realize that I rarely use multiple browser tabs (not some of the common web apps like gmail or google docs) at the same time.** Arc currently serves as my input window, and even more pleasant is the ability to switch the input window's context by swapping spaces.

## **In Conclusion: Intention and Optimization**

My recent expedition on the productivity application landscape made me realize how much of the conversation around productivity apps surrounds the "best app," when such an app doesn't exist. It's likely that even if all productivity software development halted at this moment, no one would halt their work: there are so many tools already.

The next steps is to take a step back and consider how these tools all fit into our multi-tool workflows. How do new tools like Notion, Arc, Cron, and Endel fit into my workflow? *And how can I optimize it?* 