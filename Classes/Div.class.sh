class Div

	public setContent
	public dump
	public set

	var content
	var classname
	var idtag

Div::Div() {
	if [[ -n $class ]]; then
		classname=" class=\"$class\""
	fi
	if [[ -n $id ]]; then
		idtag=" id=\"$id\""
	else
		idtag=" id=\"$varname\""
	fi
}

Div::setContent() { content=$content; }

Div::dump() {
	println "<div${classname}${idtag}>$content</div>"
}