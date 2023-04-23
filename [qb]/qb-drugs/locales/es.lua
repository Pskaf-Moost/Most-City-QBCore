local Translations = {
    error = {
        has_no_drugs = "No llevas ninguna droga contigo",
        not_enough_police = "No hay suficiente policía de servicio (%{polices} required)",
        no_drugs_left = "No quedan más drogas para vender",
        too_far_away = "Te has movido demasiado lejos",
        offer_declined = "La oferta declinó",
        no_player_nearby = "Ningún jugador cerca",
        pending_delivery = "Todavía necesita completar una entrega, ¿qué está esperando?",
        item_unavailable = "Este artículo no está disponible, tienes un reembolso",
        order_not_right = "Esto no cumple con el pedido",
        too_late = "Llegas muy tarde",
        dealer_already_exists = "Un dealer ya existe con este nombre",
        dealer_not_exists = "Este dealer no existe",
        no_dealers = "No se han colocado dealer",
        dealer_not_exists_command = "Dealer %{dealerName} no existe"
    },
    success = {
        helped_player = "Ayudaste a una persona",
        route_has_been_set = "La ruta a la ubicación de entrega se ha establecido en su mapa",
        teleported_to_dealer = "Te has teletransportado %{dealerName}",
        offer_accepted = "Oferta aceptada",
        order_delivered = "El pedido ha sido entregado",
        dealer_deleted = "Dealer %{dealerName} se ha eliminado"
    },
    info = {
        started_selling_drugs = "Empezaste a vender drogas",
        stopped_selling_drugs = "Dejaste de vender drogas",
        has_been_robbed = "Te han robado y has perdido %{bags} bag(s) %{drugType}",
        suspicious_situation = "Situación sospechosa",
        possible_drug_dealing = "Posible tráfico de drogas",
        drug_offer = "[E] %{bags}x %{drugLabel} por $%{randomPrice}? / [G] Rechazar oferta",
        target_drug_offer = "Vender %{bags}x %{drugLabel} for $%{randomPrice}?",
        search_ped = "Buscar ped",
        pick_up_button = "[E] Recoger",
        knock_button = "[E] Golpear",
        target_knock = 'Llamar a la puerta',
        target_deliver = 'Entregar drogas',
        target_openshop = 'Abrir tienda',
        target_request = 'Solicitar entrega',
        mystery_man_button = "[E] Comprar / [G] ayuda a tu amigo ($5000)",
        other_dealers_button = "[E] Comprar / [G] Comenzar mision",
        reviving_player = "Ayudando a la persona, retrocede...",
        dealer_name = "Dealer %{dealerName}",
        sending_delivery_email = "Estos son los productos, me mantendré en contacto por correo electrónico",
        mystery_man_knock_message = "Hola hijo mío, ¿qué puedo hacer por ti?",
        treated_fred_bad = "Desafortunadamente ya no hago negocios ... deberías haberme tratado mejor",
        fred_knock_message = "Yo %{firstName}, ¿Qué puedo hacer por ti?",
        no_one_home = "Parece que nadie está en casa",
        delivery_info_email = "Aquí hay toda la información sobre la entrega, <br>Items: <br> %{itemAmount}x %{itemLabel}<br><br> llegar a tiempo",
        deliver_items_button = "[E] %{itemAmount}x %{itemLabel} deliver",
        delivering_products = "Entrega de productos ...",
        drug_deal_alert = "911: El tráfico de drogas",
        perfect_delivery = "Hiciste un buen trabajo, espero verte de nuevo ;)<br><br>Saludos, %{dealerName}",
        bad_delivery = "He recibido quejas sobre su entrega, no dejes que esto vuelva a suceder.",
        late_delivery = "No eras a tiempo.¿Tenías cosas más importantes que hacer que los negocios?",
        police_message_server = "Se ha ubicado una situación sospechosa en %{street}, posible acuerdo de drogas",
        drug_deal = "El tráfico de drogas",
        newdealer_command_desc = "Colocar un dealer (Admin Only)",
        newdealer_command_help1_name = "nombre",
        newdealer_command_help1_help = "Nombre de Dealer",
        newdealer_command_help2_name = "min",
        newdealer_command_help2_help = "Tiempo mínimo",
        newdealer_command_help3_name = "max",
        newdealer_command_help3_help = "Tiempo máximo",
        deletedealer_command_desc = "Eliminar un dealer (Admin Only)",
        deletedealer_command_help1_name = "nombre",
        deletedealer_command_help1_help = "Nombre de Dealer",
        dealers_command_desc = "Ver a todos los dealer (Admin Only)",
        dealergoto_command_desc = "Teletransportarse a un dealer (Admin Only)",
        dealergoto_command_help1_name = "nombre",
        dealergoto_command_help1_help = "Nombre de Dealer",
        list_dealers_title = "Lista de todos los dealer: ",
        list_dealers_name_prefix = "Nombre: "
    }
}

if GetConvar('qb_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
