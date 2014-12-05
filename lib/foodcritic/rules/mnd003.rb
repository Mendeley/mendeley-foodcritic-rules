rule 'MND003', 'Lines may not end with trailing whitespace' do
  tags %w(mendeley correctness)
  recipe do |ast, filename|
    results = []
    lines = open(filename).read.split(/\n/)
    lines.each_with_index do |line, index|
      if line =~ /\s+$/
        results << { filename: filename, matched: filename, line: index+1, column: line.length }
      end
    end
    results
  end
end
