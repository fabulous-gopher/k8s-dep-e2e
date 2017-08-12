package apimachinery

import (
	"fmt"
	
	_ "k8s.io/kube-openapi/pkg/aggregator"
)

func F() {
	fmt.Println("Hello World from k8s.io/apimachinery")
}
