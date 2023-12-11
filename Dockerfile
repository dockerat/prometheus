FROM ccr.ccs.tencentyun.com/storezhang/alpine:3.19.0


LABEL author="storezhang<华寅>" \
    email="storezhang@gmail.com" \
    qq="160290688" \
    wechat="storezhang" \
    description="普罗米修斯Exporter基础镜像，提供诸如Node、Pod、Ip、Namespace等常用Kubernetes监控标签"


# 普罗米修斯标签
ENV NAMESPACE_LABEL namespace
ENV PROMETHEUS_LABEL_KEY_NAMESPACE "\${NAMESPACE_LABEL}"
ENV PROMETHEUS_LABEL_VALUE_NAMESPACE "\${NAMESPACE}"

ENV POD_LABEL pod
ENV PROMETHEUS_LABEL_KEY_POD "\${POD_LABEL}"
ENV PROMETHEUS_LABEL_VALUE_POD "\${POD}"

ENV NODE_LABEL node
ENV PROMETHEUS_LABEL_KEY_NODE "\${NODE_LABEL}"
ENV PROMETHEUS_LABEL_VALUE_NODE "\${NODE}"

ENV IP_LABEL ip
ENV PROMETHEUS_LABEL_KEY_IP "\${IP_LABEL}"
ENV PROMETHEUS_LABEL_VALUE_IP "\${IP}"
