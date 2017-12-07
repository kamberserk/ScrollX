This is a small project for people trying to make an IOS Startup Information ScrollView. 

Some apps already have such kind of ScrollViews. They only run once when the app starts up, and mostly 
used for teaching how to use the app.



InformationStoryboard has 3 components : ScrollView , PageControl and Skip Button. When the Skip button is clicked it fires an variable change and fires for the Main Storyboard. on the second run Appdelegate checks for the variable change and if it is changed directly fires Main Storyboard instead of InformationStoryboard.


There is a plist File that you can put your information content page images into, 
    plist is an Array File : you can put images 
    also you can put arrays in that plist , to show them animated. (cool feature) ha? 
    
    
I dont know how to make it a cocoapod yet if someone willing to help i will be more than happy ! 

    
