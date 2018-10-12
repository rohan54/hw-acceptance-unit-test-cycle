require 'spec_helper'
require 'rails_helper'

describe Movie do
  context 'validation tests' do
    it 'should not return movie if no director' do
       # myParams1 = { :title=>"MyTitle", :rating=>"R", :description=>"", :release_date=>"", :director=>"MyDirector", :id =>"1"}
        Movie.find_by_director nil.should be nil
    end
  end
end