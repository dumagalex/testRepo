namespace: fol
flow:
  name: flow1
  inputs:
    - flow_input_0: '123'
    - flow_input_1:
        default: '123'
        sensitive: true
    - flow_input_2:
        required: false
        sensitive: true
  workflow:
    - flow1:
        do:
          fol.flow1:
            - flow_input_0:
                value: '1'
                sensitive: true
            - flow_input_1:
                value: '2'
                sensitive: true
            - flow_input_2:
                value: '3'
                sensitive: true
        navigate: []
    - ssh_flow:
        do:
          io.cloudslang.base.ssh.ssh_flow:
            - command:
                value: '123'
                sensitive: true
            - proxy_password:
                value: '123'
                sensitive: true
            - input_0:
                value: '13'
                sensitive: true
        navigate:
          - FAILURE: on_failure
  results:
    - FAILURE
extensions:
  graph:
    steps:
      flow1:
        x: 175
        y: 33
      ssh_flow:
        x: 327
        y: 100
