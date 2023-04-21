# WPF Training Project
The purpose of this project is to get a feel for how WPF works.

This project was made with .NET 6

WPF supports the MVVM data binding pattern.
It uses XAML (Exstensible Application Markdown Language) for UI.

Additionally: WPF feature layout, styles and templates

Official documentation can be found on microsoft website--
https://learn.microsoft.com/en-us/dotnet/desktop/wpf/?view=netdesktop-7.0


## Tips

In XAML, elements can be self-closing.
-------------------------------------
-- Normal closed element
```
<Button></Button>	
```

<Button/>	-- Self-closing element


Property Syntax vs Attribute Syntax vs Content Syntax vs Collection Syntax
-----------------------------------

<Button Content="xyz"></Button>		-- Attribute Syntax	: used for simple content

<Button>
	<Button.Content>
		xys							-- Property Syntax	: Use for complex content
	</Button.Content>
</Button>
	
<Button>xyz</Button>				-- Content Syntax	: Things inside an empty element are put on its default value, in this case 'content' for button

<StackPanel>
	<StackPanel.Children>			-- Collection Syntax	: Elements inside are added to a collection out of sight
	<TextBlock/>
	<Button/>
	</StackPanel.Children>
<StackPanel/>


WPF Layout Panels
-----------------
These are used to position elements in XAML

StackPanel	-- Primarily used for stuff like several buttons in a row or something akin to that

Grids		--Primarily used to arrange items in the window, both on larger and smaller scales
Example:
<Grid>
	<Grid.RowDefinitions>		-- This Grid has 2 rows now
		<RowDefinition Height="*"/>		- This row will take as much height as possible, 2 of these will share the space equally. This is also the default value.
		<RowDefinition Height="3*"/>		- This row count as 3 rows worth of space, and will take up that amount
		<RowDefinition Height="100"/>	- This row will take up exactly 100 px worth of space
		<RowDefinition Height="Auto"/>	- This row will take just enough space for whatever elements it contain
	</Grid.RowDefinitions>
	<Grid.ColumnDefinitions>	-- This grid has 2 columns now
		<ColumnDefinition/>
		<ColumnDefinition/>
	</Grid.ColumnDefinitions>
	<Rectangle Fill="LightBlue"
	Grid.Column="1" Grid.Row="1"/>	-- Grids are 0 based, so this would put the Rectangle at the second Row and second column. Otherwise all item will be put at first column and row.
</Grid>

<Grid ShowGridLines="True"></Grid> use this to see grid without items

Canvas		-- Primarily used for design and not for UI elements like text, buttons or other
Example:

<Canvas>
	<Rectangle Fill="LightBlue"		-- Items added later will be shown on top. XAML is read read top to bottom and will overlap acordingly
	Height="50" Width="50"
	Canvas.Left="50"		-- Pushed 50 px from the left
	Canvas.Top="100"		-- Pushed 100px from the top
	Panel.ZIndex="1"/>		-- This can be used to move the item to a specific overlap		
</Canvas>

