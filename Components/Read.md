Color Mix {
	 .foregroundStyle(Color.purple.mix(with: .black, by: 0.1))
}
Text {
.font(.system(size: 20, weight: .bold))
}

text_header {
.font(.caption)
.foregroundStyle(.gray)
.frame(maxWidth: .infinity, alignment: .leading)
}

text_field {
.background(Color(.systemgray6))
}

screen_layout {
.offset(y: getRect().height ‹ 750 ? 20 : 40)
}

// extension View
func getRect ()->CGRect {
return UIScreen.main.bounds
}
