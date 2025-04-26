/// @description Draw status bars on GUI layer

// Check if player exists
if (!instance_exists(objPlayer)) exit;

// Get player stats
var _reputation = objPlayer.reputation;
var _reputation_max = objPlayer.reputation_max;
var _energy = objPlayer.energy;
var _energy_max = objPlayer.energy_max;
var _money = objPlayer.money;

// Set font and text alignment
draw_set_font(-1); // Default font, change if needed
draw_set_valign(fa_middle);
draw_set_halign(fa_left);

// Calculate bar positions
var _rep_y = bar_y;
var _energy_y = bar_y + bar_spacing;
var _money_y = bar_y + (bar_spacing * 2);

// Draw reputation bar
draw_status_bar(_reputation, _reputation_max, bar_x, _rep_y, "REP", reputation_color);

// Draw energy bar
draw_status_bar(_energy, _energy_max, bar_x, _energy_y, "ENERGY", energy_color);

// Draw money indicator
var _money_text = string(_money) + " $";
draw_set_color(money_color);
draw_text(bar_x, _money_y + bar_height/2, _money_text);
draw_set_color(c_white);

/// Helper function to draw a bar with label
function draw_status_bar(value, max_value, x_pos, y_pos, label, color) {
    // Calculate fill percentage
    var _fill_percent = value / max_value;
    
    // Draw background
    draw_set_color(c_black);
    draw_set_alpha(0.7);
    draw_rectangle(x_pos, y_pos, x_pos + bar_width, y_pos + bar_height, false);
    draw_set_alpha(1);
    
    // Draw filled part
    draw_set_color(color);
    draw_rectangle(x_pos + bar_padding/2, y_pos + bar_padding/2, 
                  x_pos + (bar_width - bar_padding) * _fill_percent, 
                  y_pos + bar_height - bar_padding/2, false);
    
    // Draw outline
    draw_set_color(c_white);
    draw_rectangle(x_pos, y_pos, x_pos + bar_width, y_pos + bar_height, true);
    
    // Draw label
    draw_text(x_pos + bar_width + 10, y_pos + bar_height/2, label + ": " + string(value) + "/" + string(max_value));
    
    // Reset color
    draw_set_color(c_white);
}