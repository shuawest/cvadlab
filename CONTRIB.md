
# Structure



# Practices


## Ansible

* Secrets
  * Use ansible-vault for all secrets
  * Don't commit secrets to the repository, add them to .gitignore
  * When adding secret variables, add them to the corresponding .tmpl file
  * Only require a single secret file per playbook
  * Use multiple secrets files to separate secrets that may have different access privileges
* AAP Tower
  * Consider tower compatibility 
* Inventory
  * Keep variables in host_vars and group_vars, not the hosts ini file
  * Structure yaml to avoid excessive variable mapping in playbooks
  * Favor dictionaries when list elements may need to be referenced directly
* Playbooks
  * Use playbooks for all tasks that are tied to inventory specific variables
  * Keep playbook folder structure at one level
  * Separate playbooks that may be recomposed by higher level playbooks
  * Use tags for cross cutting concerns such as firewall, services, package install, etc
  * Add links to documentation at top top of playbook files
* Roles
  * Use roles for sets of tasks can be reused across different inventories
  * Don't use inventory specific variables in roles, translate to role variables in 
* Tasks
  * Put task control such as looping, when, vars, become, etc at the top of the task
  * Avoid shell tasks as much as possible
* Loops
  * Favor naming loop var with `loop_control` when using with_items, instead of using `item` 
  * Always name loop var when call a role or another playbook
* Syntax
  * Add spaces in mustache syntax - `{{ example }}`, not `{{example}}`

  


## GitOps

* 