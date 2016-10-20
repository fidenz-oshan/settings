ActiveAdmin.register Settings::Scope as 'Setting' do
  # menu false
  actions :all, except: [:new, :destroy]

  permit_params :name, option_attributes: [:id, :value]

  form do |f|
    f.inputs resource.name do
      f.has_many :settings, new_record: false, heading: false, sortable: :order_id do |option|
        case option.object.input_type
        when 'input'
          return option.input :value, label: option.object.key
        when 'select'
          return option.input :value, label: option.object.key, as: :select2, collection: option.object.input_values.split(',').map { |e| [e.to_s, e.to_s] }
        when 'radio'
          return option.input :value, label: option.object.key, as: :radio
        when 'checkbox'
          return option.input :value, label: option.object.key, as: :check_boxes, collection: option.object.input_values.split(',').map { |e| [e.to_s, e.to_s] }
        end
        option.semantic_errors
      end
    end
    f.actions
  end
end
