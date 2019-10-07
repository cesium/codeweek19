describe "codeweek", type: :feature, js: true do
  # This is being render, you need to scroll down
  #it "has the calender section" do
  #  visit "/"
  #  binding.pry
  #  expect(find(".section-title").text).to eq("CALENDÁRIO")
  #end

  it "has the footer section" do
    visit "/"
    expect(find(".site-info").text).to eq("made with by CeSIUM\nPrevious Edition")
  end
end
