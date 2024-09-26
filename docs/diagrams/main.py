from diagrams import Diagram
from diagrams.aws.security import ACM
# from diagrams.aws.engagement import SES
# from diagrams.aws.security import IAM
# from diagrams.aws.security import SecretsManager

graph_attr = {
  "bgcolor": "transparent",
  "pad": "0.5",
  "size": "6"
}

node_attr = {
  "fontcolor": "#888888",
  "fontsize": "14pt"
}

with Diagram("", filename="main", show=False, direction="TB", graph_attr=graph_attr, node_attr=node_attr):
  ACM("ACM")
