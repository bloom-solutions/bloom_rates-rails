module BloomTradeClient
  class BaseResponse
    include APIClientBase::Response.module

    attribute :body, String, lazy: true, default: :default_body
    attribute :errors, Hash, lazy: true, default: :default_errors

    private

    def default_body
      JSON.parse(raw_response.body).with_indifferent_access
    end

    def default_errors
      errors = body[:errors]
      errors.with_indifferent_access.deep_symbolize_keys if errors.present?
    end
  end
end

