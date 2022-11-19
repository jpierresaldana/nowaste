import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience



application.debug = false
window.Stimulus   = application

import { Slideover } from "tailwindcss-stimulus-components"
application.register('slideover', Slideover)
export { Slideover}
export { application }
