document.addEventListener("turbo:load", () => {
    $('.select2').select2({
      theme: "bootstrap4",
      width: '100%',
      placeholder: "Selecione um Agente",
      allowClear: true
    });
  });