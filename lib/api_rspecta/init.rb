# :enddoc:

if RSpec.respond_to?(:configure)
  RSpec.configure do |c|
    c.include ApiRspecta::ApiRequestsHelpers::JsonHelpers, type: :api
    c.include ApiRspecta::ApiRequestsHelpers::ResponseHelpers, type: :api
    c.include ApiRspecta::ApiRequestsHelpers::RequestHelpers, type: :api
  end
end
