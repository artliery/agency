def resolve_image_url(file_field, fallback=""):
    """
    Return a safe image URL from any ImageField/FileField.
    Uses fallback when file is empty or URL resolution fails.
    """
    if not file_field:
        return fallback

    try:
        return file_field.url
    except Exception:
        return fallback
