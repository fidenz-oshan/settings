ActiveAdmin.register Settings::Scope, as: 'Setting' do
  # menu false
  actions :all, except: [:new, :destroy]

  permit_params :id, settings_attributes: [:id, :value, :order_id]

  form do |f|
    f.inputs resource.title do
      f.has_many :settings, new_record: false, heading: false, sortable: :order_id do |setting_f|
        case setting_f.object.input_type
        when 'video'
          setting_f.input :value, label: setting_f.object.title, as: :rich_picker, config: {
            style: 'width: 400px !important;', type: 'video'
          }
        when 'input'
          setting_f.input :value, label: setting_f.object.title
        when 'dropdown'
          setting_f.input :value, label: setting_f.object.title, as: :select2, collection: setting_f.object.input_values.split(',').map { |e| [e.to_s, e.to_s] }
        when 'radio'
          setting_f.input :value, label: setting_f.object.title, as: :radio
        when 'checkbox'
          setting_f.input :value, label: setting_f.object.title, as: :check_boxes, collection: setting_f.object.input_values.split(',').map { |e| [e.to_s, e.to_s] }
        end
        setting_f.semantic_errors
      end
    end
    f.actions
  end

  controller do
    def update
      params[:scope][:settings_attributes].each do |_key, setting|
        stng = Settings::Setting.find(setting[:id])
        stng.order_id = setting[:order_id]
        stng.value = setting[:value]
        stng.save!
      end
      super
    end
  end
end
