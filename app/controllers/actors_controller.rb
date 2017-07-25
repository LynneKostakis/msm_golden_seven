class ActorsController < ApplicationController

def new_form
    
    


     
      
      render("actors/new_form_template.html.erb")
end   
  
  def process_create
    p = Actor.new
    p.name = params["the_name"]
    p.bio = params["the_bio"]
    p.dob = params["the_dob"]
    p.image_url = params["the_image_url"]
    p.save

    redirect_to("/actors")
  end 
  
  

  
  def index
      @actors = Actor.order(created_at: :desc)
 
     
     render("actors/index.html.erb")
  end   
  
  def edit_form
    
    @actor = Actor.find(params[:an_id])
 
      
    render("actors/edit_form_template.html.erb")

  end 
  
  def update_row
    p = Actor.find(params[:some_id])
    p.image_url = params["image_url"]
    p.name = params["name"]
    p.dob = params["dob"]
    p.bio = params["bio"]
    p.save
      
      
      redirect_to("/actors/" + params[:some_id])
  end 
  
  def show
     
     @actor = Actor.find(params[:an_id])


     render("actors/show.html.erb")
  end  
 
  def destroy_row  
    p = Actor.find(params[:toast_id]) 
    p.destroy
    
    redirect_to("/actors") 
  end
end



