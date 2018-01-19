from django import forms

class NameForm(forms.Form):
    your_name = forms.CharField(label='Operator name', max_length=100,widget= forms.TextInput(attrs={'placeholder':'Name'}),required=True)
    board_id = forms.CharField(label='batch-id',max_length=100,widget= forms.TextInput(attrs={'placeholder':'batch-id'}),required=True)
	
