# php-snappy-cookbook

Chef cookbook to download and install the PHP extension Snappy - https://github.com/kjdev/php-ext-snappy


## Attributes

```
node['php_snappy']['url'] = 'https://github.com/kjdev/php-ext-snappy/archive/master.tar.gz'
```

## Usage

### php-snappy::default

Include `php-snappy` in your node's `run_list`. This will download and install snappy.

```json
{
  "run_list": [
    "recipe[php-snappy::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request
