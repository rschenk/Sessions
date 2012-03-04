require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe KitesController do

  # This should return the minimal set of attributes required to create a valid
  # Kite. As you add validations to Kite, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # KitesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all kites as @kites" do
      kite = Kite.create! valid_attributes
      get :index, {}, valid_session
      assigns(:kites).should eq([kite])
    end
  end

  describe "GET show" do
    it "assigns the requested kite as @kite" do
      kite = Kite.create! valid_attributes
      get :show, {:id => kite.to_param}, valid_session
      assigns(:kite).should eq(kite)
    end
  end

  describe "GET new" do
    it "assigns a new kite as @kite" do
      get :new, {}, valid_session
      assigns(:kite).should be_a_new(Kite)
    end
  end

  describe "GET edit" do
    it "assigns the requested kite as @kite" do
      kite = Kite.create! valid_attributes
      get :edit, {:id => kite.to_param}, valid_session
      assigns(:kite).should eq(kite)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Kite" do
        expect {
          post :create, {:kite => valid_attributes}, valid_session
        }.to change(Kite, :count).by(1)
      end

      it "assigns a newly created kite as @kite" do
        post :create, {:kite => valid_attributes}, valid_session
        assigns(:kite).should be_a(Kite)
        assigns(:kite).should be_persisted
      end

      it "redirects to the created kite" do
        post :create, {:kite => valid_attributes}, valid_session
        response.should redirect_to(Kite.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved kite as @kite" do
        # Trigger the behavior that occurs when invalid params are submitted
        Kite.any_instance.stub(:save).and_return(false)
        post :create, {:kite => {}}, valid_session
        assigns(:kite).should be_a_new(Kite)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Kite.any_instance.stub(:save).and_return(false)
        post :create, {:kite => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested kite" do
        kite = Kite.create! valid_attributes
        # Assuming there are no other kites in the database, this
        # specifies that the Kite created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Kite.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => kite.to_param, :kite => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested kite as @kite" do
        kite = Kite.create! valid_attributes
        put :update, {:id => kite.to_param, :kite => valid_attributes}, valid_session
        assigns(:kite).should eq(kite)
      end

      it "redirects to the kite" do
        kite = Kite.create! valid_attributes
        put :update, {:id => kite.to_param, :kite => valid_attributes}, valid_session
        response.should redirect_to(kite)
      end
    end

    describe "with invalid params" do
      it "assigns the kite as @kite" do
        kite = Kite.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Kite.any_instance.stub(:save).and_return(false)
        put :update, {:id => kite.to_param, :kite => {}}, valid_session
        assigns(:kite).should eq(kite)
      end

      it "re-renders the 'edit' template" do
        kite = Kite.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Kite.any_instance.stub(:save).and_return(false)
        put :update, {:id => kite.to_param, :kite => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested kite" do
      kite = Kite.create! valid_attributes
      expect {
        delete :destroy, {:id => kite.to_param}, valid_session
      }.to change(Kite, :count).by(-1)
    end

    it "redirects to the kites list" do
      kite = Kite.create! valid_attributes
      delete :destroy, {:id => kite.to_param}, valid_session
      response.should redirect_to(kites_url)
    end
  end

end