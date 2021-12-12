# frozen_string_literal: true

module Scooby
  class Blog < ApplicationRecord
    has_one_attached :banner_image
  end
end
