package controllers

import "github.com/revel/revel"

type App struct {
	*revel.Controller
}

type Header struct {
    Title string
}

func (c App) Index() revel.Result {
    greeting := "hoge"
    header := &Header{greeting}
	return c.Render(header)
}
