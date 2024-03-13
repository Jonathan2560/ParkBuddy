import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {
  static targets = ["group1", "group2", "group3", "group4", "group5"]

  connect() {

  }

  forward1() {
    this.group1Target.classList.add("d-none")
    this.group2Target.classList.remove("d-none")
  }

  forward2() {
    this.group2Target.classList.add("d-none")
    this.group3Target.classList.remove("d-none")
  }

  forward3() {
    this.group3Target.classList.add("d-none")
    this.group4Target.classList.remove("d-none")
  }

  forward4() {
    this.group4Target.classList.add("d-none")
    this.group5Target.classList.remove("d-none")
  }
}
