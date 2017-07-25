class DirectorsController < ApplicationController

def new_form
    
    


     
      
      render("directors/new_form_template.html.erb")
  end   
  
  def process_create
    p = Director.new
    p.name = params["the_name"]
    p.bio = params["the_bio"]
    p.dob = params["the_dob"]
    p.image_url = params["the_image_url"]
    p.save

    redirect_to("/directors")
  end 
  
  

  
  def index
      @directors = Director.order(created_at: :desc)
 
     
     render("directors/index.html.erb")
  end   
  
  def edit_form
    
    @director = Director.find(params[:an_id])
 
      
    render("directors/edit_form_template.html.erb")

  end 
  
  def update_row
    p = Director.find(params[:some_id])
    p.image_url = params["image_url"]
    p.name = params["name"]
    p.dob = params["dob"]
    p.bio = params["bio"]
    p.save
      
      
      redirect_to("/directors/" + params[:some_id])
  end 
  
  def show
     
     @director = Director.find(params[:an_id])


     render("directors/show.html.erb")
  end  
 
  def destroy_row  
    p = Director.find(params[:toast_id]) 
    p.destroy
    
    redirect_to("/directors") 
  end
end



