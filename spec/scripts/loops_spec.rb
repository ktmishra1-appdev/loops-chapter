describe "loops_fizz_buzz.rb" do
  
  it "should output the correct response", points: 1 do
    # Un-require loops_fizz_buzz.rb
    loops_fizz_buzz = $".select{|r| r.include? 'loops_fizz_buzz.rb'}
    $".delete(loops_fizz_buzz.first)
    response = File.read("spec/support/fizz_buzz.txt")
    expect { require_relative("../../loops_fizz_buzz") }.to output(/1\n2\n"?Fizz"?\n4\n"?Buzz"?\n"?Fizz"?\n7\n8\n"?Fizz"?\n"?Buzz"?\n11\n"?Fizz"?\n13\n14\n"?FizzBuzz"?\n16\n17\n"?Fizz"?\n19\n"?Buzz"?\n"?Fizz"?\n22\n23\n"?Fizz"?\n"?Buzz"?\n26\n"?Fizz"?\n28\n29\n"?FizzBuzz"?\n31\n32\n"?Fizz"?\n34\n"?Buzz"?\n"?Fizz"?\n37\n38\n"?Fizz"?\n"?Buzz"?\n41\n"?Fizz"?\n43\n44\n"?FizzBuzz"?\n46\n47\n"?Fizz"?\n49\n"?Buzz"?\n"?Fizz"?\n52\n53\n"?Fizz"?\n"?Buzz"?\n56\n"?Fizz"?\n58\n59\n"?FizzBuzz"?\n61\n62\n"?Fizz"?\n64\n"?Buzz"?\n"?Fizz"?\n67\n68\n"?Fizz"?\n"?Buzz"?\n71\n"?Fizz"?\n73\n74\n"?FizzBuzz"?\n76\n77\n"?Fizz"?\n79\n"?Buzz"?\n"?Fizz"?\n82\n83\n"?Fizz"?\n"?Buzz"?\n86\n"?Fizz"?\n88\n89\n"?FizzBuzz"?\n91\n92\n"?Fizz"?\n94\n"?Buzz"?\n"?Fizz"?\n97\n98\n"?Fizz"?\n"?Buzz"?/).to_stdout
  end
end


describe "loops_letter_count.rb" do
  
  it "should count 1 to 6 with the input of 'banana'", points: 1 do
    # Un-require loops_letter_count.rb
    loops_letter_count = $".select{|r| r.include? 'loops_letter_count.rb'}
    $".delete(loops_letter_count.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("banana")
    
    response = /1\n2\n3\n4\n5\n6\n.*banana is 6 letters long/

    expect { require_relative("../../loops_letter_count") }.to output(response).to_stdout
  end
end

describe "loops_letter_count.rb" do
  
  it "should count 1 to 15 with the input of 'fantasmagorical'", points: 1 do
    # Un-require loops_letter_count.rb
    loops_letter_count = $".select{|r| r.include? 'loops_letter_count.rb'}
    $".delete(loops_letter_count.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("fantasmagorical")
    
    response = /1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n11\n12\n13\n14\n15\n.*fantasmagorical is 15 letters long/

    expect { require_relative("../../loops_letter_count") }.to output(response).to_stdout
  end
end

describe "loops_letter_count.rb" do
  
  it "should count 1 with the input of 'a'", points: 1 do
    # Un-require loops_letter_count.rb
    loops_letter_count = $".select{|r| r.include? 'loops_letter_count.rb'}
    $".delete(loops_letter_count.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("a")
    
    response = /1\n.*a is 1 letters long/

    expect { require_relative("../../loops_letter_count") }.to output(response).to_stdout
  end
end

describe "loops_stop.rb" do
  
  it "should count 1 with the input of 'a'", points: 1 do
    # Un-require loops_letter_count.rb
    loops_letter_count = $".select{|r| r.include? 'loops_letter_count.rb'}
    $".delete(loops_letter_count.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("a")
    
    response = /1\n.*a is 1 letters long/

    expect { require_relative("../../loops_letter_count") }.to output(response).to_stdout
  end
end

describe "loops_multiples.rb" do
  
  it "should print the correct multiples from 1 to 10 with the input of '2'", points: 1 do
    # Un-require loops_letter_count.rb
    loops_multiples = $".select{|r| r.include? 'loops_multiples.rb'}
    $".delete(loops_multiples.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("2")
    
    response = /2\n4\n6\n8\n10\n12\n14\n16\n18\n20/

    expect { require_relative("../../loops_multiples") }.to output(response).to_stdout
  end
end

describe "loops_multiples.rb" do
  
  it "should print the correct multiples from 1 to 10 with the input of '3'", points: 1 do
    # Un-require loops_letter_count.rb
    loops_multiples = $".select{|r| r.include? 'loops_multiples.rb'}
    $".delete(loops_multiples.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("3")
    
    response = /3\n6\n9\n12\n15\n18\n21\n24\n27\n30/

    expect { require_relative("../../loops_multiples") }.to output(response).to_stdout
  end
end

describe "loops_multiples.rb" do
  
  it "should print the correct multiples from 1 to 10 with the input of '0'", points: 1 do
    # Un-require loops_letter_count.rb
    loops_multiples = $".select{|r| r.include? 'loops_multiples.rb'}
    $".delete(loops_multiples.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("0")
    
    response = /0\n0\n0\n0\n0\n0\n0\n0\n0\n0/

    expect { require_relative("../../loops_multiples") }.to output(response).to_stdout
  end
end
