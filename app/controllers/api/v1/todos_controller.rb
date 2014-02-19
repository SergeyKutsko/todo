class Api::V1::TodosController < ApplicationController
  inherit_resources
  defaults resource_class: ::Todo
  before_filter :authenticate_user!
  respond_to :json



  protected

  def begin_of_association_chain
    @begin_of_association_chain ||= current_user
  end

  private

  def permitted_params
    params.permit(:todo => [:description, :priority])
  end
end
