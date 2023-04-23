local Translations = {
    error = {
        canceled = 'Zrušené',
        bled_out = 'Vykrvácal si...',
        impossible = 'Akcia je nemožná...',
        no_player = 'Žiadny hráč v blízkosti',
        no_firstaid = 'Potrebuješ lekárničku',
        no_bandage = 'Potrebuješ obväzy',
        beds_taken = 'Postele sú obsadené...',
        possessions_taken = 'Všetok váš majetok, ktorý set mali pri sebe bol vzatý...',
        not_enough_money = 'Nemáš dostatok peňazí...',
        cant_help = 'Nemôžeš pomôcť tejto osobe...',
        not_ems = 'Nie si EMS',
        not_online = 'Hráč nie je online'
    },
    success = {
        revived = 'Oživil si osobu',
        healthy_player = 'Hráč je zdravý',
        helped_player = 'Pomohol si tejto osobe',
        wounds_healed = 'Tvoje rany sú zahojené!',
        being_helped = 'Niekto vám pomáha...'
    },
    info = {
        civ_died = 'Civilista zomrel',
        civ_down = 'Civilista v bezvedomí',
        civ_call = 'Hovor od civilistu',
        self_death = 'Sami alebo NPC',
        wep_unknown = 'Neznáme',
        respawn_txt = 'RESPAWN O: ~r~%{deathtime}~s~ SEKÚND',
        respawn_revive = 'DRŽ [~r~E~s~] NA %{holdtime} SEKÚND, PRE RESPAWN ZA $~r~%{cost}~s~',
        bleed_out = 'VYKRVÁCAŠ O: ~r~%{time}~s~ SEKÚND',
        bleed_out_help = 'VYKRVÁCAŠ O: ~r~%{time}~s~ SEKÚND, NIEKTO VÁM EŠTE MÔŽE POMÔCŤ',
        request_help = 'STLAČ [~r~G~s~] PRE POŽIADANIE O POMOC',
        help_requested = 'EMS PRESONÁL BOL UPOZORNENÝ',
        amb_plate = 'AMBU', -- Should only be 4 characters long due to the last 4 being a random 4 digits
        heli_plate = 'LIFE',  -- Should only be 4 characters long due to the last 4 being a random 4 digits
        status = 'Kontrola stavu',
        is_staus = 'je %{status}',
        healthy = 'Si opäť úplne zdravý!',
        safe = 'Nemocničný trezor',
        pb_hospital = 'Nemocnica Pillbox',
        pain_message = 'Tvoje %{limb} cítia %{severity}',
        many_places = 'Máte bolesti na mnohých miestach...',
        bleed_alert = 'Si %{bleedstate}',
        ems_alert = 'EMS Upozornenie - %{text}',
        mr = 'Pán',
        mrs = 'Pani',
        dr_needed = 'V nemocnici Pillbox je potrebný doktor',
        ems_report = 'EMS Nahlásenie',
        message_sent = 'Správa na odoslanie',
        check_health = 'Skontrolujte zdravie hráčov',
        heal_player = 'Uzdraviť hráča',
        revive_player = 'Oživiť hráča',
        revive_player_a = 'Oživiť seba samého alebo hráča (Len pre Adminov)',
        player_id = 'Hráčove ID (nepovinné)',
        pain_level = 'Nastaviť svoju úroveň bolesti alebo pre hráča (Len pre Adminov)',
        kill = 'Zabiť seba samého alebo hráča (Len pre Adminov)',
        heal_player_a = 'Uzdraviť seba samého alebo hráča (Admin Only)',
    },
    mail = {
        sender = 'Nemocnica Pillbox',
        subject = 'Nemocničné náklady',
        message = 'Vážený/á %{gender} %{lastname}, <br /><br />Dostali e-mail s nákladmi na poslednú návštevu nemocnice.<br />Konečné náklady: <strong>$%{costs}</strong><br /><br />Prajeme skoré uzdravenie!'
    },
    states = {
        irritated = 'podráždený',
        quite_painful = 'trochu bolestivé',
        painful = 'bolestivé',
        really_painful = 'veľmi bolestivé',
        little_bleed = 'menšie krvácanie...',
        bleed = 'krvácanie...',
        lot_bleed = 'veľa krvácanie...',
        big_bleed = 'masívne krvácanie...',
    },
    menu = {
        amb_vehicles = 'Nemocničné vozidlá',
        close = '⬅ Zatvoriť menu',
    },
    text = {
        pstash_button = '~g~E~w~ - Osobné úložisko',
        pstash = 'Osobné úložisko',
        onduty_button = '~g~E~w~ - Ísť do služby',
        offduty_button = '~r~E~w~ - Ísť mimo službu',
        duty = 'On/Off Duty',
        armory_button = '~g~E~w~ - Zbrojnica',
        armory = 'Zbrojnica',
        storeveh_button = '~g~E~w~ - Uložiť vozidlo',
        veh_button = '~g~E~w~ - Vozidlá',
        storeheli_button = '~g~E~w~ - Uložiť helikoptéru',
        heli_button = '~g~E~w~ - Vybrať helikoptéru',
        elevator_roof = '~g~E~w~ - Ísť na strechu pomocou výťahu',
        elevator_main = '~g~E~w~ - Ísť výťahom dole',
        bed_out = '~g~E~w~ - Vstatie z postele..',
        call_doc = '~g~E~w~ - Zavolať doktora',
        call = 'Zavolať',
        check_in = '~g~E~w~ - Prihlásiť sa',
        check = 'Prihlásiť sa',
        lie_bed = '~g~E~w~ - Ľahnutie na postel'
    },
    body = {
        head = 'Hlava',
        neck = 'Krk',
        spine = 'Chrbtica',
        upper_body = 'Horná časť tela',
        lower_body = 'Dolná časť tela',
        left_arm = 'Ľavé Rameno',
        left_hand = 'Ľavá Ruka',
        left_fingers = 'Prsty na Ľavej Ruke',
        left_leg = 'Ľavá noha',
        left_foot = 'Ľavé chodidlo',
        right_arm = 'Pravé rameno',
        right_hand = 'Pravá ruka',
        right_fingers = 'Prsty na Pravej Ruke',
        right_leg = 'Pravá noha',
        right_foot = 'Pravé chodidlo',
    },
    progress = {
        ifaks = 'Vyberáš lekárničku...',
        bandage = 'Používaš obväz...',
        painkillers = 'Berieš lieky proti bolesti...',
        revive = 'Oživuješ osobu...',
        healing = 'Hojíš rany...',
        checking_in = 'Registrujem...',
    },
    logs = {
        death_log_title = "%{playername} (%{playerid}) je mrtvý",
        death_log_message = "%{killername} zabil %{playername} s **%{weaponlabel}** (%{weaponname})",
    }
}

if GetConvar('qb_locale', 'en') == 'sk' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
