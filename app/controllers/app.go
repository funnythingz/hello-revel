package controllers

import "github.com/revel/revel"

type App struct {
	*revel.Controller
}

type Header struct {
	Title string
}

func (c App) Index() revel.Result {
	header := &Header{"hoge"}
	return c.Render(header)
}

func (c App) Hello(myName string) revel.Result {

	c.Validation.Required(myName).Message("なんもはいってねいお！いれるんだお！")
	c.Validation.MinSize(myName, 3).Message("みじかいお！もちょいいれてくれお！")

	if c.Validation.HasErrors() {

		c.Validation.Keep()
		c.FlashParams()

		return c.Redirect(App.Index)
	}

	header := &Header{"hello"}
	return c.Render(myName, header)
}
