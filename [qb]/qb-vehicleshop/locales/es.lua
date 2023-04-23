local Translations = {
    error = {
        testdrive_alreadyin = "Ya se encuentra en prueba de manejo",
        testdrive_return = "Este no es tu vehículo para prueba de manejo",
        Invalid_ID = "ID de jugador inválida",
        playertoofar = "Este jugador no está lo suficientemente cerca",
        notenoughmoney = "No tienes suficiente dinero",
        minimumallowed = "Pago mínimo permitido es $",
        overpaid = "Has sobrepagado",
        alreadypaid = "El vehículo ya fue cancelado",
        notworth = "El vehículo no vale tanto",
        downtoosmall = "Pago inicial muy bajo",
        exceededmax = "Monto de pago máximo excedido",
        repossessed = "Tu vehículo con placa %{plate} ha sido embargado",
        buyerinfo = "No pude obtener la información del comprador",
        notinveh = "Debes estar en el vehículo si quieres transferirlo",
        vehinfo = "No pude obtener la información del vehículo",
        notown = "Este vehículo no es tuyo",
        buyertoopoor = "El comprador no tiene suficiente dinero",
        nofinanced = "No tienes ningún vehículo financiado",
        financed = "Este vehículo es financiado",
    },
    success = {
        purchased = "¡Felicidades por tu compra!",
        earned_commission = "Has ganado $%{amount} en comisión",
        gifted = "Has regalado tu vehículo",
        received_gift = "Te han regalado un vehículo",
        soldfor = "Has vendido tu vehículo por $",
        boughtfor = "Has comprado un vehículo por $",
    },
    menus = {
        vehHeader_header = "Opciones de vehículo",
        vehHeader_txt = "Interactúa con el vehículo seleccionado",
        financed_header = "Vehículos financiados",
        finance_txt = "Navega tu colección de vehículos",
        returnTestDrive_header = "Finalizar prueba de manejo",
        goback_header = "Ir atrás",
        veh_price = "Precio: $",
        veh_platetxt = "Placa: ",
        veh_finance = "Pago de vehículo",
        veh_finance_balance = "Balance total pendiente",
        veh_finance_currency = "$",
        veh_finance_total = "Total de pagos pendientes",
        veh_finance_reccuring = "Monto de pago recurrente",
        veh_finance_pay = "Realizar un pago",
        veh_finance_payoff = "Pagar totalidad de vehículo",
        veh_finance_payment = "Monto de pago ($)",
        submit_text = "Enviar",
        test_header = "Prueba de manejo",
        finance_header = "Financiar vehículo",
        swap_header = "Intercambiar vehículo",
        swap_txt = "Cambiar el vehículo seleccionado por otro",
        financesubmit_downpayment = "Monto de pago inicial - Min ",
        financesubmit_totalpayment = "Total de pagos - Max ",
        --Free Use
        freeuse_test_txt = "Ir a prueba de manejo con vehículo seleccionado",
        freeuse_buy_header = "Comprar vehículo",
        freeuse_buy_txt = "Comprar vehículo seleccionado",
        freeuse_finance_txt = "Financiar vehículo seleccionado",
        --Managed
        managed_test_txt = "Permitir realizar prueba de manejo a jugador",
        managed_sell_header = "Vender vehículo",
        managed_sell_txt = "Vender vehículo a jugador",
        managed_finance_txt = "Financiar vehículo a jugador",
        submit_ID = "ID de servidor (#)",
    },
    general = {
        testdrive_timer = "Tiempo restante de prueba de manejo:",
        vehinteraction = "Interacción de vehículo",
        testdrive_timenoti = "Tienes %{testdrivetime} minuto(s) restante(s)",
        testdrive_complete = "Prueba de manejo completada",
        paymentduein = "El pago de tu vehículo es en %{time} minutos",
        command_transfervehicle = "Regalar o vender tu vehículo",
        command_transfervehicle_help = "ID del comprador",
        command_transfervehicle_amount = "Monto de venta (opcional)",
    }
}

if GetConvar('qb_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
