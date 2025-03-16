# hermes infra

Infrastructure configuration files for hermes. Environment variables are given in `.env.example`--which of these are required depends on which providers are being monitored.

Projects should be specified in `projects.yaml` in a format like the following:

```yaml
- name: ""
  deployments:
    - name: ""
      resources:
        - name: ""
          identifier: ""
          type: ""
```

[how to set up grafana state timeline](https://stackoverflow.com/questions/68887416/grafana-state-timeline-panel-with-values-states-supplied-by-label)
