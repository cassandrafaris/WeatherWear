class ArticleOfClothingsController < ApplicationController
  # GET /article_of_clothings
  # GET /article_of_clothings.json
  def index
    @article_of_clothings = ArticleOfClothing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @article_of_clothings }
    end
  end

  # GET /article_of_clothings/1
  # GET /article_of_clothings/1.json
  def show
    @article_of_clothing = ArticleOfClothing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @article_of_clothing }
    end
  end

  # GET /article_of_clothings/new
  # GET /article_of_clothings/new.json
  def new
    @article_of_clothing = ArticleOfClothing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @article_of_clothing }
    end
  end

  # GET /article_of_clothings/1/edit
  def edit
    @article_of_clothing = ArticleOfClothing.find(params[:id])
  end

  # POST /article_of_clothings
  # POST /article_of_clothings.json
  def create
    @article_of_clothing = ArticleOfClothing.new(params[:article_of_clothing])

    respond_to do |format|
      if @article_of_clothing.save
        format.html { redirect_to @article_of_clothing, notice: 'Article of clothing was successfully created.' }
        format.json { render json: @article_of_clothing, status: :created, location: @article_of_clothing }
      else
        format.html { render action: "new" }
        format.json { render json: @article_of_clothing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /article_of_clothings/1
  # PUT /article_of_clothings/1.json
  def update
    @article_of_clothing = ArticleOfClothing.find(params[:id])

    respond_to do |format|
      if @article_of_clothing.update_attributes(params[:article_of_clothing])
        format.html { redirect_to @article_of_clothing, notice: 'Article of clothing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @article_of_clothing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /article_of_clothings/1
  # DELETE /article_of_clothings/1.json
  def destroy
    @article_of_clothing = ArticleOfClothing.find(params[:id])
    @article_of_clothing.destroy

    respond_to do |format|
      format.html { redirect_to article_of_clothings_url }
      format.json { head :no_content }
    end
  end
end
