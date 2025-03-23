class UpdateFreightStatusJob < ApplicationJob
  queue_as :default

  def perform(import_process_id)
    import_process = ImportProcess.find(import_process_id)
    new_status = ["Embarcado", "Em Trânsito", "Entregue", "Liberado", "Em Produção"].sample
    import_process.update(status: new_status)

    broadcast_replace_to "import_precesses", target: dom_id(import_process), partial: "import_process/import_process", locals: { import_process: import_process }
  end
end
