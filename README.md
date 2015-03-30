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
[
	{
		"someKey"	:	"Some Value"
	}
]
```

# Usage

```bash
# inside RubyJSONCamelizer directory

$ ruby main.rb #<original file> #<new file>
```

# Features

- Removes anything that's in parentheses from the keys
- Creates **camelCase** keys