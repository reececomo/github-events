# GitHub Events

<a href="https://rubygems.org/gems/github-events"><img src="https://img.shields.io/gem/v/github-events">
<a href="#"><img src="https://img.shields.io/badge/language-Ruby-blue"></a>

```ruby
require 'github-events'

# Trigger a "repository_dispatch" GitHub Action
GitHubEvent.trigger('owner/repository', 'my-custom-action', my_token)
```
