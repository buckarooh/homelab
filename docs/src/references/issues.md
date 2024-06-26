# Issues

This documents known issues that have not been fixed.

## Manual Vault Unseal Process

Vault server must be manually unsealed when host is rebooted.

## Unreachable Nomad Jobs on Reboot

On some occasions, restarting the Nomad client results in some running jobs
being unreachable. The temporary fix is to restart the job (not alloc or task).

## ~Vault-agent not reloading TLS certs~

~Vault-agent does not reload its own TLS configuration after the certificate has
been renewed. Although this causes the agent to fail to authenticate with Vault,
it does not constitute a systemd service failure, and the service must be
manually restarted to read the new TLS configuration. Sending a `SIGHUP` sending
is [not supported](https://github.com/hashicorp/vault/issues/20538).~

~Similar issues: [#16266](https://github.com/hashicorp/vault/issues/16266) and
[#18562](https://github.com/hashicorp/vault/issues/18562). A
[fix](https://github.com/hashicorp/vault/pull/19002) is available in Vault
1.14.~

## Static Goss Files

The provided goss files in `ansible/goss` contain hardcoded information that can
cause the smoke tests to fail if some Ansible variables are modified:

- common_user
- common_nfs_dir
- common_packages

The temporary workaround is to create your own goss files, edit the given goss
files or to simply comment out the smoke test tasks.

To fix this, goss
[supports](https://github.com/goss-org/goss/blob/master/docs/gossfile.md#templates)
templating to create dynamic goss files. The `ansible_collection.goss` role must
be modified to add support for dynamic tests.
