namespace: fol
flow:
  name: flow
  workflow:
    - append:
        do:
          io.cloudslang.base.strings.append: []
        publish:
          - new_string
        navigate:
          - SUCCESS: SUCCESS
  outputs:
    - flow_output_0:
        value: '123'
        sensitive: true
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      append:
        x: 184
        y: 65
        navigate:
          98621bb7-8dc9-2614-d282-df0a51b9ec74:
            targetId: bc66ec53-dbbb-9800-1c73-9653a48f646a
            port: SUCCESS
    results:
      SUCCESS:
        bc66ec53-dbbb-9800-1c73-9653a48f646a:
          x: 378
          y: 52
