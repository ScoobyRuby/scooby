# frozen_string_literal: true

require "application_system_test_case"

module Scooby
  class BlogsTest < ApplicationSystemTestCase
    setup do
      @blog = scooby_blogs(:one)
    end

    test "visiting the index" do
      visit blogs_url
      assert_selector "h1", text: "Blogs"
    end

    test "creating a Blog" do
      visit blogs_url
      click_on "New Blog"

      fill_in "Content", with: @blog.content
      check "Is drafted" if @blog.is_drafted
      fill_in "Release date", with: @blog.release_date
      fill_in "Subtitle", with: @blog.subtitle
      fill_in "Title", with: @blog.title
      click_on "Create Blog"

      assert_text "Blog was successfully created"
      click_on "Back"
    end

    test "updating a Blog" do
      visit blogs_url
      click_on "Edit", match: :first

      fill_in "Content", with: @blog.content
      check "Is drafted" if @blog.is_drafted
      fill_in "Release date", with: @blog.release_date
      fill_in "Subtitle", with: @blog.subtitle
      fill_in "Title", with: @blog.title
      click_on "Update Blog"

      assert_text "Blog was successfully updated"
      click_on "Back"
    end

    test "destroying a Blog" do
      visit blogs_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Blog was successfully destroyed"
    end
  end
end