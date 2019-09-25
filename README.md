# GitHubEvents

```ruby
require 'github-events'

# Trigger a "repository_dispatch" GitHub Action
GitHubEvent.trigger('owner/repository', 'my-custom-action', my_token)
```
