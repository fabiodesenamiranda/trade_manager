class ImportProcessCard < Phlex::Component
  def initialize(import_process:)
    @import_process = import_process
  end

  def template
    div class: "bg-white shadow rounded-lg pg-4" do
      h3 class: "text-lg font-bold" do
        text @import_process.process_number
      end
      p { "importador: #{@import_process.importer}" }
      p { "Fornecedor: #{@import_process.supplier}" }
      p { "Status: #{@import_process.status}" }
    end
  end
end