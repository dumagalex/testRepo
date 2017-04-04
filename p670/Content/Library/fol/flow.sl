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
        x: 164.60000610351562
        y: 107.39999389648438
        navigate:
          5528d4b2-6e37-bd7d-b07f-c4534c0c4977:
            targetId: 3ab0ba93-b5d1-46f8-d187-928934ef1369
            port: SUCCESS
    results:
      SUCCESS:
        3ab0ba93-b5d1-46f8-d187-928934ef1369:
          x: 375.6000061035156
          y: 106.80000305175781
