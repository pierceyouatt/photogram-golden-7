class PicturesController < ApplicationController

  def index
    @list_of_photos = Photo.all
    render("/pictures_templates/index_view.html.erb")
  end
  def show
    p_id = params.fetch("id")
    @my_photo = Photo.find(p_id)
    render("/pictures_templates/show_view.html.erb")
  end
  def new_form
    render("/pictures_templates/new_form_view.html.erb")
  end
  def create_row
    new_source = params.fetch("the_source")
    new_caption = params.fetch("the_caption")
    p = Photo.new
    p.source = new_source
    p.caption = new_caption
    p.save
#    redirect_to("/photos/" + p.id.to_s)
    @Photo_count = Photo.count
    render("/pictures_templates/create_row_view.html.erb")
  end
  def edit_form
    edit_id = params.fetch("id")
    @edit_photo = Photo.find(edit_id)
    render("/pictures_templates/edit_form_view.html.erb")
  end
  def update_row
    update_id = params.fetch("id")
    update_source = params.fetch("the_source")
    update_caption = params.fetch("the_caption")
    p = Photo.find(update_id)
    p.source = update_source
    p.caption = update_caption
    p.save
    render("/pictures_templates/update_row_view.html.erb")
  end
  def destroy_row
    delete_id = params.fetch("id")
    delete_photo = Photo.find(delete_id)
    delete_photo.destroy
    redirect_to("/photos")
    #render("/pictures_templates/destroy_row_view.html.erb")
  end




end
