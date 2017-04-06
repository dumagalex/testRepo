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
        x: 196.60000610351562
        y: 108.39999389648438
        navigate:
          8925d20f-7baa-53b6-5d02-e147417a3ef6:
            targetId: b8658b41-a333-474f-c0da-2b595d04b939
            port: SUCCESS
    results:
      SUCCESS:
        b8658b41-a333-474f-c0da-2b595d04b939:
          x: 393
          y: 104
