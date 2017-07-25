class MoviesController < ApplicationController

def new_form
    
    


     
      
      render("movies/new_form_template.html.erb")
  end   
  
  def process_create
    p = Movie.new
    p.title = params["the_title"]
    p.year = params["the_year"].to_i
    p.duration = params["the_duration"].to_i
    p.description = params["the_description"]
    p.image_url = params["the_image_url"]
    p.save

    redirect_to("/movies")
  end 
  
  

  
  def index
      @movies = Movie.order(created_at: :desc)
 
     
     render("movies/index.html.erb")
  end   
  
  def edit_form
    
    @movie = Movie.find(params[:an_id])
 
      
    render("movies/edit_form_template.html.erb")

  end 
  
  def update_row
    p = Movie.find(params[:some_id])
    p.title = params["title"]
    p.year = params["year"].to_i
    p.duration = params["duration"].to_i
    p.description = params["description"]
    p.image_url = params["image_url"]
    p.save
      
      
      redirect_to("/movies/" + params[:some_id])
  end 
  
  def show
     
     @movie = Movie.find(params[:an_id])


     render("movies/show.html.erb")
  end  
 
  def destroy_row  
    p = Movie.find(params[:toast_id]) 
    p.destroy
    
    redirect_to("/movies") 
  end
end



