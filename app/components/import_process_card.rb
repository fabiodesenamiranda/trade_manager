class ImportProcessCard < Phlex::HTML
  def initialize(import_process:)
    @import_process = import_process
  end

  def view_template
    div class: "bg-white shadow-md rounded-lg p-4 border border-gray-200" do
      h3 class: "text-lg font-semibold text-gray-800" do
        "Processo: #{@import_process.process_number}"
      end

      p class: "text-gray-600" do
        "Importador: #{@import_process.importer}"
      end

      p class: "text-gray-600" do
        "Fornecedor: #{@import_process.supplier}"
      end

      p class: "text-gray-600" do
        "Produto: #{@import_process.product_description}"
      end

      p class: "text-gray-600" do
        "Status: #{@import_process.status}"
      end
    end
  end
end
