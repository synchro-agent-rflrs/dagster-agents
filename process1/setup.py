from setuptools import find_packages, setup

setup(
    name="process1",
    packages=find_packages(exclude=["process1_tests"]),
    install_requires=[
        "dagster",
        "dagster-cloud"
    ],
    extras_require={"dev": ["dagster-webserver", "pytest"]},
)
