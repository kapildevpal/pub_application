class Menu < ApplicationRecord
    belongs_to :pub_profile
    enum item_type: { food: 0, alcohol: 1 }
end
