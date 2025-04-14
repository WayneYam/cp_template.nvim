# cp_template.nvim

A simple command to copy (cp) competitive programming (cp) template into code

## Installation

With `lazy.nvim`

```
  {
    "WayneYam/cp_template.nvim"
    opts = {},
    cmd = { "GetTemplate" },
  },
```

## Usage

I put my templates inside `~/Documents/Code/_template/` and in my boilerplate I have a line with `TEMPLATE ENDS HERE`.

When `:GetTemplate` is run a picker will appear and you can fuzzy search which template to copy to the current code, the copy is automatic because of a custom `confirm` action.
