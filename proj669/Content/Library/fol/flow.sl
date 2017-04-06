namespace: fol
flow:
  name: flow
  workflow:
    - append:
        do:
          io.cloudslang.base.strings.append: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      append:
        x: 149
        y: 95
        navigate:
          45a1b20f-9bc5-142d-a606-1c0b660392e8:
            targetId: 8fbc60e1-b775-3ef2-075a-1b4cd346424f
            port: SUCCESS
    results:
      SUCCESS:
        8fbc60e1-b775-3ef2-075a-1b4cd346424f:
          x: 420
          y: 100
