# filepath: /home/fabio/Documentos/trade_manager/trade_manager/config/importmap.rb
pin "application"
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"