// Faraz Shah - Resume
// Single-column, ATS-safe, 2-page. Built in Typst.
// Edit content in the #let blocks below; layout lives in the styling.

#let name = "Faraz Shah"
#let title = "Full-Stack Software Engineer"
#let email = "syedfarazshah350@gmail.com"
#let phone = "+92 3437732456"
#let location = "Islamabad, Pakistan"
#let linkedin = "linkedin.com/in/s-m-faraz-shah-4639291b2"
#let github = "github.com/faraz-35"

// ---- Page setup: US Letter, tight margins, single column ----
#set page(
  paper: "us-letter",
  margin: (top: 0.5in, bottom: 0.5in, left: 0.6in, right: 0.6in),
)
#set text(font: "New Computer Modern", size: 10pt, lang: "en")
#set par(leading: 0.7em, justify: false, spacing: 0.85em)

// Links as plain text so ATS sees them (not as rendered hyperlinks)
#show link: it => it.body

// ---- Section heading style ----
#let heading(body) = {
  v(1.2em)
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
  v(1.1em)
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
    #email #h(0.8em)|#h(0.8em) #phone #h(0.8em)|#h(0.8em) #location \
    #linkedin #h(0.8em)|#h(0.8em) #github
  ]
]

#v(0.3em)

// ============================================================
// SUMMARY
// ============================================================

#heading("Summary")

Full-stack software engineer with 5 years building production web and mobile systems, from idea to owned infrastructure. Co-founded and led engineering at Parhako, an edtech platform of three shipped products serving 2,000+ students with 43,000+ AI-generated MCQs. Stack: TypeScript, React, Next.js, Node.js, Express, GraphQL, AWS, Supabase.

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
  Aug 2024 - Jul 2026
]

#bullets(
  [Co-founded Parhako and led a team of 3 engineers across three production apps (parhako.com, Parhako NET, Parhako MDCAT) now serving 2,000+ registered students, built with Next.js + TypeScript and Node.js on AWS.],
  [Owned cloud infrastructure and deployment on AWS (EC2, Load Balancer, Auto Scaling Groups, CI/CD), migrating databases to Neon to cut hosting cost.],
  [Built the MCQ filter builder and analytics engine over a bank of 43,000+ MCQs; candidates have taken 2,500+ mock tests and 50,000+ practice attempts.],
  [Migrated content generation from a 2-stage Gemini API workflow (strategy then execution) to a 1-stage agent pipeline (Claude Code for NET, OpenCode + GLM-5.1 for MDCAT), producing 765+ structured artifacts (notes, MCQ tests, interactive React/SVG physics labs) — model quality improved enough to drop the intermediate planning step.],
)

#entry[
  Lead Full Stack Engineer
][
  Bitsmiths Studio
][
  Remote
][
  Aug 2025 - Oct 2025
]

#bullets(
  [Delivered end-to-end features across the product surface using React, TypeScript, and Supabase.],
  [Improved code quality and engineering workflows through review practices and tooling.],
  [Advised junior engineers, raising team delivery and technical standards.],
)

#entry[
  Full-Stack Developer
][
  TopDevSpace (Contract)
][
  Remote (USA)
][
  Jan 2023 - Jun 2023
]

#bullets(
  [Led migration of a legacy .NET application to AWS using Terraform, NestJS, AWS Lambda, Step Functions, DynamoDB, and CloudWatch — moving the workload off monolithic infrastructure onto event-driven serverless.],
  [Owned the backend rewrite in NestJS and wired Lambda/Step Functions orchestration, replacing fragile synchronous flows with resilient, observable pipelines.],
)

#entry[
  Full-Stack JS Developer
][
  Smodin
][
  Remote (USA)
][
  Jun 2022 - Dec 2022
]

#bullets(
  [Led the migration from React to Next.js at Smodin, improving performance and scalability of the core product.],
  [Built a reusable UI component library to standardize the interface and lift development velocity across the team.],
  [Shipped a modern user interface on top of the new architecture.],
)

#entry[
  Freelance Web Developer
][
  Fiverr / Upwork / PeoplePerHour
][
  Remote
][
  Mar 2021 - Jun 2022
]

#bullets(
  [Business management web app — meeting scheduling and invoice management, built with React.],
  [Appointment app for a skin-care clinic, end-to-end with React.],
  [EdTech learning app for primary students, built with React / React Native.],
  [Facebook Marketplace integration via the Facebook Graph API for a client marketplace product.],
  [Travel booking web app for Baydaar Experiences — frontend, backend, and deployment.],
  ["Rene Icons," an open-source icon library.],
)

// ============================================================
// PROJECTS
// ============================================================

#v(0.8em)
#heading("Projects")

#entry[
  Five Lessons
][
  github.com/faraz-35/five-lessons
][
  Personal
][
  2025
]

#bullets(
  [Built a pipeline that generates 5-minute math and CS lessons via spawned LLM agents, consumed in a Capacitor Android app backed by a Next.js + Tailwind static export frontend.],
)

#entry[
  Musical
][
  Personal (local)
][
  Personal
][
  2025
]

#bullets(
  [Custom romanticized English subtitles for YouTube songs: Python backend (FastAPI + yt-dlp + syncedlyrics + LLM) that fetches, aligns, and rewrites lyrics, surfaced via a Firefox MV3 browser extension overlay.],
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
#skillrow("Frontend:", [React, Next.js, React Native Expo, Tailwind CSS, Tanstack Query]) \
#skillrow("Backend:", [Node.js, NestJS, Express, GraphQL, Supabase, AWS SAM]) \
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
  2019 - 2023
]

// ============================================================
// CERTIFICATIONS
// ============================================================

#heading("Certifications")

AWS Cloud Solutions Architect — AWS \
DevOps on AWS — AWS \
IBM Full Stack Software Developer — IBM \
Meta Front-End Developer — Meta \
Meta React Native — Meta

// ============================================================
// LANGUAGES
// ============================================================

#heading("Languages")

English (Full Professional) #h(1.5em) Urdu (Full Professional)
