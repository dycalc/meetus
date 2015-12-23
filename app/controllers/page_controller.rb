class PageController < ApplicationController
  def welcome
    @issues = [ { title: "Ruby lover", comments: "4"}, { title: "Rails and Laravel", comments: "5"}]
  end
end
