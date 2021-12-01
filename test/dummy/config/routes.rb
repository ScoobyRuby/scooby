# frozen_string_literal: true

Rails.application.routes.draw do
  mount Scooby::Engine => "/blogs"
  root to: "blogs#index"
end
