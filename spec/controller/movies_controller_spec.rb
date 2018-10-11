# require 'spec_helper'

# describe MoviesController do
#   describe 'add director' do
#     before :each do
#       @m=mock(Movie, :title => "Star Wars", :director => "director", :id => "1")
#       Movie.stub!(:find).with("1").and_return(@m)
#     end
#     it 'should call update_attributes and redirect' do
#       @m.stub!(:update_attributes!).and_return(true)
#       put :update, {:id => "1", :movie => @m}
#       response.should redirect_to(movie_path(@m))
#     end
#   end
# end
# # require 'rails_helper'

# # describe MoviesController do
# #   describe 'Verify Movies search by director' do
# #     it 'should call Movie.similar_movies' do
# #       expect(Movie).to receive(:find_movies_by_director).with('Amelie')
# #       get :search, { title: 'Amelie' }
# #     end

# #     it 'should assign similar movies if director exists' do
# #       movies = ['Seven', 'The Social Network']
# #       Movie.stub(:find_movies_by_director).with('Seven').and_return(movies)
# #       get :search, { title: 'Seven' }
# #       expect(assigns(:find_movies_by_director)).to eql(movies)
# #     end

# #     it "should redirect to home page if director isn't known" do
# #       Movie.stub(:find_movies_by_director).with('No name').and_return(nil)
# #       get :search, { title: 'No name' }
# #       expect(response).to redirect_to(root_url)
# #     end
# #   end
# # end