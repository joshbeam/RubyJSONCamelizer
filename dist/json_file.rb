require 'json'

module JSONFile
	module Reader
		module_function

		def parse(path)
			JSON.parse(IO.read(path))
		end
	end

	module Writer
		module_function

		def parse(hash)
			hash.to_json
		end

		def write(path,hash)
			if File.exist?(path)
				puts path+' already exists, continue? (yes/no)'
				continue = $stdin.gets.chomp

				if continue == 'yes'
					File.open(path, 'w').write(parse(hash))
				end
			else
				File.open(path, 'w').write(parse(hash))
			end
		end
	end
end