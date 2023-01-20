class ServiceRequestLog < ApplicationRecord

  PaperTrail.request.disable_model(ServiceRequestLog)
  validates :http_method, :url, presence: true
  enum http_method: { GET: 1, POST: 2, PUT: 3, DELETE: 4 }
end
