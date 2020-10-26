# frozen_string_literal: true

require_relative 'member'

module CodePraise
  module Entity
    # Domain entity for any coding projects
    class Project < Dry::Struct
      include Dry.Types

      MAX_SIZE_KB = 1000

      attribute :id,        Integer.optional
      attribute :origin_id, Strict::Integer
      attribute :name,      Strict::String
      attribute :size,      Strict::Integer
      attribute :git_url,   Strict::String
      attribute :owner,     Member
      attribute :members,   Strict::Array.of(Member)

      def too_large?
        size > MAX_SIZE_KB
      end
    end
  end
end
