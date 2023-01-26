# Generated by Django 4.1.5 on 2023-01-25 14:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0015_alter_product_image_alter_variation_image'),
    ]

    operations = [
        migrations.AlterField(
            model_name='client',
            name='image',
            field=models.ImageField(blank=True, null=True, upload_to='image'),
        ),
        migrations.AlterField(
            model_name='product',
            name='image',
            field=models.ImageField(null=True, upload_to='image'),
        ),
        migrations.AlterField(
            model_name='variation',
            name='image',
            field=models.ImageField(upload_to='image'),
        ),
    ]
