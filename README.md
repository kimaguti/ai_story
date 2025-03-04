Project Overview:
AI Storyteller & Question Answerer is designed to provide an interactive experience where users can either request a story or ask a question. The application uses advanced NLP models to generate engaging stories and provide accurate answers to questions. It also supports solving basic math problems and specific word problems.
Features:
Story Generation: Generate creative stories based on random prompts.
Question Answering: Answer questions using BERT, with context provided by generated stories.
Math Problem Solver: Evaluate mathematical expressions safely.
Word Problem Solver: Solve specific types of word problems (e.g., calculating total items).
Database Integration: Store and retrieve Q&A pairs for repeated questions.
Dependencies:
nltk: For accessing WordNet.
transformers: For BERT and GPT-2 models.
sympy: For safe evaluation of mathematical expressions.
sqlalchemy: For database management.
tkinter: For the graphical user interface.
Installation:
Clone the repository:
bash
Copy
git clone https://github.com/yourusername/ai-storyteller.git
cd ai-storyteller
Install dependencies:
bash
Copy
pip install nltk transformers sympy sqlalchemy
Download NLTK data:
Python
Copy
import nltk
nltk.download('wordnet')
nltk.download('omw-1.4')
Run the application:
bash
Copy
python main.py
Usage:
Open the application: A Tkinter window will appear.
Enter a question or story prompt: Type your input in the provided field.
Submit: Click the "Submit" button.
View the result: The generated story or answer will be displayed in the GUI.
Example:
Input: "Once upon a time in a magical forest..."
Output: A generated story based on the prompt.
Input: "What is 2 + 2?"
Output: "4"
Contributing:
Contributions are welcome! Please open an issue or submit a pull request with your improvements.
License:
This project is licensed under the MIT License. See the LICENSE file for details.
Contact:
For any questions or feedback, please contact your-email@example.com.
This README provides a clear overview of the project, its features, and how to get started with using and contributing to the application.
