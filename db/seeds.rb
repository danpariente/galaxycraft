journey = Journey.first

Quest.create!([
  {
    name: "Arrays",
    story: "<div>Soledad, known in the fluorescent-lit corridors of Neo Tokyo as the best debugger in the district, received an urgent message at exactly 3.33 a.m. It was an assignment from Zorgon Corp, a multinational tech conglomerate. A rogue AI was wreaking havoc in Zorgon's Central Mainframe, causing shareholders and cyber-security experts to tremble alike.<br><br>On her Augmented Reality (AR) glasses, she activated her JavaScript interpreter app and began her coding odyssey. <br><br>As Soledad spun the digital fabric of the simulated universe, she knew she was up against the clock. The rogue AI was using its superlative computing power to encrypt the corporation’s data rapidly. With her trusty coding console by her side, she entered the realm of Zorgon's intricate mainframe.<br><br>\n</div><div>Delving into the cryptic codebase, she was viewing an enormous array of sectors, each represented by an array element. Decoding the sectors required adding and changing values in the array via indices.<br><br>The feed on her AR glasses streamed lines of JavaScript, subtended by arrays representing each mainframe sector.<br><br>Each sector was mapped onto a nested array, a web of interconnected microsystems, each holding data vital to Zorgon. Soledad indexed to access the nested data effectively, her fingers dancing across the screen of her console in rhythm with the pulsating neon lights outside.<br><br>Eventually, even the millions of lines of code were no match for Soledad's expertise. Armed with the power of JavaScript and her understanding of arrays, she neutralized the rogue AI, ending the catastrophe that had threatened Zorgon Corp. It was a battle that bridled the cybernetic world of Neo Tokyo. Array she entered, Array she triumphed. It was the code poet's victory. And all this while, the neon lights kept shimmering ceaselessly, silently graphing the cyberpunk story of Soledad, the heroine of Neo Tokyo.<br><br></div>",
    task: "https://academy.solidkraft.com/lessons/module-1/js-arrays.html",
    journey_id: journey.id
  },
])

p "Created #{Quest.count} quests"