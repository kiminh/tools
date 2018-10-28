# -*- coding: utf-8 -*-

#########################################################
###compress
import tarfile
import os
def tar(file_name, compress_paths):
    tar=tarfile.open(file_name,'w')
    for compress_path in compress_paths:
        tar.add(compress_path)
    tar.close()

import gzip
#gz compress can only contain one file(or tar file)
def gz(file_name, compress_path):
    with open(compress_path[0], 'rb') as plain_file:
        with gzip.open(file_name, 'wb') as gz:
            gz.writelines(plain_file)

import tarfile
def tgz(file_name, compress_paths):
    tar=tarfile.open(file_name,'w:gz')
    for compress_path in compress_paths:
        compress_path = compress_path.rstrip("/")
        tar.add(compress_path,arcname=os.path.basename(compress_path))
    tar.close()

import zipfile
def zip(file_name, compress_paths):
    zf = zipfile.ZipFile(file_name, "w", zipfile.ZIP_STORED)
    for compress_path in compress_paths:
        compress_path = compress_path.rstrip("/")
        if os.path.isfile(compress_path):
            arc_name = compress_path[compress_path.rfind("/")+1:]
            zf.write(compress_path, arc_name)
        else:
            for root,dirs,files in os.walk(compress_path):
                for name in files:
                    abs_path = os.path.join(root,name)
                    arc_name = os.path.relpath(abs_path,os.path.dirname(compress_path))
                    zf.write(abs_path,arc_name)
    zf.close()

#########################################################
###uncompress
###un_gz:gunzip -d
###un_tar:tar x
###un_zip:unzip
###un_rar:rar e

import gzip
import os
def un_gz(file_name, target_dir):
    """ungz zip file"""
    f_name = file_name.replace(".gz", "")
    #获取文件的名称，去掉
    g_file = gzip.GzipFile(os.path.join(target_dir,file_name))
    #创建gzip对象
    open(f_name, "w+").write(g_file.read())
    #gzip对象用read()打开后，写入open()建立的文件中。
    g_file.close()
    #关闭gzip对象


import tarfile
def un_tar(file_name, target_dir):
    """untar zip file"""
    tar = tarfile.open(file_name)
    names = tar.getnames()
    if os.path.isdir(target_dir):
        pass
    else:
        os.mkdir(target_dir)
    #由于解压后是许多文件，预先建立同名文件夹
    for name in names:
        tar.extract(name, target_dir)
    tar.close()


import zipfile
def un_zip(file_name, target_dir):
    """unzip zip file"""
    zip_file = zipfile.ZipFile(file_name)
    if os.path.isdir(target_dir):
        pass
    else:
        os.mkdir(target_dir)
    for names in zip_file.namelist():
        zip_file.extract(names,target_dir)
    zip_file.close()


####rar python package download link:
##https://jaist.dl.sourceforge.net/project/rarfile.berlios/rarfile-2.4.tar.gz
#import rarfile
#import os
#def un_rar(file_name, target_dir):
#    """unrar zip file"""
#    rar = rarfile.RarFile(file_name)
#    if os.path.isdir(target_dir):
#        pass
#    else:
#        os.mkdir(target_dir)
#    rar.extractall(target_dir)
#    rar.close()



if __name__=="__main__":
    import sys
    if len(sys.argv) <= 3:
        print "func_name:un_gz,un_tar,un_zip compress_file target_dir"
        print "func_name:tar,gz,tgz,zip compress_file_name target_file_paths"
        exit()
    func_name = sys.argv[1]
    if func_name.find("un") != -1:
        #uncompress
        file_name = sys.argv[2]
        target_dir = sys.argv[3]
        #from func_name str ro func
        func_name = eval(func_name)
        func_name(file_name, target_dir)
    else:
        #compress
        compress_file_name = sys.argv[2]
        file_list = sys.argv[3:]
        func_name = eval(func_name)
        func_name(compress_file_name, file_list)


