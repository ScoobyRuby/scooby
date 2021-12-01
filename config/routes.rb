# frozen_string_literal: true

Scooby::Engine.routes.draw do
  resources :blogs
  root to: "blogs#index"
end
