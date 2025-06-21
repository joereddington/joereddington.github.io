---
layout: post
title: "Trainer for decoding numbers"
date: "Sat Jun 21 15:23:02 +0100 2025"
---

<p>The Major System is a mnemonic device for converting numbers into memorable words. This trainer is designed to help you improve your speed and accuracy at decoding words into their numeric equivalents using the system.</p>

I talk about it a lot in my book [Advanced Memory Palaces](https://www.amazon.co.uk/Joe-Reddington/dp/B09GJFZ6JM).  I (and Darren Brown - I originally found it in Brown's book _Trick of the Mind_) use the following lookup table:

| Letter    | Number | Explanation                                                |
|-----------|--------|------------------------------------------------------------|
| s/z       | 0      | ‘z’ for zero and ‘s’ looks like ‘z’                        |
| l         | 1      | ‘l’ has one line                                           |
| n         | 2      | ‘n’ has two lines                                          |
| m         | 3      | ‘m’ has three lines                                        |
| r         | 4      | a capital R looks a bit like a backwards 4                |
| v/f       | 5      | ‘V’ is the Roman numeral for 5; five starts with ‘f’      |
| b/p       | 6      | b is sort of the same shape as 6, and p is its reflection |
| t         | 7      | t sort of looks like a seven                               |
| ch/gh     | 8      | All the good letters were taken                            |
| d/g       | 9      | g is sort of the same shape as 9 and d is its reflection   |

It's very useful but can take a while to get the hang of. I built the following little bit of javascript to help me get back into practice for my new book and I'm making it public so I can link people to it when they email. 

The simple JavaScript below gives you random words: if you decode them into numbers correctly then you get a point, if you don't, then you don't get a point. It times you for two minutes. 

Click "Start" to begin a two-minute timed session. You’ll be shown two random words — your task is to enter the number they represent according to the Major System. For example, the pair <strong>rat chef</strong> would decode to <code>4785</code>.  When you press Enter, you'll find out if you are right. 

<p>Your score updates with each correct answer. Hit "Reset" to try again and improve your performance!</p>

<div id="trainer-app">
  <!-- Major System Trainer UI will render here -->
</div>

<script>
  const FORCE_STANDARD_MODE = true; // Public version — force standard mode

const wordList = [
  "apple", "table", "rock", "lamp", "spider", "book", "chair", "cloud", "river", "train",
  "balloon", "pencil", "jacket", "mirror", "garden", "music", "planet", "shadow", "forest", "button",
  "window", "castle", "desert", "kitten", "dragon", "pizza", "rabbit", "soldier", "sunset", "wizard",
  "lemon", "thunder", "village", "anchor", "crystal", "hammer", "tunnel", "monkey", "carpet", "whisper",
  "garage", "violin", "ladder", "pepper", "spoon", "rocket", "magnet", "pillow", "camera", "crown",
  "basket", "chimney", "helmet", "zebra", "wallet", "feather", "compass", "candle", "globe", "shovel",
  "toaster", "blanket", "cookie", "funnel", "mailbox", "glasses", "sandwich", "whistle", "cactus", "ruler",
  "trumpet", "marker", "ticket", "lantern", "shoelace", "arrow", "locket", "velvet", "goggles", "notebook",
  "drawer", "curtain", "teacup", "blender", "parrot", "penguin", "trophy", "stapler", "perfume", "trident",
  "shoebox", "sandal", "apron", "guitar", "pirate", "backpack", "tablet", "dolphin", "notepad", "puzzle",
  "locker", "slipper", "ribbon", "sticker", "bracelet", "napkin", "bookmark", "muffin", "scissors", "kettle",
  "chalkboard", "crayon", "snowflake", "rainbow", "umbrella", "bubble", "popcorn", "raccoon", "pancake", "donut",
  "jellyfish", "volcano", "tractor", "igloo", "cupcake", "tornado", "battery", "lipstick", "mattress", "luggage",
  "handbag", "necklace", "giraffe", "elephant", "flamingo", "bicycle", "freezer", "ketchup", "cabinet", "spatula",
  "flashlight", "scarf", "t-shirt", "headphones", "keychain", "snowman", "beehive", "squirrel", "coaster", "suitcase",
  "eyelash", "cushion", "diary", "eraser", "binder", "headphones", "keychain", "snowman", "beehive", "coaster",
  "eyelash", "glasses", "glove", "helmet", "mirror", "pencil", "eraser", "binder", "notepad", "sandwich",
  "goggles", "trumpet", "drawer", "cup", "saucer", "keyboard", "mouse", "monitor", "remote", "speaker",
  "ruler", "paint", "brush", "canvas", "frame", "tripod", "camera", "memory", "poster", "tissue",
  "mattress", "frame", "rug", "curtain", "alarm", "calendar", "notebook", "file", "folder", "label"
];


  const physicsLines = []; // Public version: physics content removed

  let word1 = "", word2 = "", phrase = "";
  let score = 0;
  let timeLeft = 120;
  let timerInterval = null;
  let usePhysics = false;

  document.addEventListener("DOMContentLoaded", function () {
    const app = document.getElementById("trainer-app");
    app.innerHTML = `
      <div id="statusBox" style="display:inline-block;background:#fff;border-radius:8px;box-shadow:0 0 8px rgba(0,0,0,0.1);padding:10px 20px;margin:20px auto;line-height:1.6em;text-align:left;font-family:monospace;">
        <div style="display:flex;justify-content:space-between;width:160px;margin:0 auto;">
          <span>Time:</span><span id="timer">2:00</span>
        </div>
        <div style="display:flex;justify-content:space-between;width:160px;margin:0 auto;">
          <span>Score:</span><span id="score">0</span>
        </div>
      </div>
      <div id="wordPair" style="font-size:2.2em;margin:30px auto 10px;padding:10px 20px;background:#fff;display:inline-block;border-radius:10px;box-shadow:0 0 10px rgba(0,0,0,0.1);max-width:90%;">Press Start to begin!</div>
      <input type="text" id="answer" placeholder="Enter number" disabled autocomplete="off" style="display:block;font-size:1.5em;padding:10px;width:300px;margin:15px auto 0;">
      <div id="feedback" style="margin-top:15px;height:1.5em;font-size:1.3em;"></div>
      <button id="startButton" style="font-size:1.2em;padding:10px 20px;margin-top:20px;cursor:pointer;border:none;background-color:#4CAF50;color:white;border-radius:5px;">Start</button>
    `;

    function convertToInteger(word) {
      word = word.toLowerCase();
      const replacements = [
        ['ch', '8'], ['sh', '8'],
        ['l', '1'], ['n', '2'], ['m', '3'], ['r', '4'],
        ['f', '5'], ['v', '5'], ['b', '6'], ['p', '6'],
        ['t', '7'], ['g', '9'], ['d', '9'], ['s', '0'], ['z', '0']
      ];
      for (let [key, val] of replacements) {
        word = word.replaceAll(key, val);
      }
      return word.replace(/[^0-9]/g, '');
    }

    function pickWords() {
      usePhysics = false; // always false in public version
      word1 = wordList[Math.floor(Math.random() * wordList.length)];
      word2 = wordList[Math.floor(Math.random() * wordList.length)];
      document.getElementById("wordPair").innerText = `${word1} ${word2}`;
      document.getElementById("answer").value = "";
    }

    function updateTimer() {
      const minutes = Math.floor(timeLeft / 60);
      const seconds = String(timeLeft % 60).padStart(2, '0');
      document.getElementById("timer").innerText = `${minutes}:${seconds}`;
    }

    function endGame() {
      clearInterval(timerInterval);
      timerInterval = null;
      document.getElementById("wordPair").innerText = "Time's up!";
      document.getElementById("answer").disabled = true;
      document.getElementById("startButton").innerText = "Start";
    }

    function startGame() {
      score = 0;
      timeLeft = 120;
      document.getElementById("score").innerText = score;
      document.getElementById("answer").disabled = false;
      document.getElementById("answer").focus();
      document.getElementById("feedback").innerText = "";
      document.getElementById("startButton").innerText = "Reset";
      pickWords();
      updateTimer();

      if (timerInterval) clearInterval(timerInterval);
      timerInterval = setInterval(() => {
        timeLeft--;
        updateTimer();
        if (timeLeft <= 0) {
          endGame();
        }
      }, 1000);
    }

    document.getElementById("startButton").addEventListener("click", startGame);

    document.getElementById("answer").addEventListener("keydown", function (e) {
      if (e.key === "Enter") {
        const userAnswer = this.value.trim();
        const correct1 = convertToInteger(word1);
        const correct2 = convertToInteger(word2);
        const correctAnswer = correct1 + correct2;

        const feedbackDiv = document.getElementById("feedback");
if (userAnswer === correctAnswer) {
  score++;
  document.getElementById("score").innerText = score;
  feedbackDiv.innerText = "✅ Correct!";
  setTimeout(pickWords, 800);
} else {
  clearInterval(timerInterval); // Pause timer
  timerInterval = null;

  let original = usePhysics ? phrase : `${word1} ${word2}`;
  alert(`"${original}" decodes to "${correctAnswer}", but you wrote "${userAnswer}"`);

  pickWords(); // Next challenge
  timerInterval = setInterval(() => {
    timeLeft--;
    updateTimer();
    if (timeLeft <= 0) endGame();
  }, 1000);
}

        setTimeout(() => {
          pickWords();
        }, 800);
      }
    });
  });
</script>

