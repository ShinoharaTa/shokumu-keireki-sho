#let achivements = yaml("achivements.yaml")

== 個人開発・学習・その他活動

#for achivement in achivements {
  heading(level: 3, achivement.key_name)
  let cells = ()
  for item in achivement.items {
    cells.push(table.cell(fill: luma(222), text(weight: 700, "タイトル")))
    cells.push(item.title)
    cells.push(table.cell(colspan: 2, item.description))

    if "tech-stack" in item.keys() {
      cells.push(table.cell(colspan: 2, [
        #text(weight: 700, "【使用技術・環境】")
        #linebreak()
        #item.tech-stack
      ]))
    }
    if "urls" in item.keys() {
      cells.push(table.cell(colspan: 2, [
        #text(weight: 700, "【参考URL】")
        #linebreak()
        #for url in item.urls{
          [
            #text(weight: 400, url.title)
            #linebreak()
            #url.url
            #linebreak()
          ]
        }
      ]))
    }
  }

  table(
    columns: (1.4fr, 7fr),
    rows: auto,
    stroke: 0.5pt,
    inset: 6pt,
    ..cells
  )
}
