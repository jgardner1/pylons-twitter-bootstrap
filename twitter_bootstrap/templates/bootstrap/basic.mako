<%doc>
This is a basic page. You should adapt it to your needs.

Things you want to override:
  * brand(): Returns the upper right brand logo or name.

  * nav(): Returns the nav section to show in the title.

  * c.section: The name of the section you are in.

  * c.breadcrumbs: A list of HTML for the breadcrumbs.

  * footer(): The footer.

Things you may not want to override:
  * breadcrumbs(): Generates the breadcrumbs

  * header(): The entire header
</%doc>
<%!
  from webhelpers.html.tags import link_to, HTML
%>
<%inherit file="/bootstrap/html5.mako"/>
<%def name="breadcrumbs()">
% if hasattr(c, 'breadcrumbs') and c.breadcrumbs:
    <ul class="breadcrumb">
% for breadcrumb in c.breadcrumbs[:-1]:
      <li>${breadcrumb} <span class="divider">/</span></li>
% endfor
% for breadcrumb in c.breadcrumbs[-1:]:
      <li class="active">${breadcrumb}</li>
% endfor
    </ul>
% endif
</%def>\
<%def name="head()">\
${parent.head()}\
</%def>\
<%def name="brand()">Define brand()</%def>\
<%def name="nav()">\
<%
    sections = dict(
        home      = link_to('Home', url('/')),
        account   = link_to('Account', url('/account')),
        logout    = link_to('Logout', url('/logout')),
        register  = link_to('Register', url('/create')),
        login     = link_to('Login', url('/login')),
    )

    if hasattr(c, 'section'):
        current_section = c.section
    else:
        current_section = 'home'

    def render_section(section):
        attrs = dict()
        if section == current_section:
            attrs['class'] = 'active'

        return HTML.tag('li', sections[section], **attrs)
%>
          <ul class="nav">
            ${render_section('home')}
          </ul>
          <ul class="nav pull-right">
% if hasattr(c, 'user') and c.user:
            ${render_section('account')}
            ${render_section('logout')}
% else:
            ${render_section('login')}
            ${render_section('register')}
% endif
          </ul>
</%def>\
<%def name="header()">\
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="${url('/')}">${self.brand()}</a>
          ${nav()}
        </div>
      </div>
    </div>
${self.breadcrumbs()}\
</%def>\
<%def name="footer()">\
<hr/>
Copyright &copy; 2012 Jonathan Gardner, ALL RIGHTS RESERVED<br/>
Contact Jonathan Gardner at <a
href="mailto:jgardner@jonathangardner.net">jgardner@jonathangardner.net</a>.
</%def>\
${self.header()}
${next.body()}
${self.footer()}
