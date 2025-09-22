import from byllm { Model }

# Initialize Gemini model with API key directly
glob llm = Model(
    model_name="gemini/gemini-2.0-flash",
    api_key="*****************************************"
);

enum Personality {
    INTROVERT = "Introvert",
    EXTROVERT = "Extrovert",
    AMBIVERT = "Ambivert"
}

def get_personality(name: str) -> Personality by llm();

with entry {
    name = "Emmanuel Sitienei";
    result = get_personality(name);
    print(f"{result.value} personality detected for {name}");
}
