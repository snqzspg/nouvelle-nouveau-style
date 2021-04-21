# Nouvelle/Nouveau Style Chrome Extension
**Note**: This is currently in Alpha Experimental phase.

This is a chrome extension source code that displayes [nouvelle-nouveau](https://nouvelle-nouveau.tumblr.com/) and [bruitdefond-blog](https://bruitdefond-blog.tumblr.com/) in the former style that they used to be.

## Nexflix documentary series "Crime Scene: The Vanishing at the Cecil Hotel"
On 10th of February 2021, [Netflix](https://www.netflix.com/) released a four-episode documentary named [Crime Scene: The Vanishing at the Cecil Hotel](https://www.netflix.com/title/81183727) which features the mysterous death of the blogs' owner, Elisa Lam (alias L.L.), the various conspiracies and the final conclusion of how she passed away. Her [nouvelle-nouveau](https://nouvelle-nouveau.tumblr.com/) blog has been heavily referenced throughout the series. 

## Where are the posts?
After the Netflix documentary series aired, it drove many people to the Tumblr blog of Elisa Lam, perhaps out of interest into her life before her disappearance. However, when one views the blog's homepage, they will be greeted by the blog title, epigraph (“You’re always haunted by the idea you’re wasting your life.” — Chuck Palahniuk) and some basic Tumblr navigations, followed by a blank content. Even though the homepage is blank, the posts are not removed (touch wood!), but they are not shown due to missing scripts that are used by the theme of her blog to display posts. When one clicks on the [archive page of her blog](https://nouvelle-nouveau.tumblr.com/archive), he/she can see the contents of the blog using Tumblr's native archive user interface (**ui**).

### ThemeCloud Infinite v3
![themecloud-infinite-3](https://user-images.githubusercontent.com/43104884/115521589-e0dc8880-a2bd-11eb-9f57-a8ea46f68ae0.jpg)
The theme used by [nouvelle-nouveau](https://nouvelle-nouveau.tumblr.com/) is named "Infinite 3". It was designed by "blink and it's over" and was published on themecloud.co (this site no longer exists). Some of the theme assets were hosted under the domain of themecloud.co in order to prevent people from copying the HTML of the theme and apply it on their blog without paying. Unfortunately when the site called it quits between 2017 and 2018, the theme assets hosted on themecloud.co disappeared as well, leading to a non-functioning interface. This results in the blog not displaying anything on the homepage (as well as list of posts tagged with a keyword)

## Security issues?
Currently I have not published this extension on the Chrome Web Store, and thus it lacks a certificate for users to use in chrome (or chromium based browsers). In order to use this extension, one have to enable Developer mode in their chromium-based browser. This extension only accesses certain Tumblr blogs that need Infinite 3 theme assets. It does not, and not permitted to access any websites outside of Tumblr and it also does not collect information on users or track users visiting those blogs.

*Note that people may publish this source code as official extensions on the Chrome Web Store. I cannot guarantee that those will not perform any malicious activies. Trust them at your own risk.*

It is also important to have the practice to disable all Developer Mode extensions when you don't need to use them and re-enable them when you need them again. 

## How to install?
Release: https://github.com/snqzspg/nouvelle-nouveau-style/releases
  1. Download either the release or clone this repository
  2. Extract the crx / zip file
  3. Open Extensions Page in your Chromium-based browser (Google Chrome)
  4. Enable Developer Mode
  5. Drag the extracted folder (nouvelle-nouveau-style-main folder if you cloned the repository) into the Extensions Page
  6. Ensure the extension is enabled
  7. Visit https://nouvelle-nouveau.tumblr.com/ (**Note**: If you visit in incognito or private browsing you'll need to allow this extension in incognito or private)
  8. Once you think you do not need to visit a page that requires this extension to display properly, go back to the Extensions Page and disable Developer Mode.

*Reminder to have the habit to disable this extension when you are not visiting [nouvelle-nouveau](https://nouvelle-nouveau.tumblr.com/) or any thematically related blogs.*

## Style Restoration
The main purpose of this extension is to use a modified archived version of the Infinite 3 theme assets (modified to make it compatible to Chrome Extension standards and to slightly improve the functionality of the ui) on [nouvelle-nouveau](https://nouvelle-nouveau.tumblr.com/) to restore the original style of the blog. 

![preview](https://user-images.githubusercontent.com/43104884/115401597-272ddb00-a21d-11eb-84e6-fe87491d8a59.jpg)

### Complete functional restoration?
This is still experimental and does not fully restore all the petty functionalities of the theme (Like buttons are still broken). It should be enough for people to browse through the blog as how it was before 2017. Infinite scroll currently works.

### Does one really need this extension to browse nouvelle-nouveau?
Short answer is no. You can browse throught the [archive page](https://nouvelle-nouveau.tumblr.com/archive) without this extension. This extension is mainly to bring back the original aesthetics of the blog. This helps in realising how the artsy content posted by L.L. complements with the layout of the original blog ui to bring about a pleasant and stylish look and feel that L.L. intended. 

> *"and the rest is to be written…" -L.L.*
