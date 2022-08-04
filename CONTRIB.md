
# Structure



# Practices


## Ansible

* Secrets
  * Use ansible-vault for all secrets
  * Don't commit secrets to the repository, add them to .gitignore
  * When adding secret variables, add them to the corresponding .tmpl file
  * Only require a single secret file per playbook
* AAP Tower
  * Consider tower compatibility 
* Inventory
  * Keep variables in host_vars and group_vars, not the hosts ini file
  * Structure yaml to avoid excessive variable mapping in playbooks
* Playbooks
  * Use playbooks for all tasks that are tied to inventory specific variables
  * Keep playbook folder structure at one level
  * Separate playbooks that may be recomposed by higher level playbooks
  * Use tags for cross cutting concerns such as firewall, services, package install, etc
* Roles
  * Use roles for sets of tasks can be reused across different inventories
  * Don't use inventory specific variables in roles, translate to role variables in 
* Syntax
  * Add spaces in mustache syntax - `{{ example }}`, not `{{example}}`


## GitOps

* 