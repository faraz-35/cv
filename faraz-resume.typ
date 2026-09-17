// Faraz Shah - Resume
// Single-column, ATS-safe, 2-page. Built in Typst.
// Edit content in the #let blocks below; layout lives in the styling.

#let name = "Faraz Shah"
#let title = "Full-Stack Software Engineer"
#let email = "syedfarazshah350@gmail.com"
#let phone = "+92 343 7732456"
#let location = "Islamabad, Pakistan"
#let linkedin = "linkedin.com/in/s-m-faraz-shah-4639291b2"
#let github = "github.com/faraz-35"
#let site = "faraz-35.vercel.app"

// ---- Page setup: US Letter, tight margins, single column ----
#set document(title: "Faraz Shah — Resume", author: "Faraz Shah")
#set page(
  paper: "us-letter",
  margin: (top: 0.5in, bottom: 0.55in, left: 0.6in, right: 0.6in),
  footer: context {
    let p = counter(page).get().first()
    if p > 1 {
      align(center, text(size: 9pt, fill: luma(85))[Faraz Shah — Resume · #p])
    }
  },
)
#set text(font: "New Computer Modern", size: 10pt, lang: "en")
#set par(leading: 0.7em, justify: false, spacing: 0.85em)

// Links keep their destination (clickable in the PDF) but render as plain black text — ATS-safe
#show link: set text(fill: black)

// ---- Section heading style ----
#let heading(body) = {
  v(0.75em)
  block(width: 100%)[
    #text(weight: "bold", size: 11pt, tracking: 0.5pt, upper(body))
    #v(-0.7em)
    #line(length: 100%, stroke: 0.5pt)
  ]
  v(0.2em)
}

// ---- Job entry: title row + date, then bullets ----
#let entry(role, org, meta, dates) = {
  block(width: 100%, spacing: 0.3em)[
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      text(weight: "bold")[#role — #org], text(size: 9.5pt)[#dates],
    )
    #text(size: 9.5pt, fill: luma(85))[#meta]
  ]
}

#let bullets(..items) = {
  for it in items.pos() {
    par(hanging-indent: 0.5em)[
      #h(0.2em)#text[•] #h(0.3em)#it
    ]
  }
  v(0.5em)
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
// SUMMARY
// ============================================================

#heading("Summary")

Full-stack software engineer with 5 years building production web and mobile systems, from idea to owned infrastructure. Co-founded and led engineering at Parhako, an edtech platform of three shipped products serving 2,400+ registered users and 50+ paying customers. Stack: TypeScript, React, Next.js, Node.js, Express, GraphQL, AWS, Supabase.

// ============================================================
// EXPERIENCE
// ============================================================

#heading("Experience")

#entry[
  Lead Software Engineer
][
  Parhako
][
  Islamabad, Pakistan (Remote)
][
  Sep 2024 – Jul 2026
]

#bullets(
  [Co-founded Parhako and led 3 engineers and an intern on parhako.com; designed, built, and ran Parhako NET and Parhako MDCAT end-to-end myself — three production apps serving 2,400+ registered users with 50+ paying customers (Next.js + TypeScript, Node.js on AWS).],
  [Owned cloud infrastructure and deployment on AWS (EC2, Load Balancer, Auto Scaling Groups, CI/CD).],
  [Built the MCQ filter builder and analytics engine over a bank of 43,000+ MCQs; candidates have taken 2,500+ mock tests and 50,000+ practice attempts.],
  [Migrated content generation from a 2-stage Gemini API workflow (strategy then execution) to a 1-stage agent pipeline (Claude Code for NET, OpenCode + GLM-5.1 for MDCAT), producing 765+ structured artifacts (notes, MCQ tests, interactive React/SVG physics labs).],
)

#entry[
  Lead Full-Stack Engineer
][
  Bitsmiths Studio (Contract)
][
  Remote
][
  Aug 2025 – Oct 2025
]

#bullets(
  [Delivered end-to-end features across the product using React, TypeScript, and Supabase.],
  [Improved engineering workflows through code reviews and tooling, and advised junior engineers.],
)

#entry[
  Founder
][
  Lightangle Tech
][
  Remote
][
  Jun 2023 – Aug 2024
]

#bullets(
  [Ran a one-person software studio building products for restaurants; built the product prototypes and ran an outbound client pipeline.],
  [Delivered a 3-month engagement for Baydaar Travels: a travel booking web app — frontend, backend, and deployment.],
  [Completed AWS and IBM certification coursework on Coursera during this period.],
)

#entry[
  Full-Stack Developer
][
  TopDevSpace (Contract)
][
  Remote (USA)
][
  Jan 2023 – Jun 2023
]

#bullets(
  [Led migration of a legacy .NET application to AWS serverless using Terraform, NestJS, AWS Lambda, Step Functions, DynamoDB, and CloudWatch — owning the backend rewrite and replacing fragile synchronous flows with event-driven, observable pipelines.],
)

#entry[
  Full-Stack JS Developer
][
  Smodin
][
  Remote (USA)
][
  Jun 2022 – Dec 2022
]

#bullets(
  [Led the migration from React to Next.js at Smodin, improving performance and scalability of the core product.],
  [Built a reusable UI component library to standardize the interface and lift development velocity across the team.],
)

#entry[
  Freelance Web Developer
][
  Fiverr / Upwork / PeoplePerHour
][
  Remote
][
  Mar 2021 – Jun 2022
]

#bullets(
  [Business management web app — meeting scheduling and invoice management, built with React.],
  [Appointment app for a skin-care clinic, end-to-end with React.],
  [EdTech learning app for primary students, built with React / React Native.],
  [Facebook Marketplace integration via the Facebook Graph API for a client marketplace product.],
  ["Rene Icons," an open-source icon library.],
)

// ============================================================
// PROJECTS
// ============================================================

#pagebreak(weak: true)
#heading("Projects")

#entry[
  Application Filler
][
  #link("https://github.com/faraz-35/application-filler")[github.com/faraz-35/application-filler]
][
  Personal
][
  2026
]

#bullets(
  [Fills form fields and answers questions for you, in your voice, from a context profile. Focus a field and it writes a paste-ready answer; the browser-extension mode fills a whole form at once. Node, Firefox MV3, Hammerspoon, opencode.],
)

#entry[
  DayApp
][
  #link("https://github.com/faraz-35/dayapp")[github.com/faraz-35/dayapp]
][
  Personal
][
  2026
]

#bullets(
  [A native macOS task list that writes my journal as a side effect. Per-task timers, reminders, and a command palette. Tauri (Rust) + React + SQLite.],
)

#entry[
  Writing Partner
][
  #link("https://github.com/faraz-35/writing")[github.com/faraz-35/writing]
][
  Personal
][
  2026
]

#bullets(
  [A writing assistant that refuses to write for you. It reads your draft and flags contradictions and gaps so you fix them yourself, keeping the thinking yours. Swift macOS app + Firefox extension + opencode agent.],
)

#entry[
  Five Lessons
][
  #link("https://github.com/faraz-35/five-lessons")[github.com/faraz-35/five-lessons]
][
  Personal
][
  2026
]

#bullets(
  [An Android app for 5-minute math and CS lessons, each written by an AI teacher. Next.js + Tailwind static export in Capacitor; lessons generated by an LLM agent pipeline.],
)

#entry[
  Musical
][
  #link("https://github.com/faraz-35/musical")[github.com/faraz-35/musical]
][
  Personal
][
  2026
]

#bullets(
  [Singable English subtitles for YouTube songs: translates the lyrics line by line and times them to the music so they can be sung along, shown as a browser overlay. Python (FastAPI, yt-dlp, GLM) + Firefox extension.],
)

// ============================================================
// SKILLS  (grouped, keyword-dense — the ATS-targeted block)
// ============================================================

#heading("Technical Skills")

#let skillrow(label, body) = par(hanging-indent: 1.4in)[
  #box(width: 1.3in)[#text(weight: "bold")[#label]]
  #body
]

#skillrow("Languages:", [TypeScript, JavaScript, Python, SQL]) \
#skillrow("Frontend:", [React, Next.js, React Native Expo, Tailwind CSS, TanStack Query]) \
#skillrow("Backend:", [Node.js, NestJS, Express, GraphQL, Supabase]) \
#skillrow("Databases:", [PostgreSQL, DynamoDB, Firebase, Prisma, Neon]) \
#skillrow("Testing:", [Cypress (end-to-end frontend), Playwright (scraping), Postman/contract schema validation]) \
#skillrow(
  "Cloud / DevOps:",
  [AWS (EC2, Lambda, SAM, CloudWatch, Load Balancer, Auto Scaling), Terraform, CI/CD],
) \
#skillrow("Practices:", [System design, infrastructure-as-code, monorepo architecture])

// ============================================================
// EDUCATION
// ============================================================

#heading("Education")

#entry[
  Bachelor of Science in Software Engineering
][
  National University of Sciences and Technology (NUST)
][
  Islamabad, Pakistan
][
  2019 – 2023
]

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
