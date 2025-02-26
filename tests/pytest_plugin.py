def pytest_addoption(parser):
    parser.addoption("--env-config")


def pytest_configure(config):
    print(f"loading env config: {config.env_config}")
