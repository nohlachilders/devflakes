{
    description = "My dev flakes for use with direnv and devenv";
    outputs = { self }: {
        templates = {
            default = {
                path = ./default;
                description = "Template";
            };
            python = {
                path = ./python;
                description = "Basic python venv managed with uv";
            };
            go = {
                path = ./go;
            };
        };
    };
}
