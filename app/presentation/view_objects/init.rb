# frozen_string_literal: true

require_relative 'decorators/init'

Dir.glob("#{__dir__}/*.rb").sort.each do |file|
  require file
end
