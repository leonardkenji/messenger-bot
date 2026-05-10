import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["item"]

  select(event) {
    this.itemTargets.forEach(item => item.removeAttribute("data-selected"))
    event.currentTarget.setAttribute("data-selected", "")
  }
}
