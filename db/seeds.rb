Quest.destroy_all
Apprentice.destroy_all
Journey.destroy_all

Journey.create!([
  {
    name: "JavaScript",
    active: true
  },
])

p "Created #{Journey.count} journeys"

Apprentice.create!([
  {
    first_name: "Sole",
    last_name: "Barboza"
  },
  {
    first_name: "Dan",
    last_name: "Pariente"
  },
])

p "Created #{Apprentice.count} Apprentices"

journey = Journey.first

Quest.create!([
  {
    name: "Data Types & Variables",
    story: "<div>In the neon-lit alleyways of New Tokyo, a city thriving with cybernetic enhancements and augmented realities, lived a young hacker prodigy named Rei. Rei was known in manipulating datastreams and hacking into the corporate networks that controlled the city. <br><br>One day, Rei received an anonymous message on her AR glasses, challenging her to a hacking duel against the most powerful corporation in the city, TechCorp. Intrigued by the offer, Rei accepted the challenge and began preparing for the ultimate hack. As she planned her attack, Rei realized that she would need to master data types and variables in order to crack TechCorp's heavily fortified security systems. <br><br>Data types, she knew, were the categories of information that JavaScript recognized. Variables, on the other hand, were containers she could use to store and manipulate these data types.<br><br>Rei started by studying the different data types available to her:<br><br></div><ol><li>Numbers: These used to represent numeric values. In JavaScript, numbers could be integers or floating-point numbers. </li><li>Strings: Strings were used to represent a sequence of characters. Rei understood that she would need to use strings to manipulate passwords and access codes. </li><li>Booleans: Booleans, consisting of true or false, were used to represent logical values. This would be essential when checking access permissions or evaluating conditions for her hack. </li><li>Arrays: Arrays were ordered collections of values stored in a single variable. Rei realized she could use arrays to store multiple passwords or encryption keys. </li><li>Objects: Objects were collections of key-value pairs. Rei knew objects would come in handy for grouping related information. With a good understanding of the available data types, Rei began working with variables. She learned that variables could be declared using the `let`, `const`, or `var` keyword, depending on the scope and mutability she needed. Rei could now create variables to store and manipulate different data types. For example, she could declare a variable called `password` of type string, and another variable called `accessGranted` of type boolean. As Rei delved deeper into her study, she realized that she could use arithmetic operators to perform calculations or manipulate numeric data. Additionally, she could use string concatenation to combine multiple strings and form meaningful messages or commands. </li></ol><div><br>Armed with her newfound knowledge of data types and variables, Rei began her assault on TechCorp's network. She used numbers and boolean variables to navigate through security checkpoints, strings to decrypt passwords, arrays to store encrypted data, and objects to organize and manage critical information. With every successful hack, Rei became more adept at manipulating data types and variables. <br><br>She transformed the cyberpunk landscape of New Tokyo, bringing down the oppressive corporate regime and granting freedom to its inhabitants. Rei's skills in JavaScript not only helped her become a legendary hacker but also empowered her to shape the future of a technologically driven world. And as the city of New Tokyo celebrated its newfound freedom, Rei continued to push the boundaries of data types and variables, leading the way to a brighter, more interconnected future.</div>",
    task: "<ul><li>Review what you know about the primitive data types used in JavaScript. </li><li>Review how to create and use variables to store values. </li><li>Add variables to strings using concatenation and interpolation. </li></ul><div><br>We will start this lesson with a BIG chunk of work time. You might be thinking - What! We haven’t learned anything yet! That’s not true! You already know some stuff about these concepts from Mod 0. Plus, you have problem solving skills (and googling skills 😉).<br><br>We want to give YOU a chance to dig into the code and explore before we all get together and talk about these concepts. It’s okay (and expected!) that some of this activity will be difficult on your own. We want you to get used to that feeling - not knowing all the answers - and start to enjoy the process of diving in and getting your hands dirty in the code!</div>",
    journey_id: journey.id
  },
  {
    name: "Truthy and Falsy Expressions",
    story: "<div>In the not-so-distant future, where virtual worlds and augmented reality have become an everyday part of life, a young programmer named Max finds himself diving deeper into the world of JavaScript. <br><br>As he delves further into the language, he stumbles upon apunk-esque group known as the \"Truthy and Falsy Expressions.\" Rumors circulate within the programming community about this clandestine group, claiming that they possess knowledge that can help programmers write cleaner and more efficient code. <br><br>Intrigued by this whispered information, Max sets out on a quest to find and join the enigmatic faction. Max's search leads him to the dark underbelly of the interconnected city. Neon lights flicker, casting an eerie glow the, back-alley coding dens. navigates through a maze of dimly lit pathways, following snippets of conversations about truthy and falsy values that echo the shadows. It is in a dimly lit basement that Max discovers the Truthy and Falsy Expressions.<br><br>The room is filled with, cables tangled like cobwebs, and a group of programmers huddled in whispered discussions. As Max approaches, a hooded figure steps forward, introducing herself as Ruby - the leader of the group. Ruby explains the significance of truthy and falsy values in JavaScript: \"Imagine a world where lines of code are not confined by traditional true or false values. <br><br>In JavaScript, we use 'truthy' and 'falsy' to determine the validity of expressions. It allows us to write cleaner code and avoid unnecessary complexity.\" Intrigued, Max listens intently as Ruby continues, explaining how \"truthy\" values refer to any value that is considered true when evaluated in a boolean context. Conversely, \"falsy\" values represent anything considered false when encountered in a boolean context. Excited to put this newfound into practice, Max eagerly learns about the different types of falsy values in JavaScript. <br><br>Ruby explains,Falsy values include: null, undefined, false, 0, NaN, and an empty string ''.\" With the group, Max embarks on coding challenges to test and refine his understanding of truthy and falsy expressions. Through code reviews and intense discussions, Max learns how these concepts can optimize his code, leading to faster execution and more intuitive program logic. As Max delves deeper into the world of truthy and falsy expressions, he becomes aware of the ethical implications. <br><br>The power of manipulating boolean values can be a double-edged sword. It's crucial to use this knowledge responsibly and avoid exploiting it for nefarious purposes. Inspired by his newfound knowledge and driven by his passion for coding, Max begins applying truthy and falsy values to his projects. His code becomes cleaner, more elegant, and more readable, gaining the admiration of fellow programmers. Max into the realm of truthy and falsy expressions not only enhances his programming skills but also exposes him to the importance of responsible development. <br><br>In this cyber world, where technology and code intertwine with reality, it's vital to understand the principles and ideologies behind the tools we wield. As Max continues his adventure, he the knowledge of truthy and falsy expressions within him, striving to bring balance and efficiency to the virtual landscapes of tomorrow while remaining mindful of the ethical ramifications.</div>",
    task: "<div>Determine which expressions are truthy and which are falsy to the JS interpreter. Write cleaner code by applying your knowledge of truthy and falsy values. Learning about truthy and falsy values can help you write cleaner code.</div>",
    journey_id: journey.id
  },
  {
    name: "Intro to Functions",
    story: "<div>In the towering metropolis of NeoCity, where technology and AI reign supreme, a skilled hacker named Lina Myles had just embarked on a mission that would test her programming prowess. Lina, with her unruly neon hair and cybernetic eye enhancements, was known for her expertise in JavaScript - a programming language that powered the futuristic city. <br><br>One gloomy evening, Lina received an encrypted message an anonymous client, requesting her assistance in infiltrating the city's central AI core, known as \"CyberMind.\" The message claimed that an insidious virus was lurking within CyberMind, threatening to unravel the very fabric of this mystery and save her beloved city, Lina quickly planned her approach. <br><br>She needed to bypass the complex security systems guarding CyberMind, and that, she would need to leverage her knowledge of JavaScript functions. Functions were the backbone of JavaScript coding, allowing Lina to group and execute sets of instructions to perform specific tasks. With the encrypted message as her guide, Lina began to decipher the instructions one by one, employing operators and conditionals along the way. <br><br>As Lina delved deeper into the code, she encountered intricate series of security gates, each guarded by a more advanced AI module. She would need to write down the necessary functions to unlock each gate. Using her cybernetic eye enhancements to analyze the encryptions, Lina crafted the first function - a conditional statement that would check if the user input matched the correct passcode for the first gate. If the condition was true, she would progress to the otherwise, the gate would remain locked, and she would have to try again. With the first gate successfully bypassed, Lina pushed forward. <br><br>The city's digital labyrinth was treacherous, filled with numerous obstacles and security checks. Each challenge required a different set of operators and conditionals within her functions to overcome. From comparing values using equality and inequality operators to implementing logical operators to form complex conditions, Lina used her JavaScript expertise to navigate the treacherous waters of CyberMind. Bit by bit, gate by gate, she advanced to her final destination, theenter of NeoCity's infrastructure. <br><br>Finally, after hours of coding and overcoming countless obstacles, Lina stood before the gateway to the CyberMind's central processing unit. Utilizing her trusty functions one last time, she wrote the code that would disable the virus once and for all. With trembling fingers, Lina executed the function, and as lines of code scrolled across her cybernetic retina, the virus was vanquished. <br><br>The city's system began to stabilize, and the citizens of NeoCity regained their peace of mind. As out of the virtual realm and back into the neon-lit streets, she couldn't help but. Through her knowledge of functions and mastery of operators and conditionals, she had saved her city from the brink of digital collapse. From that day forward, Lina Myles became a legend, known throughoutCity as the fearless hacker who wielded the power of JavaScript. And as the sun set on the futuristic skyline, she knew that her journey was far from over. With her newfound skills and was ready to face any cyberpunk challenge that awaited her in this relentless world of code.</div>",
    task: "<div>Be able to declare functions with and without parameters. Understand how to call functions with and without arguments. Make function expressions evaluate to something other than undefined using return. Understand and use operators and conditionals</div>",
    journey_id: journey.id
  },
])

p "Created #{Quest.count} quests"