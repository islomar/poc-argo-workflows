# Playground for Argo Workflows
Playground for learning about Argo Workflows
- https://argoproj.github.io/argo-workflows/
- https://github.com/argoproj/argo-workflows

**Contents**
- [General](#general)
- [Quick start](#quick-start)
- [Examples](#examples)
- [Training](#training)


## General
- Container-native workflow engine for orchestrating jobs on k8s.
- Create and run advanced workflow entirely on k8s.
- Define workflows where each step in the workflow is a container.
- Run CI/CD pipelines natively on Kubernetes without configuring complex software development products.
- Robust retry mechanisms to increase reliability
- Full Open Source

## Concepts
- A **workflow** is defined as a Kubernetes resource. Each workflow consists of one or more templates, one of which is defined as the entrypoint. Each template can be one of several types
- [**DAGs**](https://github.com/argoproj/argo-workflows/blob/master/examples/README.md#dag): As an alternative to specifying sequences of steps, you can define the workflow as a directed-acyclic graph (DAG) by specifying the dependencies of each task. This can be simpler to maintain for complex workflows and allows for maximum parallelism when running tasks.
- Because a workflow in just a Kubernetes resource, you can use kubectl with them.
## Quick start
1. `kubectl create namespace argo`
2. `kubectl apply -n argo -f https://raw.githubusercontent.com/argoproj/argo-workflows/master/manifests/install.yaml`

## How to run it
- Argo is normally installed into a namespace named `argo`:
    - `kubectl create ns argo`
- `argo template create [argo-template-yaml]`
- `argo submit [argo-yaml]`

## Testing
- https://github.com/argoproj/argo-workflows/tree/master/manifests

## Examples
- Examples: https://github.com/argoproj/argo-workflows/blob/master/examples/README.md
- [Artifact passing](https://github.com/argoproj/argo-workflows/blob/master/examples/artifact-passing.yaml)


## Training
- https://www.katacoda.com/argoproj/courses/argo-workflows/
- Training: https://argoproj.github.io/argo-workflows/training/
- [Demo environment](https://workflows.apps.argoproj.io/workflows/argo)
    - [Stream processing use case](https://argoproj.github.io/argo-workflows/use-cases/stream-processing/)
    - [CI/CD use case](https://argoproj.github.io/argo-workflows/use-cases/ci-cd/)
    - [Infrastructure automation use case](https://argoproj.github.io/argo-workflows/use-cases/infrastructure-automation)