class LessonsController < ApplicationController

  def index
      @lessons = Lesson.all
      @lesson = Lesson.new
      render('lessons/index.html.erb')
  end

  def new
    @lesson = Lesson.new
    render('lessons/new.html.erb')
  end

  def create
      @lesson = Lesson.new(:name => params[:name],
                            :number => params[:number],
                            :content => params[:content])
      if @lesson.save
      render('lessons/success.html.erb')
      else
      render('lessons/new.html.erb')
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html.erb')
  end

  def edit
    @lesson = Lesson.find(params[:id])
    render('lessons/edit.html.erb')
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(:name => params[:name],
                      :number => params[:number],
                      :content => params[:phone])
      render('lessons/success.html.erb')
    else
      render('lessons/edit.html.erb')
    end
  end
end
