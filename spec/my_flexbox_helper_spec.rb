require 'spec_helper'
require 'flexbox_rb/my_flexbox_helper'
describe MyFlexboxHelper do
	let(:flex_box) { Object.new.extend(MyFlexboxHelper) }
	describe "#grid_md_n" do
	  it 'outputs proper html' do
	    result = flex_box.grid_md_1({class:":P"}) do 
	    	"Hola"
	    end
	    expect(result).to eq("<div class='col-md-1'><div class='box'>hola</div></div>")
	  end
	end

end
