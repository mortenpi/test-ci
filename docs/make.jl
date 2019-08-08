using Documenter, Weave, TestCI

for file ∈ readdir(joinpath(dirname(pathof(TestCI)), "..", "docs", "jmd"))
      weave(joinpath(dirname(pathof(TestCI)), "..", "docs", "jmd", file),
            out_path = joinpath(dirname(pathof(TestCI)), "..", "docs", "src"),
            doctype = "github")
end

makedocs(format = Documenter.HTML(assets = ["assets/custom.css"]),
         modules = [TestCI],
         sitename = "TestCI"
    )

# deploydocs(repo = "github.com/Nosferican/TestCI.git")
