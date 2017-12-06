class SentCapsulesController < ApplicationController
  def index
    @sent_capsules = SentCapsule.all

    render("sent_capsules/index.html.erb")
  end

  def show
    @sent_capsule = SentCapsule.find(params[:id])

    render("sent_capsules/show.html.erb")
  end

  def new
    @sent_capsule = SentCapsule.new

    render("sent_capsules/new.html.erb")
  end

  def create
    @sent_capsule = SentCapsule.new

    @sent_capsule.capsule_id = params[:capsule_id]
    @sent_capsule.recipient_type = params[:recipient_type]
    @sent_capsule.ind_recipient_id = params[:ind_recipient_id]
    @sent_capsule.group_recipient_id = params[:group_recipient_id]

    save_status = @sent_capsule.save

    if save_status == true
      redirect_to("/sent_capsules/#{@sent_capsule.id}", :notice => "Sent capsule created successfully.")
    else
      render("sent_capsules/new.html.erb")
    end
  end

  def edit
    @sent_capsule = SentCapsule.find(params[:id])

    render("sent_capsules/edit.html.erb")
  end

  def update
    @sent_capsule = SentCapsule.find(params[:id])

    @sent_capsule.capsule_id = params[:capsule_id]
    @sent_capsule.recipient_type = params[:recipient_type]
    @sent_capsule.ind_recipient_id = params[:ind_recipient_id]
    @sent_capsule.group_recipient_id = params[:group_recipient_id]

    save_status = @sent_capsule.save

    if save_status == true
      redirect_to("/sent_capsules/#{@sent_capsule.id}", :notice => "Sent capsule updated successfully.")
    else
      render("sent_capsules/edit.html.erb")
    end
  end

  def destroy
    @sent_capsule = SentCapsule.find(params[:id])

    @sent_capsule.destroy

    if URI(request.referer).path == "/sent_capsules/#{@sent_capsule.id}"
      redirect_to("/", :notice => "Sent capsule deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Sent capsule deleted.")
    end
  end
end
