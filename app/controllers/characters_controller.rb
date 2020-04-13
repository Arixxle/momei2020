class CharactersController < ApplicationController
  require 'json'
  def index
    # @random_race = random_race.sample
    # @random_op1 = ["", ""]
    # @random_op2 = ["", ""]
  end

  def create
    # @random_race = random("race").sample
    # @random_role = random("role").sample
    # @random_role = random_role.sample
    # render html:params[:role_creater]
    # a = params[:role_creater]
    a = params[:option]
    b = params[:option2]
    c = params[:option3]
    d = params[:option4]
    e = params[:option5].to_i
    # @random_race = random(a[:role]).sample
    @random_op1 = random(a, e)
    @random_op2 = random(b, e)
    @random_op3 = random(c, e)
    @random_op4 = random(d, e)
    @r = @random_op1.zip(@random_op2, @random_op3, @random_op4).flatten
    
    render :index
  end


  private
  def random(title, num=1)
    data = File.read('app/assets/momei-data.json')
    rawdata = JSON.parse(data)
    t = title
    n = num
    list = []
    rawdata.each do |r|
      if r[t] != ""
        list << r[t]
      end
    end
    list.sample(n)
  end
end
