class PicturesController < ApplicationController

  def index
    render("/pictures_templates/index_view.html.erb")
  end
  def show
    render("/pictures_templates/show_view.html.erb")
  end
  def new_form
    render("/pictures_templates/new_form_view.html.erb")
  end
  def create_row
    render("/pictures_templates/create_row_view.html.erb")
  end
  def edit_form
    render("/pictures_templates/edit_form_view.html.erb")
  end
  def update_row
    render("/pictures_templates/update_row_view.html.erb")
  end
  def destroy_row
    render("/pictures_templates/destroy_row_view.html.erb")
  end




end
