class ContactsController < ApplicationController
  # GET /contacts
  # GET /contacts.xml
  def index
    @contacts = Contact.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contacts }
    end
  end

  # GET /contacts/1
  # GET /contacts/1.xml
  def show
    @contacts = Contact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contacts }
    end
  end

  # GET /contacts/new
  # GET /contacts/new.xml
  def new
    @contacts = Contact.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @contacts }
    end
  end

  # GET /contacts/1/edit
  def edit
    @contacts = Contact.find(params[:id])
  end

  # POST /contacts
  # POST /contacts.xml
  def create
    @contacts = Contact.new(params[:contact])

    respond_to do |format|
      if @contacts.save
        flash[:notice] = 'Contacts was successfully created.'
        format.html { redirect_to(@contacts) }
        format.xml  { render :xml => @contacts, :status => :created, :location => @contacts }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contacts.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /contacts/1
  # PUT /contacts/1.xml
  def update
    @contacts = Contact.find(params[:id])

    respond_to do |format|
      if @contacts.update_attributes(params[:contact])
        flash[:notice] = 'Contacts was successfully updated.'
        format.html { redirect_to(@contacts) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @contacts.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.xml
  def destroy
    @contacts = Contact.find(params[:id])
    @contacts.destroy

    respond_to do |format|
      format.html { redirect_to(contacts_url) }
      format.xml  { head :ok }
    end
  end
end
