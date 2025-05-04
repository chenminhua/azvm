RESOURCE_GROUP := azvm
DATE := $(shell date +%Y-%m-%d-%H-%M-%S)
DEPLOYMENT_NAME := deployment-$(DATE)
SSH_KEY_PATH := ~/.ssh/id_rsa.pub

azup: 
	az group create -n "$(RESOURCE_GROUP)" --location "eastasia" 
	az deployment group create -n "$(DEPLOYMENT_NAME)" \
		--resource-group "$(RESOURCE_GROUP)" \
		--template-file ./vm.json \
		--parameters ./vm.parameters.json adminPublicKey=@$(SSH_KEY_PATH)
	az network public-ip list -o table

clean:
	az group delete -n "$(RESOURCE_GROUP)" --yes --no-wait
