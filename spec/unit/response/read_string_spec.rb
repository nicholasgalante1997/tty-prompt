# encoding: utf-8

RSpec.describe TTY::Prompt::Question, '#read_string' do
  it 'reads string' do
    prompt = TTY::TestPrompt.new
    prompt.input << 'Piotr'
    prompt.input.rewind
    answer = prompt.ask("What is your name?", read: :string)
    expect(answer).to be_a(String)
    expect(answer).to eq('Piotr')
  end

  it "reads symbol" do
    prompt = TTY::TestPrompt.new
    prompt.input << 'Piotr'
    prompt.input.rewind
    answer = prompt.ask("What is your name?", read: :symbol)
    expect(answer).to be_a(Symbol)
    expect(answer).to eq(:Piotr)
  end
end
