# coding: utf-8
class MembersController < ApplicationController
  respond_to :html, :json

  def index
    @members = Member.all
  end

  def new
    @member = Member.new
    respond_with(@member)
  end

  def create
    @member = Member.new(params[:member])

    respond_with(@member) do |wants|
      if @member.save
        flash[:notice] = "Membro adicionado com sucesso"
        wants.html { redirect_to @projects }
      else
        flash[:alert] = "Membro não adicionado"
        wants.html { render :new }
      end
    end
  end
end
