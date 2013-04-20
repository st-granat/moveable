# coding: utf-8
module Moveable
  class Engine < ::Rails::Engine
    isolate_namespace Moveable
    initializer "moveable" do |app|
      ActionView::Base.send :include, Moveable::BaseHelper
    end
  end
end
