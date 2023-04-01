using Content.Shared.Theta.ShipEvent.UI;
using Robust.Client.GameObjects;

namespace Content.Client.Theta.ShipEvent.UI;

public sealed class TurretLoaderBoundUserInterface : BoundUserInterface
{
    private TurretLoaderWindow? _window;

    public TurretLoaderBoundUserInterface(ClientUserInterfaceComponent owner, Enum uiKey) : base(owner, uiKey) { }

    protected override void Open()
    {
        base.Open();

        _window = new TurretLoaderWindow();
        _window.OpenCentered();

        _window.OnClose += Close;
    }

    protected override void UpdateState(BoundUserInterfaceState state)
    {
        base.UpdateState(state);
        _window?.UpdateState((TurretLoaderBoundUserInterfaceState)state);
    }

    protected override void Dispose(bool disposing)
    {
        base.Dispose(disposing);

        if (disposing)
        {
            _window?.Dispose();
        }
    }
}
