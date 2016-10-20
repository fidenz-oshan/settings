ActiveAdmin.register Settings::Scope, as: 'Setting' do
  # menu false
  actions :all, except: [:new, :destroy]

  permit_params settings_attributes: [:id, :value]

  form do |f|
    f.inputs resource.title do
      f.has_many :settings, new_record: false, heading: false, sortable: :order_id do |option|
        case option.object.input_type
        when 'video'
          option.input :value, label: option.object.title, as: :rich_picker, config: {
            style: 'width: 400px !important;', type: 'video'
          }
        when 'input'
          option.input :value, label: option.object.title
        when 'dropdown'
          option.input :value, label: option.object.title, as: :select2, collection: option.object.input_values.split(',').map { |e| [e.to_s, e.to_s] }
        when 'radio'
          option.input :value, label: option.object.title, as: :radio
        when 'checkbox'
          option.input :value, label: option.object.title, as: :check_boxes, collection: option.object.input_values.split(',').map { |e| [e.to_s, e.to_s] }
        end
        option.semantic_errors
      end
    end
    f.actions
  end
end
