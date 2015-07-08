require 'stringio'

def capture_output
  fk_stdoutt =StringIO.new
  ol_stdout = $stdout
  $stdout = fk_stdoutt
  Object.const_set(:STDOUT, fk_stdoutt)
  yield
ensure
  $stdout = ol_stdout
  Object.const_set(:STDOUT, ol_stdoutt)
  return fk_stdoutt.string
end

def capture_output
  ol_stdout =STDOUT.clone
  pipe_r, pipe_w = IO.pipe
  pipe_r.sync = true
  output = ""
  reader= Thread.new do
    begin
      loop do
        output << pipe_r.readpartial(1024)
      end
    rescue EOFError
    end
  end
  STDOUT.reopen(pipe_w)
  yield
ensure
  STDOUT.reopen(ol_stdout)
  pipe_w.close
  reader.join
  return output
end


output = capture_output do
  $stdout.puts "This"
  STDOUT.puts "that"
  system 'echo "subprocess"'
end


output.split("\n")