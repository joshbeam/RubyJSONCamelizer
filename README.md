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

```bash
~/RubyJSONCamelizer $ ruby main.rb #<original file> #<new file>

# => if new file exists already, it will confirm if you want to overwrite it
```

Used primarily in <a href="http://periodictable.heroku.com">this Periodic Table application</a> to convert data into a streamlined format.

# Features

- Removes anything that's in parentheses from the keys
- Creates **camelCase** keys