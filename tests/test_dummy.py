def test_dummy_fail() -> None:
    assert True is not True, "Dummy always failing test"


def test_dummy_pass() -> None:
    assert True is True, "Dummy always passing test"
