﻿using Content.Shared.Theta.ShipEvent.UI;
using Robust.Client.AutoGenerated;
using Robust.Client.UserInterface;
using Robust.Client.UserInterface.Controls;
using Robust.Client.UserInterface.CustomControls;
using Robust.Client.UserInterface.XAML;

namespace Content.Client.Theta.ShipEvent.UI;

[GenerateTypedNameReferences]
public sealed partial class TeamLobbyWindow : DefaultWindow
{
    public event Action<BaseButton.ButtonEventArgs>? CreateTeamButtonPressed;
    public event Action<BaseButton.ButtonEventArgs>? RefreshButtonPressed;
    public event Action<string>? JoinButtonPressed;

    public TeamLobbyWindow()
    {
        RobustXamlLoader.Load(this);
        CreateTeam.OnPressed += _ => CreateTeamButtonPressed?.Invoke(_);
        Refresh.OnPressed += _ => RefreshButtonPressed?.Invoke(_);
    }

    public void UpdateState(ShipEventLobbyBoundUserInterfaceState msg)
    {
        TeamsContainer.RemoveAllChildren();
        if (msg.Teams.Count == 0)
        {
            TeamsContainer.AddChild(new Label
            {
                Text = Loc.GetString("shipevent-lobby-empty")
            });
            return;
        }

        TeamsContainer.AddChild(new Label
        {
            Text = "Команда",
        });

        TeamsContainer.AddChild(new Label
        {
            Text = "Капитан",
        });

        TeamsContainer.AddChild(new Label
        {
            Text = "Экипаж",
            HorizontalAlignment = HAlignment.Right,
        });

        TeamsContainer.AddChild(new Control());

        foreach (var teamState in msg.Teams)
        {
            TeamsContainer.AddChild(new Label
            {
                Text = teamState.Name,
            });

            TeamsContainer.AddChild(new Label
            {
                Text = teamState.Captain,
            });

            TeamsContainer.AddChild(new Label
            {
                Text = teamState.Members.ToString(),
                HorizontalAlignment = HAlignment.Right,
            });

            var button = new Button
            {
                Text = Loc.GetString("shipevent-lobby-join"),
            };

            button.OnPressed += _ =>
            {
                JoinButtonPressed?.Invoke(teamState.Name);
            };

            TeamsContainer.AddChild(button);
        }
    }
}
