# Timefly

#Inspiration
A photo album. A book bound by our memories, each page a chapter in the story of our lives.

Welcome to TimeFly, where we've reinvented the photo album for the digital age. With our cross-platform app, capture daily videos, photos, or audio recordings, each tagged with its location using a Google Map API. Your memories come to life in a dynamic digital photo album that evolves with you. Immerse yourself in the sights, sounds, and places that shape your story, all easily navigated on a map. TimeFly: preserving life's precious moments.

#What it does
TimeFly captures your daily memories in a vintage photo album.

Capture the Essence of Every Day: With Timefly, you can effortlessly record daily snippets of your life. Whether it's a video capturing a special moment, a photo freezing time, or an audio recording preserving the ambient sounds, Timefly empowers you to encapsulate the essence of each day.

Dynamic Digital Photo Album: Say goodbye to static photo albums. Timely transforms your memories into a dynamic digital experience. The cross-platform app, built with Flutter, ensures a consistent and visually pleasing interface across Android and iOS devices. Your memories come to life with fluidity and grace, making the journey through your digital album a delightful experience.

Location Tagging and Mapping: Each captured moment is tagged with its location, allowing you to trace your life's journey on a map. The integration of a Google Map API provides a comprehensive view of where each memory was made.

Friends Feature Using the Cohere API, we seamlessly match you to friends based on keywords from your location activity. Using LLM's, we reccomend friends for you to add that went to similar locations as you,

#How we built it
We created an interactive mock-up for prototyping using Figma.

We utilized the Flutter framework and Dart to build a cross-platform mobile app. For the server side, we utilized Auth0, Cohere API, and Google Maps API. For our login and sign in pages, we used the platform Auth0 for user authentication (such as socials login). Using the Cohere API, we used LLM's to identify similarities between different users, creating a robust friend reccomendation system. We intended to use a Google Maps API for location tagging based on the user's captures. To handle queries and requests from the client side, we used the Flask framework.

#Challenges we ran into
As beginner hackers and our first time competing in an in-person hackathon, we faced major hurdles in this experince. However, we used these challenges as a learning experince!

Firstly, we did not have prior experince in mobile development. We faced a steep learning curve while learning Flutter. From understanding widget-based UI development to navigating through the Dart programming language, each member of our team had to adapt to a fresh set of concepts and tools.

Secondly, we faced issues using Git to tarck changes in code from different teammates. With limited prior experince, we faced issues ensuring smooth branching and merging. However, we overcame these issues by adopting Git best practices in our team.

#Accomplishments that we're proud of
To begin, we are proud of building a fully interactive and responsive Figma mockup. Next, We learned how to use Flutter and Dart to build a basic version of our app.

#What we learned
During this hackathon, we learned how to create responsive prototypes and gained experince in Flutter and using various APIs and frameworks.

Reflecting on our team, we also learned how to work together and collaborate effectively, as we did not know each other before the hackathon.

#What's next for TimeFly
In the future, we would like to fully implement the Google Maps API in our back-end and develop the Front-end to resemble our Figma mock-up.

TimeFly has endless possibilities - in the future of AR/VR, we hope to allow users to physically experince life's little moments through Digital Twins. Digital Twins act as immersive time capsules that recreate the sights, sounds, and emotions of specific moments, allowing users to relive and physically experience them in a virtual space. We hope to continue developing this project and soon expand it's horizon in the field of AR/VR.
