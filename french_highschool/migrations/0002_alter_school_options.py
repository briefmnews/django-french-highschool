# Generated by Django 4.2.16 on 2024-09-17 13:53

from django.db import migrations


class Migration(migrations.Migration):
    dependencies = [
        ("french_highschool", "0001_initial"),
    ]

    operations = [
        migrations.AlterModelOptions(
            name="school",
            options={"verbose_name": "École", "verbose_name_plural": "Écoles"},
        ),
    ]
