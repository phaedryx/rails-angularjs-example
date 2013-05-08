class Api::PeopleController < ApiController
  def index
    respond_with Person.all
  end

  def show
    respond_with Person.find(params[:id])
  end

  def new
    respond_with Person.new
  end

  def edit
    respond_with Person.find(params[:id])
  end

  def create
    person = Person.create(params[:person])
    respond_with(@person.save ? @person : @person.errors)
  end

  def update
    person = Person.find(params[:id])
    respond_with(@person.update_attributes(params[:person]) ? @person : @person.errors)
  end

  def destroy
    person = Person.find(params[:id])
    person.destroy
    respond_with(head :no_content)
  end
end
