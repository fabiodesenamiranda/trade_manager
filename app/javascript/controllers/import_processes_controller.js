import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["products"]

  connect() {
    console.log("ImportProcessesController conectado!");
  }

  addProduct(event) {
    event.preventDefault();
    let newField = this.productsTarget.querySelector(".nested-fields").cloneNode(true);
    this.productsTarget.appendChild(newField);
  }

  removeProduct(event) {
    event.preventDefault();
    event.target.closest(".nested-fields").remove();
  }
}
