* Issue: Had to drop and reset my db
*   When I did this, I got a NameError uninitialized constant
*   the application_record.rb had been deleted.
*   I created a new application_record.rb in the model folder and added 
    class ApplicationRecord < ActiveRecord::Base
        self.abstract_class = true
    end
