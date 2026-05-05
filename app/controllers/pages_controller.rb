class PagesController < ApplicationController
  def home
     @message = Message.last
   end
end
