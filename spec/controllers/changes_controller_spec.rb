require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe ChangesController do

  def mock_change(stubs={})
    @mock_change ||= mock_model(Change, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all changes as @changes" do
      Change.stub(:all) { [mock_change] }
      get :index
      assigns(:changes).should eq([mock_change])
    end
  end

  describe "GET show" do
    it "assigns the requested change as @change" do
      Change.stub(:find).with("37") { mock_change }
      get :show, :id => "37"
      assigns(:change).should be(mock_change)
    end
  end

  describe "GET new" do
    it "assigns a new change as @change" do
      Change.stub(:new) { mock_change }
      get :new
      assigns(:change).should be(mock_change)
    end
  end

  describe "GET edit" do
    it "assigns the requested change as @change" do
      Change.stub(:find).with("37") { mock_change }
      get :edit, :id => "37"
      assigns(:change).should be(mock_change)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created change as @change" do
        Change.stub(:new).with({'these' => 'params'}) { mock_change(:save => true) }
        post :create, :change => {'these' => 'params'}
        assigns(:change).should be(mock_change)
      end

      it "redirects to the created change" do
        Change.stub(:new) { mock_change(:save => true) }
        post :create, :change => {}
        response.should redirect_to(change_url(mock_change))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved change as @change" do
        Change.stub(:new).with({'these' => 'params'}) { mock_change(:save => false) }
        post :create, :change => {'these' => 'params'}
        assigns(:change).should be(mock_change)
      end

      it "re-renders the 'new' template" do
        Change.stub(:new) { mock_change(:save => false) }
        post :create, :change => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested change" do
        Change.stub(:find).with("37") { mock_change }
        mock_change.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :change => {'these' => 'params'}
      end

      it "assigns the requested change as @change" do
        Change.stub(:find) { mock_change(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:change).should be(mock_change)
      end

      it "redirects to the change" do
        Change.stub(:find) { mock_change(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(change_url(mock_change))
      end
    end

    describe "with invalid params" do
      it "assigns the change as @change" do
        Change.stub(:find) { mock_change(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:change).should be(mock_change)
      end

      it "re-renders the 'edit' template" do
        Change.stub(:find) { mock_change(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested change" do
      Change.stub(:find).with("37") { mock_change }
      mock_change.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the changes list" do
      Change.stub(:find) { mock_change }
      delete :destroy, :id => "1"
      response.should redirect_to(changes_url)
    end
  end

end
