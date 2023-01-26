require_relative "test_helper"

class TestApp < Rafts::Application; end

class RaftsAppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_request
    get "/"

    assert last_response.ok?
    body = last_response.body

    assert body["<h1>G'day big wheels 😉</h1>"]
  end
end
