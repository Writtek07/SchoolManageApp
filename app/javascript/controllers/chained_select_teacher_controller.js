import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chained-select-teacher"
export default class extends Controller {
  static targets = ["remoteBtn"]
  connect() {
    this.remoteBtnTarget.hidden = true
  }

  autoSubmit() {
    this.remoteBtnTarget.click()
  }
}
