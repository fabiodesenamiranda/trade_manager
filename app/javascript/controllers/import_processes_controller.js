import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["products"]

  addProduct(event) {
    event.preventDefault();

    const index = Date.now(); // Garante um identificador único para cada produto adicionado

    const template = `
      <div class="nested-fields" data-new-product="${index}">
        <select name="import_process[import_process_products_attributes][${index}][product_id]">
          <option value="">Selecione um produto</option>
          ${window.productsOptions} 
        </select>
        <input type="number" name="import_process[import_process_products_attributes][${index}][quantity]" placeholder="Quantidade" min="1" required>
        <input type="text" name="import_process[import_process_products_attributes][${index}][price]" placeholder="Preço" required>
        <button type="button" class="remove_product" data-action="click->import-processes#removeProduct">Remover</button>
      </div>
    `;

    this.productsTarget.insertAdjacentHTML("beforeend", template);
  }

  removeProduct(event) {
    event.preventDefault();
    event.target.closest(".nested-fields").remove();
  }
}
