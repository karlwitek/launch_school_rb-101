# Term frequency - inverse document frequency:
# A measure of how important a term is to a document in a collection of documents
# (the importance increases proportionally to the term frequency in the document,
# but decreases with the frequency of the word across documents)

def tfidf(term, document, documents)
  tf(term, document) * idf(term, documents)
end

# Term frequency (simple version):
# the number of times a term occurs in a document

def tf(term, document)
  document.split(/[\s-]/).count { |word| word.downcase == term }
end

# Inverse document frequency:
# measure of how much information the word provides,
# based on the number of documents in which it occurs
# (the rarer it is, the more information it provides)

def idf(term, documents)
  number_of_documents = documents.length
  number_of_documents_with_term = documents.count { |d| tf(term, d) > 0 }

  Math.log(number_of_documents.to_f / number_of_documents_with_term)
end

# Very simple example

document1 = "Schrödinger's cat is a thought experiment often featured in discussions of the interpretation of quantum mechanics. The Austrian physicist Erwin Schrödinger devised " +
"it in 1935 as an argument against the Copenhagen interpretation of quantum mechanics, which states that an object in a physical system can simultaneously exist in all possible configurations, " +
"a state called quantum superposition, and only observing the system forces the object into just one of those possible states. Schrödinger disagreed with this interpretation. In particular, " +
"quantum superposition could not work with larger objects. As an illustration, he presented a scenario with a cat in a sealed box, whose fate was linked to a subatomic event that may or may not occur. " +
"In a quantum superposed state of the subatomic particles, the cat would be both alive and dead, until someone opened the box and observed it."

document2 = "The domestic cat is a small, furry, carnivorous mammal. The term cat can, however, also refer to wild cats, which include animals like lions, tigers and leopards. " +
"Cats are claimed to have a lower social IQ than dogs but can solve more difficult cognitive problems and have a longer-term memory. International Cat Day is celebrated on August 8. " +
"Famous cats include Schrödinger's cat as well as Pudding and Butterscotch, which occur in some of the Launch School assignments."

document3 = "One of the core values that sets Launch School apart from some other coding schools out there is our emphasis on Mastery-based Learning. If the key to becoming a competent and confident Software Engineer " +
"is deep understanding of first principles, then the key to acquiring that understanding is through Mastery-based Learning. The core of Mastery-based Learning is replacing time with mastery. There's no graduation, " +
"but a continual learning journey of micro-improvements. At Launch School, we're not trying to catch a wave or take advantage of a surge in demand. Instead, we're trying to focus on things that'll be useful to you for decades to come, " +
"such as a systematic problem-solving approach or learning how to deconstruct a programming language or building sound mental representations of how web application work. Everything we're trying to do at " +
"Launch School is with an eye towards sustainable studying habits and building skills for a long-term career."

documents = [document2, document3]

# The higher the tf-idf score of a term for a document, the more informative
# it is for that document.
# E.g. when someone searches for the term 'cat' in your document collection,
# you want to return document1 and document2, but not document3.
# For the term 'quantum mechanics', on the other hand, you only want to return document1.

# expected outputs:
puts tfidf("cat", document1, documents) # ~ 1.2
puts tfidf("cat", document2, documents) # ~ 1.6
puts tfidf("cat", document3, documents) # 0

puts tfidf("quantum", document1, documents) # ~ 5.5
puts tfidf("quantum", document2, documents) # 0
puts tfidf("quantum", document3, documents) # 0

puts tfidf("mastery", document1, documents) # 0
puts tfidf("mastery", document2, documents) # 0
puts tfidf("mastery", document3, documents) # ~ 3.3

puts tfidf("some", document1, documents) # 0
puts tfidf("some", document2, documents) # ~ 0.4
puts tfidf("some", document3, documents) # ~ 0.4

# my solution: Integer division was being performed in the method idf.
# Math.log(number_of_documents.to_f / number_of_documents_with_term) . For 'cat', the values are
# (3 / 2) . This evaluates to (1) with integer division. Math.log(1) = 0. This zero value was 
# causing the return value of tfidf to be 0.
# Changed code by appending .to_f to  number_of_documents.  

# LS -->

def idf(term, documents)
  number_of_documents = documents.length
  number_of_documents_with_term = documents.count { |d| tf(term, d) > 0 }

  Math.log(number_of_documents.fdiv(number_of_documents_with_term))
end

# In the definition of our original idf method, we perform division on two values which will
# both be integers.  It will be integer division, meaning it will produce an integer value,
# namely the integer part of the result without the remainder. (ex. 1/2 -> 0 instead of 0.5)
# In the first test case, 'cat' occurs in 2 of 3 documents, which returns an idf value of
# Math.log(3/2) -> Math.log(1) = 0.  In order to return a float value, we must perform 
# float division.  Convert one or both of the values to a floating point number using
# Integer#to_f (my solution) or by using Numeric#fdiv method.
# The idf value of 'cat' is then correctly calculated as Math.log(3.fdiv(2)) -> Math.log(1.5).
# The tfidf method multiplies the returned idf by the tf value for document 1 (which is 3
# because 'cat' occurs 3 times in the document) and returns the expected output ~1.2.

# Further: There's still one issue that could get us into trouble when performing division.
# If you don't see it immediately, remove document1 from the documents collection and check
# the tfidf value of 'quantum' again.

# Division by zero error.  (my answer) number_of_documents_with_term will == 0.
# returns NaN (not a number ?) or 'infinity' if leave document1 in as an argument when
# calling the method.
#  ‘Not A Number’ means an invalid IEEE floating point number. (web)
# 'infinity' is returned instead of division by zero error when dividing by a float (0.0)
# (rubyguides.com)
# Nan is returned instead of division by zero error when 0/0.0

