#let sans = ("Source Han Sans", "Noto Sans CJK JP");
#let mono = ("Source Han Mono", "Noto Sans Mono CJK JP");
#set text(
  lang: "ja",
  font: sans,
  size: 8pt,
)
#show raw: set text(
  font: mono,
  size: 8pt,
)
#set table(
  inset: (y: 10pt, x: 1em)
)
#set page(
  paper: "a4",
  margin: (bottom: 1.0cm, top: 1.5cm, left: 1.2cm, right: 1.2cm),
)
#show heading.where(level: 1): it => {
  align(center, text(weight: 400, 1.8em, it.body))
}
#show heading.where(level: 2): it => {
  v(1em)
  text(weight: 700, 1.5em, it.body)
  v(-0.5em)
}
#show heading.where(level: 3): it => {
  v(1em)
  text(weight: 500, 1.2em, it.body)
  v(-0.5em)
  line(stroke: 0.5pt, length: 100%)
}

// ※タイトル
= 職務経歴書

// 個人情報
#include("/content/profile.typ")

// 業務概要
#include("/content/overview.typ")

// 業務詳細
#include("/content/jobs.typ")

#include("/content/achivements.typ")
