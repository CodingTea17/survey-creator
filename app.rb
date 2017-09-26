require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
also_reload 'lib/**/*.rb'
require './lib/survey'
require './lib/question'
require './lib/taker'
require './lib/answer'
require 'pg'

get '/' do
  @surveys = Survey.all
  erb(:index)
end

get '/create_survey' do
  @surveys = Survey.all
  erb(:create_survey)
end

post '/create_survey' do
  name = params['name']
  author = params['author']
  survey = Survey.create({:name => name, :author => author})
  redirect("/create_questions/#{survey.id}")
end

get '/create_questions/:id' do
  @survey = Survey.find(params[:id])
  @questions = @survey.questions()
  erb(:create_questions)
end

post '/create_questions/:id' do
  survey = Survey.find(params[:id])
  question = params['question']
  Question.create({:question => question, :survey_id => survey.id})
  redirect("/create_questions/#{survey.id}")
end

get '/edit_question/:id' do
  @question = Question.find(params[:id])
  @survey = Survey.find(@question.survey_id)
  erb(:edit_question)
end

patch '/edit_question/:id' do
  question = params['question']
  survey_id = Question.find(params[:id]).survey_id
  q = Question.find(params[:id])
  q.update({:question => question})
  redirect("/create_questions/#{survey_id}")
end

delete '/edit_question/:id' do
  survey_id = Question.find(params[:id]).survey_id
  Question.find(params[:id]).destroy()
  redirect("/create_questions/#{survey_id}")
end

get '/create_taker/:id' do
  @survey = Survey.find(params[:id])
  erb(:create_taker)
end

post '/create_taker/:id' do
  taker = Taker.create({:name => params['name'], :survey_id => params[:id]})
  redirect("/survey/#{taker.id}")
end

get '/survey/:id' do # taker id
  @taker = Taker.find(params[:id])
  @survey = Survey.find(@taker.survey_id)
  @questions = @survey.questions
  erb(:survey)
end

post '/survey/:id' do # taker id
  taker = Taker.find(params[:id])
  Survey.find(taker.survey_id).questions.each do |q|
    Answer.create({:answer => params["#{q.id}"], :question_id => q.id, :taker_id => taker.id})
  end
  redirect('/')
end

get '/results/:id' do # survey id
  @survey = Survey.find(params[:id])
  @takers = @survey.takers
  erb(:results)
end

get '/taker/:id' do # taker id
  @taker = Taker.find(params[:id])
  @survey = Survey.find(@taker.survey_id)
  @answers = @taker.answers
  erb(:taker)
end
