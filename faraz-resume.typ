// S M Faraz Shah - Resume
// Single-column, ATS-safe, 2-page. Built in Typst.
// Summary is resume-specific (the site hero keeps its own pitch); experience + projects copy faraz-35.vercel.app.

#let name = "S M Faraz Shah"
#let title = "Full-Stack Software Engineer"
#let email = "syedfarazshah350@gmail.com"
#let phone = "+92 343 7732456"
#let location = "Islamabad, Pakistan"
#let linkedin = "linkedin.com/in/s-m-faraz-shah-4639291b2"
#let github = "github.com/faraz-35"
#let site = "faraz-35.vercel.app"

// ---- Page setup: US Letter, tight margins, single column ----
#set document(title: "S M Faraz Shah — Resume", author: "S M Faraz Shah")
#set page(
  paper: "us-letter",
  margin: (top: 0.5in, bottom: 0.55in, left: 0.6in, right: 0.6in),
)
#set text(font: "New Computer Modern", size: 10pt, lang: "en")
#set par(leading: 0.75em, justify: false, spacing: 0.9em)

// Links keep their destination (clickable in the PDF) but render as plain black text — ATS-safe
#show link: set text(fill: black)

// ---- Section heading style ----
// `gap` = space from the rule to the body. Paragraph bodies already contribute
// ~0.9em of par-spacing above themselves; entry blocks contribute none, so
// entry-led sections pass a larger `gap` to land at the same visual distance.
#let heading(body, gap: 0.1em) = {
  v(1.5em)
  block(width: 100%)[
    #text(weight: "bold", size: 11pt, tracking: 0.5pt, upper(body))
    #v(-0.7em)
    #line(length: 100%, stroke: 0.5pt)
  ]
  v(gap)
}

// ---- One entry = one unbreakable unit: title row, meta line, bullets, optional note ----
// Inter-entry spacing is `entry_gap`, inserted between entries at the call site — not
// here, so the first entry sits at the header's own gap like every other section body.
#let entry_gap = v(1.4em)
#let row_gap = v(0.9em)

#let entry(role, org, meta, dates, ..items, note: none) = {
  let its = items.pos()
  block(width: 100%, breakable: false, spacing: 0.3em)[
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      text(weight: "bold")[#role#if org != none [ — #org]], text(size: 9.5pt)[#dates],
    )
    #if meta != none [
      #text(size: 9.5pt, fill: luma(85))[#meta]
    ]
    #v(0.35em)
    // A single item is a description line; multiple items render as bullets
    #if its.len() == 1 [
      #its.first()
    ] else {
      for it in its {
        par(hanging-indent: 0.5em)[
          #h(0.2em)#text[•] #h(0.3em)#it
        ]
      }
    }
    #if note != none [
      #v(0.2em)
      #text(size: 9.5pt, fill: luma(85))[#note]
    ]
  ]
}

// ============================================================
// HEADER
// ============================================================

#align(center)[
  #text(weight: "bold", size: 22pt)[#name]
  #v(-0.2em)
  #text(size: 11pt, tracking: 1pt)[#title]
  #v(0.1em)
  #text(size: 9.5pt)[
    #link("mailto:" + email)[#email] #h(0.8em)|#h(0.8em) #phone #h(0.8em)|#h(0.8em) #location \
    #link("https://" + linkedin)[#linkedin] #h(0.8em)|#h(0.8em) #link("https://" + github)[#github] #h(0.8em)|#h(0.8em) #link("https://" + site)[#site]
  ]
]

#v(0.3em)

// ============================================================
// SUMMARY  (site hero, plain-text)
// ============================================================

#heading("Summary")

Full-stack engineer with 5 years of shipped work in TypeScript, React, and Node. Co-founded Parhako, an entrance-test prep platform, and led its engineering from idea to 2,500+ students. Led client projects at Bitsmiths and worked with teams at Smodin and TopDevSpace. Builds AI agents and native productivity apps.

// ============================================================
// EXPERIENCE  (site copy, verbatim)
// ============================================================

#heading("Experience", gap: 0.7em)

#entry(
  [Co-Founder & Lead Engineer],
  [Parhako],
  none,
  [Sep 2024 – Sep 2026],
  [Led a team of 3 on parhako.com, setting up repos, coding conventions, and the style guide; served 2,500+ students and 50+ paying customers.],
  [Built the Parhako NET monorepo containing a Next.js TypeScript frontend, Node.js backend, Next.js admin panel, Terraform infrastructure, and AWS deployment scripts.],
  [Designed the blueprint-based agentic pipeline that generated the platform's content: 11,000+ questions across tests, practice sets, and notes.],
  [Ran production on AWS: EC2, ALB and RDS Postgres.],
  [Enhanced SEO by rendering content as static HTML behind accordions, and by fixing internal linking, canonicals, and sitemaps.],
)

#entry_gap

#entry(
  [Lead Full-Stack Engineer],
  [Bitsmiths Studio],
  none,
  [Aug 2025 – Oct 2025],
  [Reviewed PRs, ran QA, and held 1:1 sessions with the engineers on code quality.],
  [Advised clients directly on technical feasibility and product direction.],
  [Implemented features using Next.js, TypeScript, and Supabase.],
  [Managed client infrastructure on Coolify and Supabase.],
)

#entry_gap

#entry(
  [Founder & Engineer],
  [Lightangle Tech],
  none,
  [Jul 2023 – Aug 2024],
  [Built an automated restaurant site analyzer: feature detection, performance, and UX audits.],
  [Wrote an automated outreach engine: Google Maps API, Python, LLM API.],
  [Delivered online ordering, delivery management, and inventory systems for restaurants.],
)

#entry_gap

#entry(
  [Full-Stack Developer],
  [TopDevSpace],
  [Remote (USA)],
  [Jan 2023 – Jun 2023],
  [Migrated a .NET stack to AWS serverless: Terraform, NestJS, Lambda, DynamoDB.],
  [On a team, shipped UI/UX fixes and enhancements to a React JS codebase.],
)

#entry_gap

#entry(
  [Full-Stack JS Developer],
  [Smodin],
  [Remote (USA)],
  [Jun 2022 – Dec 2022],
  [Migrated complete features from legacy React JS to Next.js and TypeScript.],
  [Created an in-house UI library to replace MUI, improving site performance by 40%.],
  [Implemented the Figma redesign across the site.],
)

#entry_gap

#entry(
  [Full Stack Web and App Developer],
  [Freelance],
  none,
  [Mar 2021 – Jun 2022],
  [Built a React Native Expo app for medical school prep, with video playback for course content.],
  [Designed and developed an appointment app for dermatologists on the JAMstack.],
  [Integrated Facebook Graph API and Marketplace into an ecommerce backend.],
  [Developed a business web app with Zoom for meetings and Stripe Connect for invoicing.],
  [Shipped a travel booking app for Baydaar Travels: React and Node, an admin panel, deployed on AWS and Netlify.],
  [Created Rene Icons, an open-source icon library.],
)

// ============================================================
// PROJECTS  (site copy: only the two shipped-for-others apps)
// ============================================================

#heading("Projects", gap: 0.7em)

#entry(
  [DayApp],
  none,
  none,
  [#link("https://getdayapp.vercel.app")[getdayapp.vercel.app]],
  [A cross-platform desktop app for Mac, Windows, and Linux: tasks, notes, goals, timers, reminders, analytics, and journaling in one window. Built with Rust, Tauri 2, React, and SQLite.],
)

#entry_gap

#entry(
  [Superpaint],
  none,
  none,
  [#link("https://getsuperpaint.vercel.app")[getsuperpaint.vercel.app]],
  [A native Mac app that turns the whole desktop into a canvas with one hotkey: draw over any app, then flip to browse mode and the ink stays while clicks pass through. Built in Swift with AppKit.],
)

#entry_gap

#entry(
  [Chess Engine],
  none,
  none,
  [#link("https://github.com/faraz-35/chess-engine")[github.com/faraz-35/chess-engine]],
  [A chess app for the Mac: play against Stockfish or Maia, with every move graded and a post-game review of your mistakes. Built with TypeScript and Python.],
)

// ============================================================
// SKILLS  (grouped, keyword-dense — the ATS-targeted block)
// ============================================================

#heading("Technical Skills")

#let skillrow(label, body) = par(hanging-indent: 1.4in)[
  #box(width: 1.3in)[#text(weight: "bold")[#label]]
  #body
]

// Row gaps are explicit spacers so their spacing can't leak above the first row
#[
  #skillrow("Languages:", [TypeScript, JavaScript, Python, SQL])
  #row_gap
  #skillrow("Frontend:", [React, Next.js, React Native Expo, Tailwind CSS, TanStack Query])
  #row_gap
  #skillrow("Backend:", [Node.js, Express, GraphQL, Supabase, Prisma])
  #row_gap
  #skillrow("Databases:", [PostgreSQL, MongoDB, SQLite, Microsoft SQL Server, DynamoDB])
  #row_gap
  #skillrow("DevOps:", [AWS (EC2, Lambda, SAM, ALB, ASG), Terraform, CI/CD])
  #row_gap
  #skillrow("Testing:", [Cypress (end-to-end frontend), Playwright, Postman schema validation])
]

// ============================================================
// EDUCATION
// ============================================================

#heading("Education", gap: 0.7em)

#entry(
  [Bachelor of Engineering in Software Engineering],
  [National University of Sciences and Technology (NUST)],
  [Islamabad, Pakistan],
  [2019 – 2023],
)

// ============================================================
// CERTIFICATIONS
// ============================================================

#heading("Certifications")

- AWS Cloud Solutions Architect, DevOps on AWS
- IBM Full Stack Software Developer
- Meta Front-End Developer, Meta React Native

// ============================================================
// LANGUAGES
// ============================================================

#heading("Languages")

English (Full Professional) #h(1.5em) Urdu (Full Professional)
