import tkinter as tk
from tkinter import messagebox
import nltk
from nltk.corpus import wordnet
import re
from transformers import pipeline
import random
from sympy import sympify
from sqlalchemy import create_engine, Column, String, Integer, Sequence
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

# Initialize NLTK and download necessary datasets
nltk.download('wordnet')
nltk.download('omw-1.4')

# SQLAlchemy setup
Base = declarative_base()

class QnA(Base):
    __tablename__ = 'qna'
    id = Column(Integer, Sequence('qna_id_seq'), primary_key=True)
    question = Column(String(200))
    answer = Column(String(200))

# Database setup
engine = create_engine('sqlite:///qna.db', echo=True)
Base.metadata.create_all(engine)
Session = sessionmaker(bind=engine)
session = Session()

# Transformer Model for Question Answering and Story Generation
qa_pipeline = pipeline("question-answering", model="bert-large-uncased-whole-word-masking-finetuned-squad", tokenizer="bert-large-uncased-whole-word-masking-finetuned-squad")
story_generator = pipeline('text-generation', model='gpt2', tokenizer='gpt2')

# Math and WordNet handling
def calculate(expression):
    try:
        return str(sympify(expression))  # Using sympy to evaluate math expressions safely
    except Exception as e:
        return f"Error: {str(e)}"

def get_wordnet_meaning(word):
    synsets = wordnet.synsets(word)
    if synsets:
        return synsets[0].definition()  # Get the definition of the first synset
    else:
        return "No definition found."

# Function to check the database for a question
def check_db(question):
    result = session.query(QnA).filter(QnA.question == question).first()
    return result.answer if result else None

# Function to save QnA into the database
def save_to_db(question, answer):
    qna = QnA(question=question, answer=answer)
    session.add(qna)
    session.commit()

# Function to solve word problems (like "2 boys went to the market and bought 4 eggs each")
def solve_word_problem(query):
    match = re.search(r"(\d+)\s+(boy|person|girl|man|woman)\s+(went|go)\s+to\s+the\s+market\s+and\s+bought\s+(\d+)\s+(egg|eggs)\s+each", query.lower())
    
    if match:
        num_boys = int(match.group(1))
        eggs_per_boy = int(match.group(4))
        total_eggs = num_boys * eggs_per_boy
        return f"They brought home {total_eggs} eggs."

    return None

# Function to check if a question is a math query
def is_math_query(query):
    operators = ['+', '-', '*', '/', '%', '**']
    return any(op in query for op in operators)

# Function to handle question answering with BERT
def get_bert_answer(context, question):
    return qa_pipeline(question=question, context=context)

# Function to generate a random prompt for the story
def generate_random_prompt():
    themes = ["adventure", "mystery", "sci-fi", "fantasy", "horror", "comedy"]
    random_theme = random.choice(themes)
    return f"Write a {random_theme} story."

# Function to generate a story based on the random prompt
def generate_story_from_idea():
    prompt = generate_random_prompt()  # Generate a random theme or genre for the story
    story = story_generator(prompt, max_length=300, num_return_sequences=1)
    return story[0]['generated_text']

# Function to generate questions based on the generated story or idea
def generate_question_from_idea(story):
    # Example: Generate questions based on the characters or themes in the story
    questions = [
        f"What happened at the beginning of the story?",
        f"How did the main character feel when {story.split()[10]}?",
        f"What challenges did the protagonist face in the {story.split()[2]}?",
        f"What was the resolution of the {story.split()[3]}?"
    ]
    return random.choice(questions)

# Function to handle the user's input
def on_submit():
    user_input = entry.get()
    if user_input.strip() == "":
        messagebox.showwarning("Input Error", "Please enter a question or story prompt.")
        return

    # Check if the input is a story prompt (or allow AI to generate one on its own)
    if "once upon a time" in user_input.lower() or "write a story about" in user_input.lower():
        # Generate a story based on the input or let the AI generate its own
        story = generate_story_from_idea()  # AI creates its own idea for the story
        result_label.config(text=f"Generated Story:\n{story}")
    else:
        # AI-generated questions and answers based on the internal knowledge
        # Generate a question based on a random idea
        story = generate_story_from_idea()  # AI creates a new story
        question = generate_question_from_idea(story)
        
        # Use the AI to answer the generated question
        answer = get_bert_answer(story, question)
        result_label.config(text=f"Generated Question: {question}\nAnswer: {answer['answer']}")

# Tkinter UI setup
root = tk.Tk()
root.title("AI Question & Answer")

# Add input field
label = tk.Label(root, text="Enter a question or a story prompt:")
label.pack(pady=10)

entry = tk.Entry(root, width=50)
entry.pack(pady=10)

submit_button = tk.Button(root, text="Submit", command=on_submit)
submit_button.pack(pady=20)

result_label = tk.Label(root, text="Answer will appear here.", wraplength=400)
result_label.pack(pady=10)

# Start the GUI loop
root.mainloop()
