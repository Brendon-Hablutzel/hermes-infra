# hermes infra

Infrastructure configuration files for hermes. Environment variables are given in `.env.example`--which of these are required depends on which providers are being monitored.

Projects should be specified in `projects.json` in a format like the following:

```json
[
  {
    "name": "",
    "deployments": [
      {
        "name": "",
        "resources": [
          {
            "name": "",
            "identifier": "",
            "type": ""
          }
        ]
      }
    ]
  }
]
```
