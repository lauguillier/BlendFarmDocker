# BlendFarmDocker

This is a dockerization of LogicReinc.BlendFarm server (https://github.com/LogicReinc/LogicReinc.BlendFarm).

The final goal is to be able to run it on TrueNAS Scale system as a custom Docker app, using an isolated nvidia GPU (WIP).

For now the server performs the render on the host CPU, and connections are using host network.
