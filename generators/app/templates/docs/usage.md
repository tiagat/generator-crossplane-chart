## Usage

**Requirements:**

- Helm
- Skaffold
- Terraform version manager (tfenv)
- Terraform
- Kubie

Install development toolset

```bash
$ brew install helm
$ brew install kubie
$ brew install skaffold
$ brew install tfenv
```

Install Terraform 1.5.7

```bash
$ tfenv install 1.5.7
$ tfenv use 1.5.7
```


Create next files:

```bash
$ touch values.override.yaml
$ touch terraform/providers_override.tf
$ touch terraform/terraform.tfvars 
```

> [!NOTE]  
> In case of using `varmap: {}` and nested object as variables
> you can use `*.tfvars.json` instead of regular `*.tfvars`.
> This approach allow to simpify troubleshooting with wrong data mapping
> to nested object variables
>
> ```bash
> $ rm terraform/terraform.tfvars
> $ echo "{}" > terraform/terraform.tfvars.json
> ```


Provide changes:

```yaml
# Chart.yaml
name: "{{ chart_name }}"
```

```yaml
# skaffold.yaml
deploy:
  helm:
    releases: 
      - name: "{{ chart_name }}"
```
