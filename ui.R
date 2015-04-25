shinyUI(pageWithSidebar(
    headerPanel("Kepler's Third Law"),
    sidebarPanel(
      sliderInput('dist', 'Planet distance from the Sun in Astronomical Unit (AU)', value = 1, min = 0, max = 30, step = 0.1)
    ),
    mainPanel(
      h3('Documentation'),
      h4('This is an application that calculates the orbital period of a planet.  Simply use the slider on the left to select a distance and the orbital period will be displayed at the bottom of this page.'), 
      h3('Average planet distance from the Sun:'),
      h4('Mercury  0.4 AU'),
      h4('Venus    0.7 AU'),
      h4('Earth    1.0 AU'),
      h4('Mars     1.5 AU'),
      h4('Jupiter  5.2 AU'),
      h4('Saturn   9.6 AU'),
      h4('Uranus  19.2 AU'),
      h4('Neptune 30.1 AU'),
      h3('Orbital Period'),
      h4('You entered (distance in AU)'),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in an Orbital Period (in year) of'),
      verbatimTextOutput("prediction")
    )
  )
)
