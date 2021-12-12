# frozen_string_literal: true

Dummy::Application.routes.draw do
  mount Scooby::Engine => "/blogs"
  root to: "blogs#index"
end
