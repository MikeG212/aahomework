class Trainer < ActiveRecord::Base
  has_many: :pokemon,
    primary_key: :id,
    foreign_key: :pokemon_id,
    class_name: 'Pokemon'
end
