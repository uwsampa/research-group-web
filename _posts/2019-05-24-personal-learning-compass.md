---
layout:     post
title: "Personal Learning Compass (Pleco)"
shortnews: false
icon: rocket
author: Wenjing Chen, Bodong Chen
---

![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Hypancistrus_Zebra_Pleco_Juvenile.jpg/320px-Hypancistrus_Zebra_Pleco_Juvenile.jpg)

**Living on the open web nowadays is like swimming in the open sea.**

In this blog post, we introduce a prototype we've built for *personal* and *networked* learning on the open web. The prototype -- named the **Personal Learning Compass (Pleco)** -- is an API-driven web application designed to support wayfinding and sensemaking in personal learning experiences on the web. 

Below, we briefly explain our motivatino of building such a tool and describes its core features. We strongly encourage you to get in touch with us if you have suggestions or wish to collaborate.

### Personal, Networked Learning on the Open Web

It has been eloquently argued by Stephen Downes that [**personalized learning** is losing its meaning](https://www.downes.ca/cgi-bin/page.cgi?post=65065) in an EdTech landscape where everyone is trying to "tailor" pedagogy, curriculum, environments, and learning pathways for or on behalf of learners.  Instead of jumping onto the bandwagon of personalized/adaptive learning, Downes proposed an alternative called **personal learning**. In his words:

> "*In the case of personal learning, the role of the educational system is not to provide learning, it is to **support** learning. Meanwhile, the decisions about what to learn, how to learn, and where to learn are made outside the educational system, and principally, by the individual learners themselves.*"

Grounded in our own work on a wide range of projects, such as [teacher learning in and with MOOCs](/projects/pku-mooc.html) and [highschoolers building knowledge on the web](/projects/idea-magnets.html), we concur with this notion of **personal learning**. 

Recognizing personal learning is often supported by [informal networks](https://en.wikipedia.org/wiki/Personal_learning_network) and mediated by social media environments, we are especially keen in building tools to support [wayfinding, sensemaking](https://www.slideshare.net/gsiemens/sensemaking-and-wayfinding), and network traversing in one's personal learning experiences.


<img width="400px" src="https://cdn.pixabay.com/photo/2017/05/25/21/29/dublin-2344423_960_720.jpg" /> <img width="400px" src="https://cdn.pixabay.com/photo/2018/11/29/21/51/social-media-3846597_1280.png" />

### The Library Approach

So far we see various mechanisms of supporting personal learning. One mechanism that has been especially dominating is based on **a library metaphor**. To support personal learning on the web, a straightforward thing to do is to help learners maintain a personal digital library where resources and notes would reside. Many tools including early social bookmarking tools and citation manager software could serve this role. For example, the second author of this blog post has used [Diigo](https://www.diigo.com/) years ago for online note-taking and [geeks about scholarly workflows](https://bodong.me/post/2018-07-public-scholarly-annotation/) from time to time. A learner does need a way to store, index, and retrieve knowledge artifacts on the web.

### The Network Approach

Another popular supporting mechanism for personal learning is to build and maintain a social network(s) so that information is socially curated for an individual's personal growth. A personal learning environment is a "manifestation of a learner's informal learning processes via the Web" (Martindale & Dowdy, [2010](http://www.aupress.ca/books/120177/ebook/99Z_Veletsianos_2010-Emerging_Technologies_in_Distance_Education.pdf)), and such an environment is often supported by social media platforms like Twitter. 

Compared to the library metaphor, the network approach puts less emphasis on information itself and recognizes the power of social ties for information propagation, idea sharing, and knowledge building. In short, it invites a learner to use and manage a network of people instead of a digital library of artifacts.

However, we see all sorts of [algorithms built by social media tech giants](https://psychcentral.com/blog/even-facebook-doesnt-understand-facebooks-algorithms/) in the mix, leading to the deterioration of learner agency in an experience that's meant to be more personal. In education, our team has written about [potential impacts of a social media tool's sorting algorithm on student discussions](https://www.researchgate.net/publication/332201466_It_is_about_timing_Network_prestige_in_asynchronous_online_discussions). To support learning experiences that are genuinely personal, we need to give some control back to the learner. 


<img width="400px" src="https://cdn.pixabay.com/photo/2016/03/26/05/17/fractal-1280081_1280.jpg" />

### The Need for A Compass

Here we propose to build a compass (or multiple compasses) **to support personal sensemaking, wayfinding, network traversing, network maintenance in one's personal learning experiences.** Such a compass needs to be driven by a hybrid of human and artificial intelligence with [special attention given to values it embodies](https://www.researchgate.net/publication/331338212_Towards_Value-Sensitive_Learning_Analytics_Design). 

To illustrate this vision, we built a prototype -- **Personal Learning Compass** (Pleco) -- based on a web annotation tool named [Hypothes.is](https://hypothes.is/). In a nutshell, Hypothesis enables a layer of interactivity on top of the whole web. With Hypothesis, one can annotate a web page, resulting in the addition of both the page and annotation to a personal Hypothesis **library**; one can also interact with other annotators through replies and gradually build a **social network** on Hypothesis. 

While Hypothesis is a clear leader in the web annotation world and our education friends at UC-Denver have done some really cool work on [a Hypothesis dashboard](https://crowdlaaers.org/), **Pleco** is designed to meet needs not well served in the space. 

Below we describe Pleco's key features -- which are still going through intensive testing and tweaking. (We hope to share this work early and often to collect feedback and seek collaboration.)

#### 1. A user logs in with a Hypothesis account

When logging in, this user's public annotations are retrieved via the Hypothesis API. 

![](https://user-images.githubusercontent.com/35544378/57734231-10f96680-7667-11e9-82aa-cc9ef8265538.gif)

#### 2. Tags appearing in the user's annotations are listed on the top of the screen

As a first step, we want to support the use case of entering the wayfinding process from tags. 

![PLC-2-gif](https://user-images.githubusercontent.com/35544378/57734280-2cfd0800-7667-11e9-9913-430919063bbf.gif)

#### 3. Sophisticated network traversing and manipulation

- By clicking on a tag, the network visualization displays users using this tag. (We can also search a tag not listed there.)
- By clicking on a user, the visualization pulls up the user's annotations with the same tag
- By clicking on an annotation, the visualization shows the webpage (as another tye of node) where the annotation was made
- By long-pressing on an annotation, the user can preview the annotation's content
- By double-clicking on an annotation, the user can open it to the right side of the screen, where she can further open the original web context where the annotation was made

![PLC-3-gif](https://user-images.githubusercontent.com/35544378/57734302-39816080-7667-11e9-95b3-ca2a8297c934.gif)

#### 4. Customization of the network visualization

The user can filter the annotations by time and number. The user can also customize the appearance of the network visualization.

![PLC-4-gif](https://user-images.githubusercontent.com/35544378/57734338-4dc55d80-7667-11e9-80b7-176a4223a24c.gif)

#### 5. Potential ways to hide and persist network nodes

The prototype is currently server-less, but the front-end supports ways to hide or persist certain network nodes, opening the door of sophisticated control of the network by the user.

![PLC-5-gif](https://user-images.githubusercontent.com/35544378/57734376-5d44a680-7667-11e9-8318-c8baf1b8054b.gif)

### Next Steps

Our immediate next step is to swap the current netvis library to D3 and add back-end capabilities. At this point, we are still defining the long-term roadmap and would appreciate any feedback you have. 

The codebase can be found [on Github](https://github.com/colig/PLC) if you are interested in contributing to it. 