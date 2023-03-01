## Theme contribution guide
Here is a guide on how to create themes for MainDab, and not a full out tutorial. This will be updated every time the format for the theme updates. It may or may not be complete, but should be enough to get you started.

**This guide requires you're using MainDab to create themes.**

### The .json format
Here is a quick template to use. If you're smart enough, you can skip the majority of this tutorial and make use of MainDab's theme editor. 
```json
{
  "MadeBy" : "Your name here",
  "TopLeftBorderColour" : "#HEXCODE",
  "BottomRightBorderColour" : "#HEXCODE",
  "BackgroundImageURL" : "URL goes here",
  "BackgroundImageTransparency" : "From 0-100, 0 being fully transparent (no background image)"
}
```
### How it looks like
Let's have a look at this theme : 
```json
{
  "MadeBy" : "Main_EX",
  "TopLeftBorderColour" : "#4C464646",
  "BottomRightBorderColour" : "#4C464646",
  "BackgroundImageURL" : "https://art.pixilart.com/b7875a3999e9a79.gif",
  "BackgroundImageTransparency" : "20"
}
```

And now the output :
![](https://cdn.discordapp.com/attachments/792817187344875542/1002879471919054908/MainDab_D3PHyMwklB.png)

Let's have a look at the default theme now. We can deduce the following :
![](https://cdn.discordapp.com/attachments/792817187344875542/1002880508499333140/MainDab_NZdNFHirSW.png)

Now we know how the gradient is formed. The image URL and transparency are self explanatory, so I won't go though that. Now we have that cleared...

### The MainDab theme editor
It's so self explanatory that I don't think I should be explaining how to use it. Regardless, here is an image of the editor.
![](https://cdn.discordapp.com/attachments/792817187344875542/1002881728605597816/MainDab_GVfLhbChnB.png)

Have a play around if you don't know what to do. It's as simple as that.

### Having a colour-only background
Unfortunately, you can only do this though creating an image with a single colour. I haven't added in background colouring options yet.

### Contributing theme files
First, you should have a theme .json file. Click "save to file" to save your theme from the theme builder to a file. There are two ways of contributing a theme.
#### Submitting it though MainDab's Discord
I assume you're already in MainDab's Discord, which can be joined from discord.io/maindab. You can go to the themes channel and post your file.
#### Create a pull request and contribute directly
If you know how to do so, then go ahead and make a pull request. I'll review the theme and add it in.

### Editing other themes
You can if you wanted to, but at least make sure it's of quality.



