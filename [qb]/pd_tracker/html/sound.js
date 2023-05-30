var interval = 1000
var scanning = true
var beep = new Audio("beep.wav")

window.addEventListener('message', (event) => {
    if (event.data.event == "playSound") {
        beep.play()
    }
})
