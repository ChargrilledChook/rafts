# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)

require "rafts"

require "minitest/autorun"
require "minitest/reporters"
require "rack/test"

Minitest::Reporters.use!
