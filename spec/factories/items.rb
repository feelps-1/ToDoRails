FactoryBot.define do
  factory :item do
    content { "Tarefa de exemplo" }
    status { "to_do" } # Substitua por valores válidos
    association :list # Garante que o item seja associado a uma lista
  end
end
