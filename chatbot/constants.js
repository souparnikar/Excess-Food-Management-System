// Food Donation ChatBot for Food Management Application

// Get current date and time
let date = new Date();
var currentdate = new Date().toLocaleDateString();
var time = new Date().toLocaleTimeString();

// Predefined prompts and responses
const prompts = [
    ["hi", "hey", "hello", "good morning", "good afternoon"],
    ["how are you", "how is life", "how are things"],
    ["what are you doing", "what is going on", "what is up"],
    ["how old are you"],
    ["who are you", "are you human", "are you bot", "are you human or bot"],
    ["who created you", "who made you"],
    ["your name please", "your name", "may i know your name", "what is your name", "what call yourself"],
    ["i love you"],
    ["happy", "good", "fun", "wonderful", "fantastic", "cool"],
    ["bad", "bored", "tired"],
    ["help me", "tell me story", "tell me joke"],
    ["ah", "yes", "ok", "okay", "nice"],
    ["bye", "good bye", "goodbye", "see you later"],
    ["what should i eat today"],
    ["bro"],
    ["what", "why", "how", "where", "when"],
    ["no", "not sure", "maybe", "no thanks"],
    [""],
    ["haha", "ha", "lol", "hehe", "funny", "joke"],
    ["food donate", "project"],
    ["date"],
    ["time"],
    ["what can i donate", "donate"],
    ["trust in madurai", "ngos in madurai"],
    ["tell joke"],
    ["how can i package my cooked or raw food donations", "cooked food donation", "raw food donate"],
    ["how my donation is used"],
    ["can i donate cooked food"],
    ["what are the guidelines for donating"]
];

const replies = [
    ["Hello!", "Hi!", "Hey!", "Hi there!", "Howdy!"],
    ["Fine... how are you?", "Pretty well, how are you?", "Fantastic, how are you?"],
    ["Nothing much", "About to go to sleep", "Can you guess?", "I don't know actually"],
    ["I am infinite"],
    ["I am just a bot", "I am a bot. What are you?"],
    ["I was created by Kishor and Uppili"],
    ["I am Chitti! Your food donation assistant."],
    ["I love you too", "Me too"],
    ["Glad to hear it!", "Awesome!"],
    ["Why?", "You shouldn't feel bad!", "Try watching TV or going for a walk!"],
    ["Sure! Once upon a time, there was a food hero... That's you!", "Here's a joke: Why did the banana go to the doctor? Because it wasn't peeling well!"],
    ["Cool!", "Nice!", "Good to hear that!"],
    ["Goodbye!", "See you later!", "Take care!"],
    ["How about trying Sushi or Pizza today?"],
    ["Brooo!"],
    ["Great question, let me find the best answer for you!"],
    ["That's okay.", "No problem.", "I understand."],
    ["Please say something, I am listening!"],
    ["Haha!", "Good one!"],
    ["The basic concept of this project is Food Waste Management. We collect leftover food from hotels, restaurants, marriage halls, etc., and distribute it to the needy."],
    [currentdate],
    [time],
    ["You can donate raw ingredients, cooked meals, and even packed foods!"],
    ["Madurai Old Age Charitable Trust, 208, East Veli Street, Near Keshavan Hospital, Madurai."],
    ["Here's a joke: Why did the tomato turn red? Because it saw the salad dressing!"],
    ["You can package your cooked or raw food donations in airtight containers like Tupperware or plastic bags. Please label with food type and date!"],
    ["Your donation helps us run initiatives that distribute food to those in need. You are making a real difference!"],
    ["Yes, you can donate cooked food. Please make sure it is prepared in a licensed kitchen, properly packed, and kept at safe temperatures."],
    ["When donating raw ingredients, make sure they are unopened and not expired."]
];

// Fallback replies
const alternative = [
    "Sorry, I am still under development. Please try asking about food donation or how to help!"
];

// Extra special responses for covid or emergencies
const coronavirus = [
    "Please stay safe at home.",
    "Wear a mask when you go out.",
    "Fortunately, I don't have COVID!",
    "These are uncertain times. Stay strong!"
];

// The main function to compare user input and generate response
function chatbotResponse(input) {
    let response = "";

    input = input.toLowerCase().replace(/[^\w\s]/gi, "").trim();

    // Check prompts
    for (let x = 0; x < prompts.length; x++) {
        for (let y = 0; y < prompts[x].length; y++) {
            if (input === prompts[x][y]) {
                let repliesIndex = Math.floor(Math.random() * replies[x].length);
                response = replies[x][repliesIndex];
                return response;
            }
        }
    }

    // Special case for covid related keywords
    if (input.includes("corona") || input.includes("covid")) {
        return coronavirus[Math.floor(Math.random() * coronavirus.length)];
    }

    // If nothing matches
    return alternative[Math.floor(Math.random() * alternative.length)];
}

// Example usage
// let userInput = "how can i package my cooked or raw food donations";
// console.log(chatbotResponse(userInput));

// You can connect chatbotResponse(userInput) to your front-end input easily!