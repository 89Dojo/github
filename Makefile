CD = cd terraform/github
VARS = vars.tfvars
PROFILE = hackDojoa

validate:
	@${CD} && \
		terraform workspace select ${PROFILE} && \
		terraform validate \
		-var-file=${VARS}

tf:
	@${CD} && \
		terraform workspace select ${PROFILE} && \
		terraform ${ARGS} \
		-var-file=${VARS}

create-env:
	@${CD} && \
		terraform workspace new ${PROFILE}

remote-enable:
	@${CD} && \
		terraform init \
		-input=true \
		-reconfigure \
		-backend-config "profile=${PROFILE}"

import:
	@${CD} && \
		terraform workspace select ${PROFILE} && \
		terraform import  \
		-var-file=${VARS}

plan:
	@${CD} && \
		terraform workspace select ${PROFILE} && \
		terraform plan \
		-var-file=${VARS}

apply:
	@${CD} && \
		terraform workspace select ${PROFILE} && \
		terraform apply -auto-approve \
		-var-file=${VARS}
