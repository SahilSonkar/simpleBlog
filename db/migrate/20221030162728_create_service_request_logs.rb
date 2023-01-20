class CreateServiceRequestLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :service_request_logs do |t|
      t.string :url
      t.text :request
      t.text :response
      t.integer :http_method
      t.text :headers
      t.timestamps
    end
  end
end
