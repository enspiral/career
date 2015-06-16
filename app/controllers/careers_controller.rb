class CareersController < ApplicationController

  layout 'careers'

  def index
    render :layout => 'application'
  end

  def new
    @career = Career.new
  end

  def cv
    @careers = Career.all
  end


  def create
    @career = Career.new(career_params)

    respond_to do |format|
      if @career.save
        format.html
        format.js {render :template => 'careers/create', :locals => { :career => @career}  }

      else
        format.html { render :new, :locals => { :career => @career} }
      end
    end
  end

  def ruby
  end

  def ruby_f
  end


  def engineer
  end

  def engineer_f
  end

  def postgress
  end

  def postgress_f
  end

  def director
  end

  def director_f
  end

  def sme
  end

  def sme_f
  end

  def consumer
  end

  def consumer_f
  end


  private
  def career_params
    params.require(:career).permit(:full_name, :email, :phone_number, :attachment)
  end
end
