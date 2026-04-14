# Análisis y Construcción de Cartera de Inversión S&P 500

## Descripción del proyecto
Proyecto final del bootcamp de análisis de datos. El objetivo es analizar 
el comportamiento histórico del mercado de renta variable americana para 
construir y justificar una cartera de inversión de 50.000 dólares dirigida 
a un perfil inversor moderado.

## Sectores analizados
- Tecnología (Technology)
- Energía (Energy)
- Salud (Healthcare)
- Materiales (Materials)

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
- **Python** → exploración y análisis de datos
- **SQL** → consultas y filtrado de activos
- **R** → análisis estadístico
- **Power BI** → dashboard de la cartera
- **Excel** → modelado y asignación de pesos
- **Git / GitHub** → control de versiones
- **Storytelling** → presentación final a inversores

## Estructura del repositorio
- `datos/brutos/` → datasets originales
- `datos/procesados/` → datos limpios y transformados
- `notebooks/` → análisis en Python y R
- `sql/` → consultas SQL
- `visualizaciones/` → gráficos exportados
- `dashboard/` → archivos Power BI
- `presentacion/` → presentación final
