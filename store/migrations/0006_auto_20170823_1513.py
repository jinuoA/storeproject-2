# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('store', '0005_auto_20170823_0229'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ad',
            name='date_publish',
            field=models.DateTimeField(verbose_name='发布时间', auto_now_add=True),
        ),
        migrations.AlterField(
            model_name='ad',
            name='image_url',
            field=models.ImageField(verbose_name='图片路径', upload_to='ad/%Y/%m'),
        ),
        migrations.AlterField(
            model_name='ad',
            name='index',
            field=models.IntegerField(default=1, verbose_name='排列顺序'),
        ),
        migrations.AlterField(
            model_name='ad',
            name='title',
            field=models.CharField(verbose_name='标题', max_length=50),
        ),
        migrations.AlterField(
            model_name='brand',
            name='index',
            field=models.IntegerField(default=1, verbose_name='排列顺序'),
        ),
        migrations.AlterField(
            model_name='brand',
            name='name',
            field=models.CharField(verbose_name='品牌名称', max_length=30),
        ),
        migrations.AlterField(
            model_name='caritem',
            name='clothing',
            field=models.ForeignKey(to='store.Clothing', verbose_name='购物车中产品条目'),
        ),
        migrations.AlterField(
            model_name='caritem',
            name='quantity',
            field=models.IntegerField(default=0, verbose_name='数量'),
        ),
        migrations.AlterField(
            model_name='caritem',
            name='sum_price',
            field=models.FloatField(default=0.0, verbose_name='小计'),
        ),
        migrations.AlterField(
            model_name='category',
            name='index',
            field=models.IntegerField(default=1, verbose_name='分类的排序'),
        ),
        migrations.AlterField(
            model_name='category',
            name='name',
            field=models.CharField(verbose_name='分类名称', max_length=30),
        ),
        migrations.AlterField(
            model_name='category',
            name='sex',
            field=models.IntegerField(default=0, verbose_name='性别'),
        ),
        migrations.AlterField(
            model_name='category',
            name='typ',
            field=models.CharField(verbose_name='所属大类', max_length=20),
        ),
        migrations.AlterField(
            model_name='clothing',
            name='brand',
            field=models.ForeignKey(to='store.Brand', verbose_name='品牌'),
        ),
        migrations.AlterField(
            model_name='clothing',
            name='category',
            field=models.ForeignKey(to='store.Category', verbose_name='分类'),
        ),
        migrations.AlterField(
            model_name='clothing',
            name='desc',
            field=models.CharField(verbose_name='简介', max_length=100),
        ),
        migrations.AlterField(
            model_name='clothing',
            name='discount',
            field=models.FloatField(default=1, verbose_name='折扣'),
        ),
        migrations.AlterField(
            model_name='clothing',
            name='image_url_c',
            field=models.ImageField(default='clothing/ce.jpg', verbose_name='购物车展示图片', upload_to='clothing/%Y/%m'),
        ),
        migrations.AlterField(
            model_name='clothing',
            name='image_url_i',
            field=models.ImageField(default='clothing/default.jpg', verbose_name='展示图片路径', upload_to='clothing/%Y/%m'),
        ),
        migrations.AlterField(
            model_name='clothing',
            name='image_url_l',
            field=models.ImageField(default='clothing/default.jpg', verbose_name='详情图片路径1', upload_to='clothing/%Y/%m'),
        ),
        migrations.AlterField(
            model_name='clothing',
            name='image_url_m',
            field=models.ImageField(default='clothing/default.jpg', verbose_name='详情图片路径2', upload_to='clothing/%Y/%m'),
        ),
        migrations.AlterField(
            model_name='clothing',
            name='image_url_r',
            field=models.ImageField(default='clothing/default.jpg', verbose_name='详情图片路径3', upload_to='clothing/%Y/%m'),
        ),
        migrations.AlterField(
            model_name='clothing',
            name='name',
            field=models.CharField(verbose_name='名称', max_length=30),
        ),
        migrations.AlterField(
            model_name='clothing',
            name='new_price',
            field=models.FloatField(default=0.0, verbose_name='现价'),
        ),
        migrations.AlterField(
            model_name='clothing',
            name='num',
            field=models.IntegerField(default=0, verbose_name='库存'),
        ),
        migrations.AlterField(
            model_name='clothing',
            name='old_price',
            field=models.FloatField(default=0.0, verbose_name='原价'),
        ),
        migrations.AlterField(
            model_name='clothing',
            name='sales',
            field=models.IntegerField(default=0, verbose_name='销量'),
        ),
        migrations.AlterField(
            model_name='clothing',
            name='size',
            field=models.ManyToManyField(to='store.Size', verbose_name='尺寸'),
        ),
        migrations.AlterField(
            model_name='clothing',
            name='tag',
            field=models.ManyToManyField(to='store.Tag', verbose_name='标签'),
        ),
        migrations.AlterField(
            model_name='size',
            name='index',
            field=models.IntegerField(default=1, verbose_name='排列顺序'),
        ),
        migrations.AlterField(
            model_name='size',
            name='name',
            field=models.CharField(verbose_name='尺寸', max_length=20),
        ),
        migrations.AlterField(
            model_name='tag',
            name='name',
            field=models.CharField(verbose_name='标签', max_length=30),
        ),
        migrations.AlterField(
            model_name='user',
            name='mobile',
            field=models.CharField(null=True, verbose_name='手机号码', unique=True, blank=True, max_length=11),
        ),
        migrations.AlterField(
            model_name='user',
            name='qq',
            field=models.CharField(null=True, verbose_name='QQ号码', blank=True, max_length=20),
        ),
    ]
