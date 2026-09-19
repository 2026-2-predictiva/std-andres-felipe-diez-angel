@echo off

py -m pip install --upgrade pip
py -m pip install -r requirements.txt


# pip install pandas pytest
# ==============================================================================
# GUÍA RÁPIDA: SOLUCIÓN DE ERRORES DE PANDAS Y PYTEST EN EL ENTORNO VIRTUAL
# ==============================================================================
#
# 1. EL PROBLEMA:
#    El error "ModuleNotFoundError: No module named 'pandas'" y los fallos en 
#    pytest ocurren porque VS Code o tu terminal están ejecutando Python desde 
#    la ruta global del sistema (AppData\Local\Programs\Python\Python311\...) 
#    en lugar de usar el entorno virtual donde residen las dependencias del proyecto.
#
# 2. LA SOLUCIÓN PASO A PASO:
#
#    A. Crear y activar el entorno virtual (si aún no lo tienes):
#       - Crear el entorno:
#         py -3.11 -m venv .venv
#
#       - Activar el entorno (según tu terminal):
#         * En Command Prompt (cmd):
#           .venv\Scripts\activate.bat
#         * En PowerShell:
#           .venv\Scripts\Activate.ps1
#
#    B. Instalar las dependencias necesarias (pandas, pytest, etc.):
#       - Una vez activo el entorno (.venv debe aparecer al inicio de tu línea de comandos):
#         pip install pandas pytest
#         (O si el repositorio incluye un archivo de dependencias):
#         pip install -r requirements.txt
#
#    C. Configurar el intérprete en VS Code para que Pytest detecte el entorno:
#       - Presiona Ctrl + Shift + P para abrir la paleta de comandos.
#       - Escribe y selecciona: "Python: Select Interpreter" (Python: Seleccionar intérprete).
#       - Elige la ruta que apunta a tu entorno virtual: .\.venv\Scripts\python.exe
#       - Recarga la ventana de VS Code (Ctrl + Shift + P -> "Developer: Reload Window").
#
#    D. Cómo borrar o reiniciar el entorno virtual si algo sale mal:
#       - En Command Prompt (cmd):
#         rmdir /s /q .venv
#       - En PowerShell:
#         Remove-Item -Recurse -Force .venv
#
# ==============================================================================