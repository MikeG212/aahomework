class Pokemon < ActiveRecord::Base
belongs_to: :trainer,
    primary_key: :id,
    foreign_key: :trainer_id,
    class_name: 'Trainer'
end
