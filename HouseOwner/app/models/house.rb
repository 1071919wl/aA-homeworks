class House < ApplicationRecord
    
    has_many(:persons, {
        primary_key: :id,
        foreign_key: :person_id,
        class_name: :Person
    })

end