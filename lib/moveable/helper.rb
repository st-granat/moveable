# coding: utf-8
module Moveable
  module BaseHelper
    def link_to_move_element(object)
      object_type = object_classify(object)
      link_1 =
      # left_sibling - is for gem awesome_nested_set
      if !object.left_sibling.blank?
        "<a data-method=\"post\" title=\"Передвинуть выше\" href=\"/admin/#{object_type}/#{object.id}/move_up\">
          <img alt=\"\" src=\"#{asset_path('tree/up.png')}\" />
        </a>"
      else
        "<img alt=\"\" src=\"#{asset_path('tree/up_default.png')}\">"
      end
      link_2 =
      # right_sibling - is for gem awesome_nested_set
      if !object.right_sibling.blank?
        "<a data-method=\"post\" title=\"Передвинуть ниже\" href=\"/admin/#{object_type}/#{object.id}/move_down\">
          <img alt=\"\" src=\"#{asset_path('tree/down.png')}\" />
        </a>"
      else
        "<img alt=\"\" src=\"#{asset_path('tree/down_default.png')}\">"
      end
      raw(link_1 + link_2)
    end

    def object_classify(object=nil)
      return if object.nil?
      # object.class.to_s.pluralize.downcase
      object.class.table_name
    end

    def movable_css_classes(object)
      classes = []
      classes << 'movable-first' if object.first?
      classes << 'movable-last' if object.last?
      classes.join(' ')
    end

    def nested_movable_css_classes(object)
      classes = []
      classes << 'movable-first' if object.left_sibling.nil?
      classes << 'movable-last' if object.right_sibling.nil?
      classes.join(' ')
    end
  end
end
