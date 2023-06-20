# Debug

## Use debug module

To debug a command return we can use this example with debug module:
```yml
- name: Debug example.
  hosts: localhost
  tasks:
    - name: Cat a file.
      shell: "cat /etc/hosts"
      register: r_result

    - debug:
        var: r_result.stdout
```
