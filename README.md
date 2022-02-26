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

## Quick start
1. `kubectl create namespace argo`
2. `kubectl apply -n argo -f https://raw.githubusercontent.com/argoproj/argo-workflows/master/manifests/install.yaml`

## How to run it
- `argo template create [argo-template-yaml]`
- `argo submit [argo-yaml]`


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