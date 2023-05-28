local Translations = {
    ui = {
        last_location = "Dernière Localisation",
        confirm = "Confirmer",
        where_would_you_like_to_start = "Où souhaitez-vous commencer ?",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})