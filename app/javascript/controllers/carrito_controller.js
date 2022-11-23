import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="carrito"
export default class extends Controller {
  connect() {
    console.log("Hello Stimulus")
  }
}
