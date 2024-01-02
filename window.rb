require 'tk'

def message(entry)
	text_entry = entry.get
	puts "You typed: #{text_entry}"
end

root = TkRoot.new {title "Window"}
root.geometry("400x300")

entry = TkEntry.new(root) do
	width 50
	font TkFont.new("Arial 15 bold")
end
entry.pack('padx' => 15, 'pady' => 15)

button = TkButton.new(root) do
	text "Clique!"
	width 15
	height 3
	font TkFont.new("Arial 15 bold")
	command { message(entry) }
end
button.pack('padx' => 15, 'pady' => 15)

Tk.mainloop
