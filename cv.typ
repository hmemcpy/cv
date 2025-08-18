// FontAwesome icons replaced with Unicode symbols

// Color definitions
#let tagbg = rgb(225, 236, 244)
#let tagtxt = rgb(88, 115, 159)
#let linkcolor = rgb(0, 51, 153)

// Custom tag function (equivalent to \sotag)
#let sotag(content) = {
  box(
    fill: tagbg,
    stroke: tagbg,
    radius: 3pt,
    inset: (x: 6pt, y: 3pt),
    text(fill: tagtxt, content)
  )
}

// Job entry helper
#let job(title, company) = {
  text(size: 12pt, weight: "bold")[#title at #company]
}

// Set document properties
#set document(
  title: "Igal Tabachnik - CV",
  author: "Igal Tabachnik"
)

// Page setup
#set page(
  paper: "a4",
  margin: (left: 2cm, right: 2cm, top: 2.5cm, bottom: 2.5cm),
  footer: [
    #line(length: 100%)
    #v(5pt)
    #grid(
      columns: (1fr, 1fr, 1fr),
      align: (left, center, right),
      [Igal Tabachnik],
      context [Page #counter(page).display() of #counter(page).final().first()],
      [#datetime.today().display()]
    )
  ]
)

// Text settings
#set text(size: 11pt)
#set par(justify: true)

// Link styling
#show link: set text(fill: linkcolor)

// Section heading styling
#show heading.where(level: 1): it => [
  #set text(size: 14pt, weight: "bold")
  #smallcaps[#it.body]
  #v(3pt)
  #line(length: 100%)
  #v(8pt)
]

// Title
#align(center)[
  #text(size: 36pt, weight: "bold")[IGAL TABACHNIK]
  #v(10pt)
]

#line(length: 100%)
#v(8pt)

// Contact information
#grid(
  columns: (auto, 1fr),
  column-gutter: 20pt,
  row-gutter: 5pt,
  
  [*Phone:*], [+972 54 4766343],
  [*Email:*], [#link("mailto:hmemcpy@gmail.com")],
  [*Socials:*], [
    🏠 #link("https://hmemcpy.com")[hmemcpy.com] |
    𝕏 #link("https://twitter.com/hmemcpy")[\@hmemcpy] |
    🔗 #link("https://github.com/hmemcpy")[github] |
    💼 #link("https://www.linkedin.com/in/igaltabachnik/")[linkedin] |
    📚 #link("https://stackoverflow.com/users/8205/igal-tabachnik")[stackoverflow]
  ]
)

#v(15pt)

= Summary

I am a seasoned software developer with nearly 20 years of professional experience across various domains and technologies.

My current focus is on functional programming, specifically in Scala, using foundational libraries such as ZIO and Cats. I firmly believe that typed functional programming is the "secret ingredient" and a means to developing robust and correct software that is highly resistant to bugs.

I am an open-source contributor and guest speaker at conferences and local meetups. I also have a keen interest in Developer Experience (DX) and have developed compiler and IDE plugins that substantially enhance developer productivity. I love teaching and helping others become "unstuck".

= Work Experience

#table(
  columns: (auto, 1fr),
  stroke: none,
  column-gutter: 15pt,
  row-gutter: 8pt,
  
  [*Apr 2020--Mar 2024*\ (4 years)],
  [
    #job("Founding Engineer and Tech Lead", "Unit"), Israel \
    #sotag("scala") #sotag("zio") #sotag("infrastructure") #sotag("microservices") #sotag("tooling")
    
    As the first employee at Unit, I helped build the engineering team from the ground up, and over the years held various responsibilities and positions across multiple teams.
    
    Designed and created most of the core backend infrastructure, such as the data access and serialization layers, service architectures, domain models, testing infrastructure and more.
    
    Implemented various payment protocols (ACH, Wires, Cards, etc.), APIs and corresponding services end-to-end.
    
    Served as the primary resource for supporting and mentoring team members, troubleshooting issues, and developing educational materials and hands-on workshops, engineering guidelines and testing specifications.
  ],
  
  [], [#line(length: 100%)],
  [], [#align(right)[#text(style: "italic", size: 9pt)[(abbreviated work history below, see the LinkedIn profile for full details)]]],
  [], [],
  
  [*Jun 2016--Aug 2019*\ (3 years, 3 months)],
  [
    #job("Senior Software Engineer", "Wix.com"), Israel \
    #sotag("scala") #sotag("functional-programming") #sotag("bazel") #sotag("intellij-plugins")
    
    Worked in the build infrastructure team, supporting the migration to the _Bazel_ build system. Main responsibilities included adding Scala support and contributing fixes to the _Bazel IntelliJ plugin_ (maintained by Google), as well as creating internal tools for Wix-specific functionality.
  ],
  
  [*Jul 2015--May 2016*\ (11 months)],
  [
    #job("Software Developer", "Particular Software"), Israel \
    #sotag("c#") #sotag("nservicebus")
    
    Building NServiceBus and the Particular Platform products.
  ],
  
  [*Jul 2012--Jan 2015*\ (2 years, 7 months)],
  [
    #job("Lead Developer", "OzCode") (a CodeValue company), Israel \
    #sotag("c#") #sotag("roslyn") #sotag("debugging-api") #sotag("visual-studio-extensions")
    
    OzCode is a Visual Studio extension for debugging productivity. I was responsible for the entire stack, from core product development to prioritizing features and issues, research, as well as marketing and content creation, branding, and artwork direction.
  ],
  
  [*Mar 2010--Nov 2011*\ (1 year, 9 months)],
  [
    #job("Senior Software Developer", "Typemock"), Israel \
    #sotag("c#") #sotag(".net-internals") #sotag("il-weaving") #sotag("aop") #sotag("api-design") #sotag("code-generation")
    
    Developed a unit testing suite of products for software developers. Mainly responsible for the isolation (mocking) framework, based on the unmanaged _CLR Profiling API_ to perform runtime inspection and IL weaving to allow runtime code modifications.
  ],
  
  [*Oct 2008--Mar 2010*\ (1 year, 6 months)],
  [
    #job("Software Developer", "Eternix"), Israel \
    #sotag("c#") #sotag("webdav") #sotag("winforms") #sotag("unit-testing") #sotag("tdd")
    
    Lead developer of a WebDAV based file server, implementing and maintaining features such as file encryption, versioning, quota, and user management.
  ],
  
  [*Oct 2007--Oct 2008*\ (1 year, 1 month)],
  [
    #job("Software Developer", "InfoGin"), Israel \
    #sotag("c#") #sotag("asp.net") #sotag("mobile-web") #sotag("wap")
    
    Developer in the professional services team, created web applications for mobile devices, based on the specifications provided by customers.
  ],
  
  [*Jun 2005--Sep 2007*\ (2 years, 4 months)],
  [
    #job("Software Developer", "PrizmaSoft"), Israel \
    #sotag("c#") #sotag("winforms") #sotag("continuous-integration")
    
    Developed client applications for a business process management system, maintained build and deployment scripts.
  ]
)

= Programming Proficiency

#grid(
  columns: (auto, 1fr),
  column-gutter: 20pt,
  row-gutter: 5pt,
  
  [*Languages:*], [Scala (expert), C\#, Java (proficient), Haskell (intermediate), Rust, TypeScript (learning)],
  [*Patterns:*], [ES/CQRS, DDD, OOP, TDD, Property-based testing],
  [*Technologies:*], [ZIO and Typelevel libraries, Postgres, Redis, Docker, Kubernetes, Kafka, TestContainers],
  [*Tools:*], [Scala macros, sbt plugins, Pants/Bazel, IntelliJ SDK]
)

= Skills and Accomplishments

#grid(
  columns: (auto, 1fr),
  column-gutter: 20pt,
  row-gutter: 5pt,
  
  [*Languages:*], [Hebrew, English, Russian],
  [*Publications:*], [Category Theory for Programmers by Bartosz Milewski (#link("https://github.com/hmemcpy/milewski-ctfp-pdf")[PDF], #link("https://www.blurb.com/b/9621951-category-theory-for-programmers-new-edition-hardco")[hardcover book])],
  [*Open-source:*], [Contributor: ZIO, IntelliJ IDEA. Created the ZIO plugin for IntelliJ, zio-clippy (see GitHub)]
)

= Speaking

#grid(
  columns: (auto, 1fr),
  column-gutter: 20pt,
  row-gutter: 5pt,
  
  [*Video:*], [
    #link("https://www.youtube.com/watch?v=eILoMm9t4rI")[The Business of Scala] (Scala Matters Meetup \@ HiBob, 2023) \
    #link("https://www.youtube.com/watch?v=qBmZJwmd0CA")[Everything you (didn't) want to know about implicits (Hebrew)] (Unit Engineering, 2022) \
    #link("https://www.youtube.com/watch?v=N6ZJwnvTjLA")[Zero to FP (Hebrew)] (Underscore Meetup, 2018) \
    #link("https://www.youtube.com/watch?v=g1EvM4CbUvM")[Journey to Functional Programming] (Wix Engineering, 2017)
  ]
)
