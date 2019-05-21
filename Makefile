# env VERSION=swift-DEVELOPMENT-SNAPSHOT-2019-05-19-a make build

build:
	docker build -t finestructure/swift:$(VERSION) .

push:
	docker push finestructure/swift:$(VERSION)
