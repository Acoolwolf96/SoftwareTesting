def verify(age):
    if age < 18:
        return 'You are a Child'
    elif age < 70:
        return 'You are an Adult'
    else:
        return 'You are a Pensioner'       