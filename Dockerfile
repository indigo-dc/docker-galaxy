FROM indigodatacloud/ubuntu-sshd:14.04

COPY ["playbook.yaml","entrypoint.sh","/"]

RUN ansible-galaxy install indigo-dc.galaxy

RUN echo "localhost" > /etc/ansible/hosts

RUN ansible-playbook /playbook.yaml

EXPOSE 22 8080

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/usr/sbin/sshd", "-D"]
