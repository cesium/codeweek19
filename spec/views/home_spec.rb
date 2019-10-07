describe "codeweek", type: :feature, js: true do
  it "has the calender section" do
    visit "/"
    expect(find(".section-title").text).to eq("CALENDÁRIO")
  end
end
