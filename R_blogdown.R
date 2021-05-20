# blogdown in R with Heidi Steiner
# https://github.com/heidiesteiner/resbaz2021/blob/main/blogdownwebsite.Rmd

library(blogdown)

# pick a theme
new_site(theme = "gcushen/hugo-academic", 
         sample = TRUE, 
         theme_example = TRUE, 
         empty_dirs = TRUE,
         to_yaml = TRUE)

hugo_version()

# blogdown::install_hugo(force = T)

file.create("netlify.toml")

hugo_version()

[build]
publish = "public"
command = "hugo"
[context.production.environment]
HUGO_VERSION = "0.83.1"
HUGO_ENV = "production"
HUGO_ENABLEGITINFO = "true"
[context.branch-deploy.environment]
HUGO_VERSION = "0.83.1"
[context.deploy-preview.environment]
HUGO_VERSION = "0.83.1"

.Rproj.user
.Rhistory
.RData
.Ruserdata
public/
  .DS_Store

# https://www.emmanuelteitelbaum.com/post/create-a-website-with-blogdown-and-hugo/
