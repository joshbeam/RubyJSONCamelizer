Streamline your JSON and your JavaScript by converting all JSON keys into practical JavaScript-style **camelCase** keys.

Convert this:

```json
[
	{
		"Some Key (Seriously)"	:	"Some Value"
	}
]
```

into this:

```json
[{"someKey":"Some Value"}]
```

# Usage

## Installation

### Dependencies

```bash
~ $ gem install json
```

### Source

```bash
~ $ git clone https://www.github.com/joshbeam/RubyJSONCamelizer.git
```


## Conversion

```bash
~/RubyJSONCamelizer/dist $ ruby main.rb #<original file> #<new file>

# => if new file exists already, it will confirm if you want to overwrite it
```

### Example

```bash
~/RubyJSONCamelizer/dist $ ruby main.rb ../../SomeProjectFolder/someData.json ../../SomeProjectFolder/newCamelizedData.json
```

Used primarily in <a href="http://periodictable.heroku.com">this Periodic Table application</a> to convert data into a streamlined format.

# Features

- Removes anything that's in parentheses from the keys
- Creates **camelCase** keys

<hr>

Copyright &copy; 2015 Joshua Beam (MIT License)