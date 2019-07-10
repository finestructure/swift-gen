# examples:
# env SWIFT_VERSION=swift-DEVELOPMENT-SNAPSHOT-2019-05-19-a SWIFT_BRANCH=development make build
# env SWIFT_VERSION=swift-5.0.1-RELEASE SWIFT_BRANCH=swift-5.0.1-release make build

build:
	docker build \
		--build-arg SWIFT_VERSION=$(SWIFT_VERSION) \
		--build-arg SWIFT_BRANCH=$(SWIFT_BRANCH) \
		-t finestructure/swift:$(SWIFT_VERSION) \
		-f Dockerfile \
		.

push:
	docker push finestructure/swift:$(SWIFT_VERSION)

build-slim:
	docker build \
		--build-arg SWIFT_VERSION=$(SWIFT_VERSION) \
		--build-arg SWIFT_BRANCH=$(SWIFT_BRANCH) \
		-t finestructure/swift:$(SWIFT_VERSION)-slim \
		-f Dockerfile.slim \
		.

push-slim:
	docker push finestructure/swift:$(SWIFT_VERSION)-slim
