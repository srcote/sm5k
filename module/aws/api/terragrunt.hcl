include "root" {
  path = find_in_parent_folders()
}

terraform {
  extra_arguments "publish_Vars" {
    commands = [
      "apply",
      "plan",
      "import",
      "push",
      "refresh",
      "init",
      "destroy"
    ]
    required_var_files = [
      "${get_parent_terragrunt_dir()}/common.tfvars",
      "${get_terragrunt_dir()}/env-config/common.tfvars",
      "${get_terragrunt_dir()}/env-config/${get_env("TF_VAR_env", "dev")}.tfvars",
    ]
  }
}
