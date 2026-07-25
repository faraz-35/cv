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

Full-stack software engineer with 5 years building production web and mobile
systems, from idea to scaling infrastructure. Co-founder and lead
engineer of an edtech platform serving three shipped products. I architect reliable applications and design intuitive user experiences for a living. Primary Stack : React, Next, Node, Express, AWS, Supabase.

// ============================================================
// EXPERIENCE
// ============================================================

#heading("Experience")

#entry[
  Co-Founder & Lead Software Engineer
][
  Parhako
][
  Islamabad, Pakistan (Remote)
][
  Aug 2024 - Present
]

#bullets(
  [Architected and built the Parhako learning platforms — three production apps (parhako.com, Parhako NET, Parhako MDCAT) used by Pakistani entrance-exam candidates, using Next.js + TypeScript frontend and Node.js backend.],
  [Owned cloud infrastructure and deployment on AWS: EC2, Load Balancer, Auto Scaling Groups, and CI pipelines.],
  [Built the MCQ filter builder — enabling candidates to construct fine-grained practice sets.],
  [Created an agent driven AI content generation pipeline.],
)

#entry[
  Full-Stack Developer
][
  Agency - Contract
][
  Remote (USA)
][
  Jan 2023 - Aug 2023
]

#bullets(
  [Led migration of a legacy .NET application to AWS using Terraform, NestJS, AWS Lambda, Step Functions, DynamoDB, and CloudWatch — moving the workload off monolithic infrastructure onto event-driven serverless.],
  [Owned the backend rewrite in NestJS and wired Lambda/Step Functions orchestration, replacing fragile synchronous flows with resilient, observable pipelines.],
  [Improved UX by streamlining interface interactions and applying usability principles across the migrated product surface.],
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
  Fiverr / Upwork
][
  Remote
][
  Mar 2020 - Jun 2022
]

#bullets(
  [Delivered end-to-end client projects solo, including a business management app, an appointment app, and an EdTech learning app built with React / React Native.],
  [Built a travel booking web app for Baydaar Experiences, covering frontend, backend, and deployment.],
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
#skillrow("Backend:", [Node.js, Express, GraphQL, Supabase, AWS SAM]) \
#skillrow("Databases:", [PostgreSQL, DynamoDB, Firebase, Prisma]) \
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
