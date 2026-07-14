global.splash = 1;

if current_month = 2 && current_day >= 7 && current_day <= 21
{
	splash = irandom_range(0, 8);
}
else if current_month = 6
{
	splash = irandom_range(0, 3);
}
else if current_month = 12 && current_day >= 15 && current_day <= 30
{
	splash = irandom_range(0, 3);
}
else
{
	splash = irandom_range(0, 30);
}
