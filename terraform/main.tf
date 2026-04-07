# Створення проєкту на Vercel
resource "vercel_project" "lab_deployment" {
  name      = "lab6-terraform-react"
  framework = "vite"  # або "nextjs", якщо вимога лаби саме nextjs, але для твого випадку краще vite
  
  git_repository = {
    type = "github"
    repo = "mishalolka299/lab-1-setup"
  }
  
  build_command = "npm run build"
  output_directory = "dist"
  install_command = "npm install"
  root_directory = "my-app"  # Вказуємо, що проєкт у підпапці
}

# Додавання кастомного домену
resource "vercel_project_domain" "custom_domain" {
  project_id = vercel_project.lab_deployment.id
  domain = "lab6-${var.student_id}.vercel.app"
}