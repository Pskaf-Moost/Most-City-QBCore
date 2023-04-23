local Translations = {
    error = {
        canceled = 'ألغيت',
        bled_out = 'لقد نزفت',
        impossible = 'غير ممكن',
        no_player = 'لا يوجد لاعب بالجوار',
        no_firstaid = 'أنت بحاجة إلى حقيبة إسعافات أولية',
        no_bandage = 'أنت بحاجة إلى ضمادات',
        beds_taken = 'الأسرة مشغولة',
        possessions_taken = 'تم أخذ جميع ممتلكاتك',
        not_enough_money = 'ليس لديك ما يكفي من المال عليك',
        cant_help = 'لا يمكنك مساعدة هذا الشخص',
        not_ems = 'لست بمسعف',
        not_online = 'اللاعب غير متصل'
    },
    success = {
        revived = 'لقد أحيت شخصًا',
        healthy_player = 'اللاعب بصحة جيدة',
        helped_player = 'لقد ساعدت الشخص',
        wounds_healed = 'لقد التئمت جروحك',
        being_helped = 'يتم مساعدتك'
    },
    info = {
        civ_died = 'موت مواطن',
        civ_down = 'سقوط مواطن',
        civ_call = 'اتصال مواطن',
        self_death = 'قتل نفسه او قتله سكان اصلي',
        wep_unknown = 'غير معروف',
        respawn_txt = '~r~%{deathtime}~w~ ﻝﻼﺧ ﺕﻮﻤﻟﺍ',
        respawn_revive = '[~r~Hold E~w~] %{holdtime}~w~ ﻥﻭﺎﺒﺳﺭ $~r~%{cost}~s~',
        bleed_out = 'ﺔﻴﻧﺎﺛ ~r~%{time}~w~ :ﻲﻓ ﻑﺰﻨﺗ ﻑﻮﺳ',
        bleed_out_help = 'ﻚﺗﺪﻋﺎﺴﻣ ﻦﻜﻤﻳ ﻭ ﺔﻴﻧﺎﺛ ~r~%{time}~w~ :ﻲﻓ ﻑﺰﻨﺗ ﻑﻮﺳ',
        request_help = '[~r~G~s~] - ﺓﺪﻋﺎﺴﻤﻟﺍ ﺐﻠﻄﻟ',
        help_requested = 'ﺓﺪﻋﺎﺴﻤﻟﺍ ﺐﻠﻃ ﻢﺗ',
        amb_plate = 'AMBU', -- Should only be 4 characters long due to the last 4 being a random 4 digits
        heli_plate = 'LIFE',  -- Should only be 4 characters long due to the last 4 being a random 4 digits
        status = 'فحص الحالة',
        is_staus = '%{status} انه',
        healthy = 'أنت بصحة جيدة مرة أخرى',
        safe = 'مستشفى آمن',
        pb_hospital = 'Pillbox Hospital',
        pain_message = '%{limb} %{severity}',
        many_places = 'لديك ألم في أماكن كثيرة',
        bleed_alert = '%{bleedstate} انت',
        ems_alert = 'ﻪﻴﺒﻨﺗ - %{text}',
        mr = 'السيد.',
        mrs = 'السيدة.',
        dr_needed = 'مطلوب طبيب في مستشفى بيل بوكس',
        ems_report = 'تقرير الاسعاف',
        message_sent = 'سيتم إرسال الرسالة',
        check_health = 'تحقق من صحة اللاعبين',
        heal_player = 'مساعدة شخص',
        revive_player = 'إحياء شخص',
        revive_player_a = 'إحياء لاعب أو نفسك (المسؤول فقط)',
        player_id = 'معرف اللاعب (قد يكون فارغا)',
        pain_level = 'قم بتعيين مستوى الألم الخاص بك أو مستوى اللاعبين (المسؤول فقط)',
        kill = 'اقتل لاعبًا أو قتل نفسك (المسؤول فقط)',
        heal_player_a = 'شفاء لاعب أو نفسك (المسؤول فقط)',
    },
    mail = {
        sender = 'مستشفى بيلبوكس',
        subject = 'تكاليف المستشفى',
        message = 'مرحبا %{gender} %{lastname}, <br /><br />بموجب هذا تلقيت رسالة بريد إلكتروني بتكاليف الزيارة الأخيرة للمستشفى<br />أصبحت التكاليف النهائية: <strong>$%{costs}</strong><br /><br />نتمنى لك الشفاء العاجل'
    },
    states = {
        irritated = 'منزعج',
        quite_painful = 'مؤلم جدا',
        painful = 'مؤلم',
        really_painful = 'مؤلم حقا',
        little_bleed = 'ينزف قليلا',
        bleed = 'نزيف',
        lot_bleed = 'ينزف كثيرا',
        big_bleed = 'ينزف كثيرا',
    },
    menu = {
        amb_vehicles = 'سيارات المستشفى',
        close = '⬅ اغلاق',
    },
    text = {
        pstash_button = '~g~E~w~ - ﺔﻴﺼﺨﺸﻟﺍ ﺔﻧﺰﺨﻟﺍ',
        pstash = 'ﺔﻴﺼﺨﺸﻟﺍ ﺔﻧﺰﺨﻟﺍ',
        onduty_button = '~g~E~w~ - ﺔﻣﺪﺨﻟﺍ ﻝﻮﺧﺩ',
        offduty_button = '~r~E~w~ - ﺔﻣﺪﺨﻟﺍ ﻦﻣ ﺝﻭﺮﺨﻟﺍ',
        duty = 'ﺔﻣﺪﺨﻟﺍ ﺔﻟﺎﺣ',
        armory_button = '~g~E~w~ - ﺔﻧﺰﺨﻟﺍ',
        armory = 'ﺔﻧﺰﺨﻟﺍ',
        storeveh_button = '~g~E~w~ - ﺝﺍﺮﻐﻟﺍ',
        veh_button = '~g~E~w~ - ﺝﺍﺮﻐﻟﺍ',
        storeheli_button = '~g~E~w~ - ﺝﺍﺮﻐﻟﺍ',
        heli_button = '~g~E~w~ - ﺝﺍﺮﻐﻟﺍ',
        elevator_roof = '~g~E~w~ - ﺢﻄﺴﻟﺍ ﻰﻟﺇ ﺪﻌﺼﻤﻟﺍ ﺬﺧ',
        elevator_main = '~g~E~w~ - ﻞﻔﺳﻷ ﺪﻌﺼﻤﻟﺍ ﺬﺧ',
        bed_out = '~g~E~w~ - ﺮﻳﺮﺴﻟﺍ ﻦﻣ ﺽﻮﻬﻨﻟﺍ',
        call_doc = '~g~E~w~ - ﺭﻮﺘﻛﺪﻟﺎﺑ ﻞﺼﺗﺍ',
        call = 'ﻞﺼﺗﺍ',
        check_in = '~g~E~w~ - ﻖﻘﺤﺗ',
        check = 'ﻖﻘﺤﺗ',
        lie_bed = '~g~E~w~ - ﺮﻳﺮﺴﻟﺍ ﻰﻠﻋ ﺀﺎﻘﻠﺘﺳﺍ'
    },
    body = {
        head = 'رأس',
        neck = 'رقبه',
        spine = 'العمود الفقري',
        upper_body = 'الجزء العلوي',
        lower_body = 'الجسم السفلي',
        left_arm = 'الذراع الأيسر',
        left_hand = 'اليد اليسرى',
        left_fingers = 'الأصابع اليسرى',
        left_leg = 'الساق اليسرى',
        left_foot = 'القدم اليسرى',
        right_arm = 'الذراع الأيمن',
        right_hand = 'اليد اليمنى',
        right_fingers = 'الاصابع اليمنى',
        right_leg = 'الساق اليمنى',
        right_foot = 'القدم اليمنى',
    },
    progress = {
        ifaks = 'أخذ حبوب',
        bandage = 'استخدام الضمادات',
        painkillers = 'أخذ المسكنات',
        revive = 'إحياء الشخص',
        healing = 'شفاء الجروح',
        checking_in = 'تسجيل الدخول',
    },
    logs = {
        death_log_title = "%{playername} (%{playerid}) ميت",
        death_log_message = "%{killername} قتل %{playername} ب **%{weaponlabel}** (%{weaponname})",
    }
}

if GetConvar('qb_locale', 'en') == 'ar' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
