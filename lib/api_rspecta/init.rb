# :enddoc:

if RSpec.respond_to?(:configure)
  RSpec.configure do |c|
    c.include ApiRspecta::ApiRequestsHelpers::JsonHelpers, type: :request
    c.include ApiRspecta::ApiRequestsHelpers::ResponseHelpers, type: :request
    c.include ApiRspecta::ApiRequestsHelpers::RequestHelpers, type: :request
  end
end
