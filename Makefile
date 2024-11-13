description.pdf: description.md
	pandoc $< -o $@
