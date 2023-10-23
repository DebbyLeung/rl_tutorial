FROM tensorflow/tensorflow:latest-gpu

WORKDIR /tf-docker
RUN pip install pandas seaborn scikit-learn jupyterlab

EXPOSE 8888

# CMD jupyter notebook --notebook-dir=/tf_dl --ip 0.0.0.0 --no-browser --allow-root
ENTRYPOINT ["jupyter","lab","--ip=0.0.0.0","--allow-root","--no-browser"]