using Content.Shared.Containers.ItemSlots;
using Robust.Shared.Containers;
using Robust.Shared.GameStates;
using Robust.Shared.Serialization;

namespace Content.Shared.Theta.ShipEvent.Components;

[RegisterComponent, NetworkedComponent]
public sealed class TurretLoaderComponent : Component
{
    [ViewVariables(VVAccess.ReadWrite)] 
    public EntityUid BoundTurret = EntityUid.Invalid;
    
    /// <summary>
    /// Slot containing ammo container
    /// </summary>
    public ItemSlot? ContainerSlot;

    /// <summary>
    /// Entity container of inserted ammo container
    /// </summary>
    public Container? AmmoContainer;

    /// <summary>
    /// Maximum capacity of currently loaded container
    /// </summary>
    public int MaxContainerCapacity;
}

[Serializable, NetSerializable]
public sealed class TurretLoaderState : ComponentState
{
    public EntityUid BoundTurret;

    public int MaxContainerCapacity;

    public string? ContainerSlotID;

    public string? ContainerID;

    public TurretLoaderState(TurretLoaderComponent loader)
    {
        BoundTurret = loader.BoundTurret;
        ContainerSlotID = loader.ContainerSlot?.ID;
        MaxContainerCapacity = loader.MaxContainerCapacity;
        ContainerID = loader.AmmoContainer?.ID;
    }
}

[Serializable, NetSerializable]
public enum TurretLoaderVisuals
{
    Loaded
}
