class ProposalsController < ApplicationController
  # GET /proposals
  # GET /proposals.json
  def index
    @proposals = Proposal.paginate(:per_page => 4, :page => params[:page]).search(params[:search])

    respond_to do |format|
      format.html # index.html.erb
      #format.json { render json: @proposals }
      format.pdf do
        render :pdf => "proposal_pdf", 
               :layout => 'pdf', 
               :show_as_html => params[:debug].present?
      end
    end
  end

  # GET /proposals/1
  # GET /proposals/1.json
  def show
    @proposal = Proposal.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      #format.json { render json: @proposal }
      format.pdf do
        render :pdf => "proposal", :template => "proposals/show"
      end
    end
  end

  # GET /proposals/new
  # GET /proposals/new.json
  def new
    @proposal = Proposal.new
  end

  # GET /proposals/1/edit
  def edit
    @proposal = Proposal.find(params[:id])
  end

  # POST /proposals
  # POST /proposals.json
  def create
    @proposal = Proposal.new(params[:proposal])

    respond_to do |format|
      if @proposal.save
        format.html { redirect_to @proposal, notice: 'Proposal was successfully created.' }
        format.json { render json: @proposal, status: :created, location: @proposal }
      else
        format.html { render action: "new" }
        format.json { render json: @proposal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /proposals/1
  # PUT /proposals/1.json
  def update
    @proposal = Proposal.find(params[:id])

    respond_to do |format|
      if @proposal.update_attributes(params[:proposal])
        format.html { redirect_to @proposal, notice: 'Proposal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @proposal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proposals/1
  # DELETE /proposals/1.json
  def destroy
    @proposal = Proposal.find(params[:id])
    @proposal.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Proposal was successfully deleted.' }
      format.json { head :no_content }
    end
  end
  
  def clean_select_multiple_params hash = params
  hash.each do |k, v|
    case v
    when Array then v.reject!(&:blank?)
    when Hash then clean_select_multiple_params(v)
    end
  end
  end
end
