json.extract! printer, :id, :name, :isPrinting, :created_at, :updated_at
json.url printer_url(printer, format: :json)
