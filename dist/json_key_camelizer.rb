require './json_file'

module JSONKeyCamelizer
	module_function

	def camelizeKey(key)
		key.split(' ').each_with_index.map do |partial, i|
			if i == 0
				partial.downcase
			else
				partial.capitalize
			end
		end.join('')
	end

	def camelize(arr)
		new_arr = 	arr.map do |element|
						# http://stackoverflow.com/a/812551/2714730
						new_element = element.inject({}) { |h, (k, v)| h[camelizeKey(k).gsub(/\(.*\)/,'')] = v; h }
					end

		new_arr
	end
end