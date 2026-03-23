fn main() {
    // Embed app.ico as the exe icon via Windows resource file
    let target = std::env::var("TARGET").unwrap_or_default();
    if target.contains("windows") {
        let _ = embed_resource::compile("app.rc", embed_resource::NONE);
    }
}
