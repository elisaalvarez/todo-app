class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @list = List.find(params[:list_id])
    @task = @list.tasks.all
  end

  def new
    @list = List.find(params[:list_id])
    @task = @list.tasks.all
  end

  def edit
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
  end

  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.create(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @list, notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { redirect_to @list, notice: @task.errors }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
    @task.update(task_params)
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @list, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @list = List.find(params[:list_id])
    @task.destroy
    respond_to do |format|
      format.html { redirect_to @list, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:name, :description)
    end
end
