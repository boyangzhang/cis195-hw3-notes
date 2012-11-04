This is my calculator implemention.

I really struggled this past week to find time to work on it and now I'm pretty burned out, so I've used
7 joker days.  Sorry it seems very half-assed, but I added basic functionality.

NotesMasterView is the main table view
-It takes in the NotesTextFile class into the NotesDetailView
-The NotesTextFile stores the date and the text that gets loaded each time in the view.
-NotesLocationSingleton is updated with a NSMutableArray of CLLocations from NotesMasterView

NotesSecondView contains a map view
-Loads values from NotesLocationSingleton onto the map.