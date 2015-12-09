def caesar_cipher(string, count)
	phrase = string.split("")

	#empty array
	cipher = []

	#this will go through each letter
	phrase.each do |c|
		#here we have for uppercase letters
		if c.ord.between?(65,90)
			#if the input is beyond "Z"
			if c.ord >= (90)
				#will push into empty array if beyond "Z"
				cipher << (c.ord - 26 + count).chr
			else
				#will push into empty array if not beyond "Z"
				cipher << (c.ord + count).chr
			end
		#if between lowercase letters	
		elsif c.ord.between?(97,122)
			#if input is beyond the letter "z"
			if c.ord >= (122)
				#will push into empty array if beyond "z"
				cipher << (c.ord - 26 + count).chr
			else
				#otherwise push into array if not beyond "z"
				cipher << (c.ord + count).chr
			end
		end
	end
	#output the array
	puts cipher.join(" ")
end

#testing with "Hello"
caesar_cipher("Hello", 10)


			
