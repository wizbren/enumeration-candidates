# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
    @candidates.find { |candidate| candidate[:id] == id}
  end
  
  def experienced?(candidate)
    candidate[:years_of_experience] >= 2
  end

  def enough_github_points?(candidate)
    candidate[:github_points] >= 100
  end

  def knows_ruby_or_python?(candidate)
    candidate[:languages].include?("Ruby") || candidate[:languages].include?("Python")
  end

  def recent_applicant?(candidate)
    candidate[:date_applied] >= Date.today - 15
  end
  
  def qualified_candidates(candidates)
    candidates.select do |candidate|
      experienced?
  end
  
  # More methods will go below