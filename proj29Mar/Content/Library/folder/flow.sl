namespace: folder
flow:
  name: flow
  workflow:
    - append:
        do:
          io.cloudslang.base.strings.append:
            - origin_string: '123'
            - text: '${origin_string}'
            - input_0:
                value: '13'
                sensitive: true
        publish:
          - output_0: output_0
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      append:
        x: 236.60000610351562
        y: 104.39999389648438
        navigate:
          ef69461d-b1db-8ce9-ee4f-93132a6b1800:
            targetId: 12864f8b-1a73-b50c-d4d4-e3d5ed1a2342
            port: SUCCESS
    results:
      SUCCESS:
        12864f8b-1a73-b50c-d4d4-e3d5ed1a2342:
          x: 473
          y: 109
