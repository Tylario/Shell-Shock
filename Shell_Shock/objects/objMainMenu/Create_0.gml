buttonSelected = 1;
totalButtons = 3;
select = vk_enter;

startButton = sprButton;
settingsButton = sprButton;
quitButton = sprButton;


names = ["Lily Elbel", "Tyler Hudson", "Tyler Rebman", "Mathew Shimko"];

//randomly shuffle named
randomize();
i = array_length(names) - 1;
while (i > 0) {
    j = irandom(i);
    temp = names[i];
    names[i] = names[j];
    names[j] = temp;
    i -= 1;
}
