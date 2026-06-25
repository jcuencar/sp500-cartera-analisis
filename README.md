# Análisis y Construcción de Cartera de Inversión S&P 500

## Descripción del proyecto
Proyecto final del bootcamp de análisis de datos. El objetivo es analizar el comportamiento histórico del mercado de renta variable americana para construir y justificar una cartera de inversión de 50.000 dólares dirigida a un perfil inversor moderado.

Se trata de un proyecto integrador que aplica las herramientas y técnicas estudiadas durante el bootcamp a un caso realista: la selección de activos cotizados del S&P 500 mediante el análisis sistemático de KPIs financieros y la aplicación de técnicas estadísticas y de machine learning.

## Preguntas de negocio
- ¿Qué sectores del S&P 500 ofrecen mejor combinación de rentabilidad y riesgo para un perfil moderado?
- ¿Qué empresas dentro de esos sectores cumplen con los KPIs financieros mínimos exigidos?
- ¿Existen perfiles naturales de empresas que el algoritmo de clustering pueda identificar?
- ¿Los KPIs seleccionados tienen relación real con la rentabilidad histórica observada?
- ¿Cómo debe distribuirse el capital de 50.000 dólares entre los activos seleccionados?

## Datasets utilizados
Ambos datasets proceden de Kaggle:

- **200+ Financial Indicators of US Stocks (2014-2018)** → dataset principal con más de 200 indicadores financieros por empresa.
- **S&P 500 Companies** → listado oficial de empresas del índice con clasificación sectorial GICS.

## Sectores analizados
- Tecnología (Technology)
- Energía (Energy)
- Salud (Healthcare)
- Materiales (Basic Materials)

## KPIs de selección de empresas

| KPI | Tecnología | Energy | Healthcare | Materials |
|-----|-----------|--------|------------|-----------|
| ROE mínimo | ≥ 15% | ≥ 12% | ≥ 15% | ≥ 10% |
| Margen neto | ≥ 15% | ≥ 8% | ≥ 10% | ≥ 8% |
| Deuda/Equity | ≤ 1.5 | ≤ 2.0 | ≤ 1.5 | ≤ 1.5 |
| PER | ≤ 40 | ≤ 20 | ≤ 25 | ≤ 20 |
| Crecimiento ingresos | ≥ 5% | ≥ 3% | ≥ 5% | ≥ 3% |

## KPIs de calidad de la cartera

| KPI | Umbral |
|-----|--------|
| Rentabilidad histórica media anual | ≥ 8% |
| Volatilidad anual | ≤ 20% |
| Sharpe Ratio | ≥ 1 |
| Beta | Entre 0.7 y 1.3 |
| Concentración máxima por sector | ≤ 40% |

## Herramientas utilizadas
- **Python (Google Colab)** → exploración, limpieza, análisis exploratorio y machine learning
- **SQL (DBeaver, SQLite)** → almacenamiento estructurado y consultas reproducibles
- **Excel** → modelado de la cartera, asignación de pesos y cálculo de KPIs globales
- **Power BI** → dashboard interactivo de la cartera
- **Git / GitHub** → control de versiones y documentación del progreso
- **Storytelling** → presentación final a inversores

## Técnicas de análisis aplicadas
- **Distribuciones estadísticas** → análisis de la dispersión de los KPIs entre empresas
- **Correlaciones** → medición de la diversificación real entre sectores y activos
- **PCA (Análisis de Componentes Principales)** → reducción de dimensionalidad
- **K-Means** → segmentación de empresas por perfil financiero
- **Regresión lineal simple** → validación de la relación entre KPIs y rentabilidad

## Estructura del repositorio
- `datos/brutos/` → datasets originales descargados de Kaggle
- `datos/procesados/` → datos limpios y transformados
- `notebooks/` → análisis en Python (Jupyter / Colab)
- `sql/` → scripts y consultas SQL
- `visualizaciones/` → gráficos exportados
- `dashboard/` → archivos Power BI
- `presentacion/` → documentación e informe final

## Fases del proyecto
1. Definición de objetivos, KPIs y storytelling
2. Exploración y limpieza de datos en Python
3. Modelado y consultas en SQL
4. Análisis exploratorio (EDA)
5. Aplicación de PCA, K-Means y regresión lineal
6. Construcción de la cartera en Excel
7. Dashboard en Power BI
8. Informe final y defensa del proyecto

## Estado actual
Proyecto en desarrollo. Entrega prevista: última semana de junio de 2026.

## Progreso del proyecto

### ✅ Fase 1 - Definición y planteamiento (completada)
- Definición de objetivos, KPIs y sectores
- Documento del Bloque 1 entregado
- Estructura del repositorio creada

### ✅ Fase 2 - Limpieza de datos (completada)
Proceso de filtrado y limpieza realizado en Python:

| Paso | Empresas |
|------|----------|
| Dataset original | 3.808 |
| Tras filtrar por 4 sectores objetivo | 1.621 |
| Tras eliminar nulos en KPIs | 1.535 |
| Tras eliminar outliers | 1.124 |

Universo final de análisis: **1.124 empresas** distribuidas entre Technology, Healthcare, Basic Materials y Energy.

### ✅ Fase 3 - Modelado SQL (completada)
Base de datos cartera_sp500 creada en PostgreSQL (DBeaver).
Tabla empresas_sp500 cargada con 1.124 empresas.
Filtrado por KPIs sector a sector:

Sector            | Universo | Candidatas
------------------|----------|----------
Technology        |   460    |    76
Healthcare        |   292    |    53
Energy            |   178    |    72
Basic Materials   |   194    |    41
Total             |  1.124   |   242

Tabla empresas_candidatas creada con 242 empresas que superan
los umbrales de calidad financiera definidos.
Script: sql/02_filtrado_kpis.sql
### ⏳ Fase 4 - Análisis exploratorio (EDA)
### ⏳ Fase 5 - Machine Learning (PCA + K-Means + Regresión)
### ⏳ Fase 6 - Construcción de cartera en Excel
### ⏳ Fase 7 - Dashboard Power BI
### ⏳ Fase 8 - Informe final y defensa

## Autor
Jesús Cuenca - Bootcamp Data Analytics
