# Generated by Django 4.1.5 on 2023-01-25 08:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0011_remove_variation_product_variation_product'),
    ]

    operations = [
        migrations.AddField(
            model_name='variation',
            name='name',
            field=models.CharField(max_length=255, null=True),
        ),
    ]