let iframe = document.querySelector('iframe[context="Main"]').contentDocument
let style = document.createElement('style')
style.type = 'text/css'
style.innerHTML = `
.Polaris-Page_yisnh {
    max-width: 100% !important;
}
.Polaris-Layout__Section_1b1h1 {
    flex: unset !important;
}
iframe#page-description_ifr {
    height: 47vw !important;
}
`
iframe.head.appendChild(style)