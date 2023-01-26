# frozen_string_literal: true

require_relative "rafts/version"
require_relative "rafts/array"

module Rafts
  class Error < StandardError; end

  class Application
    def call(_env)
      `echo debug > debug.txt`

      [
        200,
        { "content-type" => "text/html" },
        ["<h1>G'day big wheels 😉</h1>"]
      ]
    end
  end
end
