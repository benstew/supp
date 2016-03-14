class StaticPagesController < ApplicationController

  def home
    @recent_goals = Goal.most_recent_first
  end

  def help
  end

  def about
  end

  def contact
  end

  def faq
  end
  
end
