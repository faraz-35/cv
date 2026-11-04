// S M Faraz Shah - Resume
// Single-column, ATS-safe, 2-page. Built in Typst.
// Experience + projects copy faraz-35.vercel.app verbatim; resume is the downstream artifact.

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
#let heading(body) = {
  v(1.5em)
  block(width: 100%)[
    #text(weight: "bold", size: 11pt, tracking: 0.5pt, upper(body))
    #v(-0.7em)
    #line(length: 100%, stroke: 0.5pt)
  ]
  v(0.4em)
}

// ---- One entry = one unbreakable unit: title row, meta line, bullets, optional note ----
#let entry(role, org, meta, dates, ..items, note: none) = {
  v(0.8em)
  block(width: 100%, breakable: false, spacing: 0.3em)[
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      text(weight: "bold")[#role — #org], text(size: 9.5pt)[#dates],
    )
    #if meta != none [
      #text(size: 9.5pt, fill: luma(85))[#meta]
    ]
    #v(0.35em)
    #for it in items.pos() {
      par(hanging-indent: 0.5em)[
        #h(0.2em)#text[•] #h(0.3em)#it
      ]
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

I have been building software for 5 years. I designed and built Parhako NET, DayApp and Superpaint. I co-founded Parhako and led its engineering. I led client projects at Bitsmiths and worked on a team at Smodin.

// ============================================================
// EXPERIENCE  (site copy, verbatim)
// ============================================================

#heading("Experience")

#entry(
  [Co-Founder & Lead Engineer],
  [Parhako],
  none,
  [Sep 2024 – Jul 2026],
  [Set up the frontend and backend repos, the style guide, and the coding conventions.],
  [Managed cloud deployment on AWS: EC2, ASG, ALB, RDS Postgres, later moved to Aurora. Removed the ASG when traffic didn't need it.],
  [Designed the blueprint based agentic pipeline that generated the platform content: tests, practice sets, and notes.],
  [Managed data and site security: auth, validation, databases reachable only through an SSH tunnel, scripted backups.],
  [2,400+ students used the platform, 50+ of them paying.],
  note: [parhako.com · Parhako NET · Parhako MDCAT],
)

#entry(
  [Lead Full-Stack Engineer],
  [Bitsmiths Studio],
  none,
  [Aug 2025 – Oct 2025],
  [Did PR review and QA; ran 1:1 review sessions with engineers for guidance and code quality.],
  [Discussed features directly with clients: technical feasibility, and how to advance their products.],
  [Managed client infrastructure on Coolify and Supabase.],
)

#entry(
  [Founder & Engineer],
  [Lightangle Tech],
  none,
  [Jun 2023 – Aug 2024],
  [Created an automated restaurant site analyzer: feature detection, performance, and UX audits.],
  [Created an automated outreach engine: Google Maps API, Python, LLM API.],
  [Built online ordering, delivery management, and inventory systems for restaurants.],
)

#entry(
  [Full-Stack Developer],
  [TopDevSpace (Contract)],
  [Remote (USA)],
  [Jan 2023 – Jun 2023],
  [Migrated a .NET stack to AWS serverless: Terraform, NestJS, Lambda, DynamoDB.],
  [Worked with a team on a React JS codebase: UI/UX fixes and enhancements.],
)

#entry(
  [Full-Stack JS Developer],
  [Smodin],
  [Remote (USA)],
  [Jun 2022 – Dec 2022],
  [Migrated complete features from legacy React JS to Next.js and TypeScript.],
  [Created an in-house UI library to replace MUI. Got a 40% performance boost.],
  [Upgraded the site UI to the new Figma design.],
)

#entry(
  [Full Stack Web and App Developer],
  [Freelance],
  none,
  [Mar 2021 – Jun 2022],
  [Built a React Native Expo app for medical school prep.],
  [Designed and developed an appointment app for skin doctors on the JAM stack.],
  [Integrated Facebook Graph API and Marketplace functionality into an existing backend.],
  [Developed an ed tech app for primary students.],
  [Developed a business management web app: meeting scheduling and invoice management.],
  [Shipped a travel booking app for Baydaar Travels.],
  [Created Rene Icons, an open-source icon library.],
  note: [Fiverr · Upwork · Freelancer],
)

// ============================================================
// PROJECTS  (site copy: only the two shipped-for-others apps)
// ============================================================

#heading("Projects")

#entry(
  [DayApp],
  [#link("https://getdayapp.vercel.app")[getdayapp.vercel.app] · #link("https://github.com/faraz-35/dayapp")[github.com/faraz-35/dayapp]],
  [Rust, Tauri 2, React, SQLite],
  [2026],
  [A hyper-minimal, power-user macOS superapp: tasks, notes, goals, timers, reminders, analytics, and journaling in one, shaped to you via editable appearance and feature toggles in settings.],
)

#entry(
  [Superpaint],
  [#link("https://getsuperpaint.vercel.app")[getsuperpaint.vercel.app] · #link("https://github.com/faraz-35/superpaint")[github.com/faraz-35/superpaint]],
  [Swift, AppKit],
  [2026],
  [Overlay canvas for the Mac — draw over any app, then let clicks pass through.],
)

// ============================================================
// SKILLS  (grouped, keyword-dense — the ATS-targeted block)
// ============================================================

#heading("Technical Skills")

#let skillrow(label, body) = par(hanging-indent: 1.4in)[
  #box(width: 1.3in)[#text(weight: "bold")[#label]]
  #body
]

// Rows live in their own tighter-spacing scope so section gaps stay generous
#[
  #set par(spacing: 0.65em)
  #skillrow("Languages:", [TypeScript, JavaScript, Python, SQL])
  #skillrow("Frontend:", [React, Next.js, React Native Expo, Tailwind CSS, TanStack Query])
  #skillrow("Backend:", [Node.js, Express, GraphQL, Supabase, Prisma])
  #skillrow("Databases:", [PostgreSQL, DynamoDB])
  #skillrow("DevOps:", [AWS (EC2, Lambda, SAM, ALB, ASG), Terraform, CI/CD])
  #skillrow("Testing:", [Cypress (end-to-end frontend), Playwright, Postman schema validation])
]

// ============================================================
// EDUCATION
// ============================================================

#heading("Education")

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

AWS Cloud Solutions Architect, DevOps on AWS (Coursera); IBM Full Stack Software Developer (Coursera); Meta Front-End Developer, Meta React Native (Coursera).

// ============================================================
// LANGUAGES
// ============================================================

#heading("Languages")

English (Full Professional) #h(1.5em) Urdu (Full Professional)
