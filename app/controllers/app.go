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
    header := &Header{"hello"}
    return c.Render(myName, header)
}
