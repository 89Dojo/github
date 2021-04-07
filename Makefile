CD = cd terraform/github
VARS = vars.tfvars

validate:
	@${CD} && \
		terraform validate \
		-var-file=${VARS}

tf:
	@${CD} && \
		terraform ${ARGS} \
		-var-file=${VARS}

remote-enable:
	@${CD} && \
		terraform init \
		-input=true \
		-reconfigure

import:
	@${CD} && \
		terraform import  \
		-var-file=${VARS}

plan:
	@${CD} && \
		terraform plan \
		-var-file=${VARS}

apply:
	@${CD} && \
		terraform apply -auto-approve \
		-var-file=${VARS}
