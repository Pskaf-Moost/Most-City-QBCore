Config = {
    MenuHead = 'Dpemotes',
    -- Change the language of the menu here!.
    -- Note fr and de are google translated, if you would like to help out with translation / just fix it for your server check below and change translations yourself
    -- try en, fr, de or sv.
  MenuLanguage = 'en',	
    -- Set this to true to enable some extra prints
  DebugDisplay = false,
    -- Set this to false if you have something else on X, and then just use /e c to cancel emotes.
  EnableXtoCancel = true,
    -- Set this to true if you want to disarm the player when they play an emote.
  DisarmPlayer= true,
    -- Set this if you really wanna disable emotes in cars, as of 1.7.2 they only play the upper body part if in vehicle
  AllowedInCars = false,
    -- You can disable the (F3) menu here / change the keybind.
  MenuKeybindEnabled = true,
  MenuKeybind = 'F3', -- Get the button name here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- You can disable the Favorite emote KeyBinding here.
  FavKeybindEnabled = true,
  FavKeybind = 'NUMPAD4', -- Get the button name here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- You can change the header image for the f9 menu here
    -- Use a 512 x 128 image!
    -- NOte this might cause an issue of the image getting stuck on peoples screens
  CustomMenuEnabled = false,
  MenuImage = "https://i.imgyukle.com/2020/03/08/nwO7fe.png",
    -- You can change the menu position here
  MenuPosition = "right", -- (left, right)
    -- You can disable the Ragdoll KeyBinding here.
  RagdollEnabled = true,
  RagdollKeybind = 'J', -- Get the button number here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- You can disable the Facial Expressions menu here.
  ExpressionsEnabled = true,
    -- You can disable the Walking Styles menu here.
  WalkingStylesEnabled = true,	
    -- You can disable the Shared Emotes here.
    SharedEmotesEnabled = true,
    CheckForUpdates = false,
    -- Keybinds
    KeyBinding = false,
}


Config.OpenKey = 'F3' -- Change this

Config.Languages = {
    ['en'] = {
        ['emotes'] = 'Animation',
        ['danceemotes'] = "🕺 Danse",
        ['propemotes'] = "📦 Objets",
        ['favoriteemotes'] = "🌟 Favoris",
        ['favoriteinfo'] = "Selecciona una animación para hacerla favorita!.",
        ['rfavorite'] = "Reiniciar favoritas",
        ['prop2info'] = "❓ Las animaciones de objetos son ajustadas al final",
        ['set'] = "Selectionner (",
        ['setboundemote'] = ") para ser tu animacion atado?",
        ['newsetemote'] = "~w~  es ahora tu animacion atada, presiona ~g~CapsLock~w~ para usarla.",
        ['cancelemote'] = "Annuler animation",
        ['cancelemoteinfo'] = "~r~X~w~ annuler l'animation en cours",
        ['walkingstyles'] = "Style de marche",
        ['resetdef'] = "Volver a por defecto",
        ['normalreset'] = "Normal (Reset)",
        ['moods'] = "Moods",
        ['infoupdate'] = "Information",
        ['infoupdateav'] = "Information (Actualisation))",
        ['infoupdateavtext'] = "",
        ['suggestions'] = "Suggestions?",
        ['suggestionsinfo'] = "",
      ['notvaliddance'] = "Pas une danse valide",
      ['notvalidemote'] = "Pas une animation valide",
      ['nocancel'] = "Pas d'animation à annuler",
      ['maleonly'] = "Uniquement pour les hommes",
      ['emotemenucmd'] = "Utiliser /emotemenu pour ouvrir le menu",
      ['shareemotes'] = "👫 Emote partagés",
      ['shareemotesinfo'] = "Inviter une personne proche à réaliser l'animation",
      ['sharedanceemotes'] = "🕺 Danse partagée",
      ['notvalidsharedemote'] = "Pas une animation valide",
      ['sentrequestto'] = "Envoyer requête a ~y~",
      ['nobodyclose'] = "Personne ~r~proche~w~ de toi.",
      ['doyouwanna'] = "~y~Y~w~ pour accepter, ~r~L~w~ pour refuser (~g~",
      ['refuseemote'] = "Animation réfusée.",
      ['makenearby'] = "Rapprochez vous",
      ['camera'] = "Appuyer sur ~y~G~w~ pour utiliser le flash.",
      ['makeitrain'] = "Appuyer sur ~y~G~w~ pour qu'il pleuve.",
      ['pee'] = "Maintenez ~y~G~w~ pour uriner.",
      ['spraychamp'] = "Maintenez ~y~G~w~ pour secouer le champagne",
      ['bound'] = "Lien ",
      ['to'] = "a",
      ['currentlyboundemotes'] = " Animation liées:",
      ['notvalidkey'] = "Pas une touche valide",
      ['keybinds'] = "🔢 Touches",
      ['keybindsinfo'] = "Utiliser"
  },
}