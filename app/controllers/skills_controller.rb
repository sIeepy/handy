class SkillsController < ApplicationController

  def index
    @skills = Skill.order(:name).where("name like ?", "%#{params[:term]}%")
    render json: @skills.map(&:name)
  end
end
