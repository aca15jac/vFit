class HomepageController < ApplicationController

  def home
    @title = "vFit"
  end


  def post
    @title = "vFit"
    if !params[:weightreps].nil?
      @weight = params[:weightreps]["weight"]
      @reps = params[:weightreps]["reps"]
      if is_number?(@weight) && is_number?(@reps) && @reps.to_i < 13
        @weight = @weight.to_f
        @reps = @reps.to_i
      else
        @false_values = true
      end
    else
      @false_values = true
    end
    render 'post'
  end

  def is_number? string
    true if Float(string) rescue false
  end
end
