class StaticPagesController < ApplicationController

  def home
    @popular_goals = Goal.all
  end

  def help
  end

  def about
  end

  def contact
  end
end
