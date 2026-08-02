def test():
    try:
        choice = input("Prompt: ")
        print(f"Choice: {choice}")
    except Exception as e:
        print(f"Exception: {e}")
test()
