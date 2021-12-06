(function () {
    let copy = ''
    let transcripts = document.querySelectorAll("#body > ytd-transcript-body-renderer > div")
    let screenshotButton = document.querySelector('.ssBtnYouTube')

    transcripts.forEach((transcript, i) => {
        setTimeout(() => {
            let button = transcript.querySelector("div > div[role='button']")
            copy += `${button.innerText}\n`
            button.click()
            screenshotButton.click()
            if (i === transcripts.length - 1) console.log(copy)
        }, i * 1000)
    })
})()