local Translations = {
    error = {
        canceled = 'Abgebrochen',
        bled_out = 'Du bist ausgeblutet...',
        impossible = 'Aktion kann nicht ausgeführt werden...',
        no_player = 'Kein Spieler in der nähe',
        no_firstaid = 'Du benötigst ein Erste-Hilfe-Kasten',
        no_bandage = 'Du benötigst einen Verband',
        beds_taken = 'Die Betten sind belegt...',
        possessions_taken = 'Dir wurde alles abgenommen...',
        not_enough_money = 'Du hast nicht genügend Geld bei dir...',
        cant_help = 'Du kannst dieser Person nicht helfen...',
        not_ems = 'Du bist kein Rettungsdienst',
        not_online = 'Spieler nicht online'
    },
    success = {
        revived = 'Du hast eine Person wiederbelebt',
        healthy_player = 'Spieler ist gesund',
        helped_player = 'Du hast der Person geholfen',
        wounds_healed = 'Deine Wunden wurden geheilt!',
        being_helped = 'Dir wurde geholfen...'
    },
    info = {
        civ_died = 'Zivilist verstorben',
        civ_down = 'Zivilist Down',
        civ_call = 'Zivilisten Anruf',
        self_death = 'Er selbst oder ein NPC',
        wep_unknown = 'Unbekannt',
        respawn_txt = 'Wiederbelebung in: ~r~%{deathtime}~s~ Sekunden',
        respawn_revive = 'Halte [~r~E~s~] für %{holdtime} Sekunden um Wiederbelebt zu werden zu Preis von $~r~%{cost}~s~',
        bleed_out = 'Du blutest aus in: ~r~%{time}~s~ Sekunden',
        bleed_out_help = 'Du blutest aus in: ~r~%{time}~s~ Sekunden, dir kann geholfen werden',
        request_help = 'Drücke [~r~G~s~] für eine hilfeanfrage',
        help_requested = 'Rettungsdienst wurde verständigt',
        amb_plate = 'AMBU', -- Should only be 4 characters long due to the last 4 being a random 4 digits
        heli_plate = 'LIFE',  -- Should only be 4 characters long due to the last 4 being a random 4 digits
        status = 'Status Prüfung',
        is_staus = 'Ist %{status}',
        healthy = 'Du bist wieder ganz gesund!',
        safe = 'Krankenhaus Safe',
        pb_hospital = 'Pillbox Krankenhaus',
        pain_message = 'Dein %{limb} fühlt sich %{severity} an',
        many_places = 'Du hast schmerzen an verschiedenen Stellen...',
        bleed_alert = 'Du bist %{bleedstate}',
        ems_alert = 'Rettungsdienst Alarm - %{text}',
        mr = 'Herr.',
        mrs = 'Frau.',
        dr_needed = 'Ein Doktor wird im Pillbox Krankenhaus benötigt',
        ems_report = 'Rettungsdienst Report',
        message_sent = 'Nachricht zu senden',
        check_health = 'Prüfe die Gesunheit eines Spielers',
        heal_player = 'Heile einen Spieler',
        revive_player = 'Belebe einen Spieler',
        revive_player_a = 'Belebe einen Spieler oder dich selbst (Admin Only)',
        player_id = 'Spieler ID (may be empty)',
        pain_level = 'Setzt dein oder eines Spielers schmerzlevel (Admin Only)',
        kill = 'Töte einen Spieler oder dich selbst (Admin Only)',
        heal_player_a = 'Keile einen Spieler oder dich selbst (Admin Only)',
    },
    mail = {
        sender = 'Pillbox Krankenhaus',
        subject = 'Krankenhauskosten',
        message = 'Hallo %{gender} %{lastname}, <br /><br />Hiermit erhalten Sie eine Email über die Kosten ihres letzten Krankenhaus besuchs.<br />Die gesammt Kosten betragen: <strong>$%{costs}</strong><br /><br />Wir wünschen eine schnelle Genesung!'
    },
    states = {
        irritated = 'irritiert',
        quite_painful = 'leicht schmerzhaft',
        painful = 'schmerzhaft',
        really_painful = 'sehr schmerzhaft',
        little_bleed = 'wenig blutend...',
        bleed = 'blutend...',
        lot_bleed = 'etwas mehr blutend...',
        big_bleed = 'sehr stark blutend...',
    },
    menu = {
        amb_vehicles = 'Rettungsdienst Fahrzeuge',
        close = '⬅ Schließe Menu',
    },
    text = {
        pstash_button = '~g~E~w~ - Persönliches Fach',
        pstash = 'Persönliches Fach',
        onduty_button = '~g~E~w~ - Dienst antretten',
        offduty_button = '~r~E~w~ - Dienst quittieren',
        duty = 'In/Ausser Dienst',
        armory_button = '~g~E~w~ - Waffenschrank',
        armory = 'Waffenschrank',
        storeveh_button = '~g~E~w~ - Verwahre Fahrzeug',
        veh_button = '~g~E~w~ - Fahrzeuge',
        storeheli_button = '~g~E~w~ - Verwahre Helikopter',
        heli_button = '~g~E~w~ - Nimm einen Helikopter',
        elevator_roof = '~g~E~w~ - Benutze Aufzug aufs Dach',
        elevator_main = '~g~E~w~ - Benutze Aufzug runter',
        bed_out = '~g~E~w~ - Um aus dem Bett zu steigen..',
        call_doc = '~g~E~w~ - Arzt rufen',
        call = 'Rufe',
        check_in = '~g~E~w~ - Einchecken',
        check = 'Einchecken',
        lie_bed = '~g~E~w~ - Um ins Bett zu legen'
    },
    body = {
        head = 'Kopf',
        neck = 'Nacken',
        spine = 'Wirbelsäule',
        upper_body = 'Oberer Körper',
        lower_body = 'Unterer Körper',
        left_arm = 'Linker Arm',
        left_hand = 'Linke Hand',
        left_fingers = 'Linke Finger',
        left_leg = 'Linkes Bein',
        left_foot = 'Linker Fuß',
        right_arm = 'Rechter Arm',
        right_hand = 'Rechte Hand',
        right_fingers = 'Rechte Finger',
        right_leg = 'Rechtes Bein',
        right_foot = 'Rechter Fuß',
    },
    progress = {
        ifaks = 'Benutze Erste-Hilfe-Kasten...',
        bandage = 'Benutze Verband...',
        painkillers = 'Nehme Schmerzmittel...',
        revive = 'Wiederbelebe Person...',
        healing = 'Wunden heilen...',
        checking_in = 'Checke ein...',
    },
    logs = {
        death_log_title = "%{playername} (%{playerid}) is gestorben",
        death_log_message = "%{killername} tötete %{playername} mit einer/einem **%{weaponlabel}** (%{weaponname})",
    }
}

if GetConvar('qb_locale', 'en') == 'de' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
