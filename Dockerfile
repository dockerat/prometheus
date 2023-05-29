FROM ccr.ccs.tencentyun.com/storezhang/alpine:3.18.0


LABEL author="storezhang<华寅>" \
    email="storezhang@gmail.com" \
    qq="160290688" \
    wechat="storezhang" \
    description="普罗米修斯Exporter基础镜像，提供诸如Node、Pod、Ip、Namespace等常用Kubernetes监控标签"


# 普罗米修斯标签
ENV PROMETHEUS_LABEL_KEY_NAMESPACE kubernetes_namespace
ENV PROMETHEUS_LABEL_VALUE_NAMESPACE $${NAMESPACE}

ENV PROMETHEUS_LABEL_KEY_POD kubernetes_pod_name
ENV PROMETHEUS_LABEL_VALUE_POD $${POD}

ENV PROMETHEUS_LABEL_KEY_NODE kubernetes_node_name
ENV PROMETHEUS_LABEL_VALUE_NODE $${NODE}

ENV PROMETHEUS_LABEL_KEY_IP kubernetes_ip
ENV PROMETHEUS_LABEL_VALUE_IP $${IP}
