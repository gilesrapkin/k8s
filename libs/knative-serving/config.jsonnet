local config = import 'jsonnet/config.jsonnet';

local versions = ['1.13.0', '1.12.3', '1.11.6'];

config.new(
  name='knative-serving',
  specs=[
    {
      output: v.output,
      crds: ['https://github.com/knative/serving/releases/download/knative-v%s/serving-crds.yaml' % v],
      prefix: '^dev\\.knative\\..*',
      localName: 'knative-serving',
    },
    for v in versions
  ]
)