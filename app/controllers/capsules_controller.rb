class CapsulesController < ApplicationController
  def initiate
  end

  def new
    @capsule = Capsule.new
    render("capsules/new.html.erb")
  end

  def create
    @capsule = Capsule.new

    @capsule.name = params[:name]
    @capsule.category = params[:category]
    @capsule.media = params[:media]
    @capsule.emotion = params[:emotion]
    @capsule.description = params[:description]
    @capsule.owner_id = params[:owner_id]

    save_status = @capsule.save

    if save_status == true
      redirect_to("/capsules/#{@capsule.id}/choose_recipients", :notice => "Capsule created successfully.")
    else
      render("capsules/new.html.erb", :notice => "Error in creating capsule")
    end
  end
  
  def choose_recipients
    @capsule = Capsule.find(params[:id])
  end
  
  def index
    @capsules = Capsule.all

    render("capsules/index.html.erb")
  end

  def show
    @capsule = Capsule.find(params[:id])

    render("capsules/show.html.erb")
  end



  def edit
    @capsule = Capsule.find(params[:id])

    render("capsules/edit.html.erb")
  end

  def update
    @capsule = Capsule.find(params[:id])

    @capsule.name = params[:name]
    @capsule.type = params[:type]
    @capsule.media = params[:media]
    @capsule.emotion = params[:emotion]
    @capsule.description = params[:description]
    @capsule.owner_id = params[:owner_id]

    save_status = @capsule.save

    if save_status == true
      redirect_to("/capsules/#{@capsule.id}", :notice => "Capsule updated successfully.")
    else
      render("capsules/edit.html.erb")
    end
  end

  def destroy
    @capsule = Capsule.find(params[:id])

    @capsule.destroy

    if URI(request.referer).path == "/capsules/#{@capsule.id}"
      redirect_to("/", :notice => "Capsule deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Capsule deleted.")
    end
  end
end
