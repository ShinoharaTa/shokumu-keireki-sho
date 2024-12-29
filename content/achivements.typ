#let achivements = yaml("achivements.yaml")

== 個人開発・学習・その他活動

=== 個人開発
#table(
  columns: (1.4fr, 7fr, 1.6fr),
  rows: auto,
  stroke: 0.5pt,
  inset: 6pt,
  ..for item in achivements.personal_projects {(
    table.cell(fill: luma(222))[#text(weight: 700, "タイトル")],
    item.title,
    table.cell(rowspan: 2, align: horizon, breakable: item.at("breakable", default: false))[#item.tech-stack],
    table.cell(colspan: 2, align: horizon)[#item.content],
  )}
)
