# fake-iac-project

A lightweight, intentionally fake infrastructure-as-code repository for testing PR comment bots and CI review workflows.

## Contents

- Terraform examples in [terraform](terraform)
- Ansible examples in [ansible](ansible)
- GitHub Actions workflows in [.github/workflows](.github/workflows)

## Quick start

### Terraform

```bash
cd terraform
terraform init -backend=false
terraform validate
terraform plan
```

### Ansible

```bash
cd ansible
ansible-playbook -i inventory.ini playbooks/site.yml
```

## Notes

This repository is intentionally non-production and safe to use as a PR bot fixture.
