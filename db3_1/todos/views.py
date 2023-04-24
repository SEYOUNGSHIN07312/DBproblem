from django.shortcuts import render, redirect
from .models import Todo
from .forms import TodoForm

# Create your views here.
def index(request):
    if request.user.is_authenticated:
        todos = Todo.objects.all()
        context = {'todos':todos}
        return render(request, 'todos/index.html', context)
    return redirect('accounts:login')

def create(request):
    if request.method == 'POST':
        form = TodoForm(request.POST)
        if form.is_valid():
            form = form.save(commit=False)
            form.author = request.user
            form.save()
            return redirect('todos:index')
    form = TodoForm()
    context = {'form':form}
    return render(request, 'todos/create.html', context)

def complete(request, pk):
    if request.user.is_authenticated:
        if request.method == 'POST':
            todo = Todo.objects.get(pk=pk)
            if todo.completed == False:
                todo.completed = True
                todo.save()
            else:
                todo.completed = False
                todo.save()
        return redirect('todos:index')
    return redirect('accounts:login')

def delete(request, pk):
    if request.user.is_authenticated:
        if request.method == 'POST':
            todo = Todo.objects.get(pk=pk)
            todo.delete()
        return redirect('todos:index')
    return redirect('accounts:login')