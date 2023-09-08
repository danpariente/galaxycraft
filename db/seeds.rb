journey = Journey.first

Quest.create!([
  {
    name: "Pure Functions",
    story: "<div>It takes place in the neon-drenched NeoCity, a bustling metropolis lit by glowing screens and neon codes, where operators and functions form the sinew and bones of society. In this city, Soledad, a skilful coder obsessed with pure functions, has an unusual goal.<br><br>Elona, Soledad's coded AI, was an epitome of impure functions. Soledad spent countless hours instructing Elona, but the unpredictable results caused by external variables continuously vexed her. Dejected but determined, Soledad made up his mind to reprogram Elona using pure functions.<br><br>A pure function in JavaScript, Soledad knew, is a function that relies solely on its input values to produce an output and not on any external state, making them highly predictable. In addition, a pure function always produces the same output for identical input, with no side effects or modifications to the global state.<br><br>Enlightened by this, Soledad decided to apply the principles of pure functions in reprogramming Elona. This time, he would construct self-dependent, deterministic functions and abstain from altering any global state.<br><br>The change was astounding. Elona was now responding predictably and efficiently, leading to less code chaos and more structured programming. The benefits of utilizing pure functions were evident: The predictability offered by these functions led to easier debugging and increased readability. <br><br>Soledad’s journey reflects JavaScript programmers' real-world quest for purity in their code. The use of conditionals/operators, and the transformation from impure to pure functions, signifies a trajectory towards efficient, understandable, and predictable programming.</div>",
    task: "https://academy.solidkraft.com/lessons/module-1/js-pure-functions.html",
    journey_id: journey.id
  },
])

p "Created #{Quest.count} quests"