require 'pp'
rule 'MND002', 'File must end with newline' do
  tags %w(mendeley correctness)
  cookbook do |cookbook_dir|
    results = []
    Dir.glob(File.join(cookbook_dir, '**/*')) do |f|
      next unless File.file? f
      content = open(f).read
      next if content.length < 1
      unless content[-1] == "\n"
        lines = content.split(/\n/)
        results << { filename: f, matched: f, line: lines.length, column: lines[-1].length }
      end
    end
    results
  end
end
