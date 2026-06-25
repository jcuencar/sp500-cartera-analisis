CREATE TABLE empresas_sp500 (
    ticker VARCHAR(10) PRIMARY KEY,
    sector VARCHAR(50),
    roe NUMERIC,
    net_profit_margin NUMERIC,
    debt_equity NUMERIC,
    pe_ratio NUMERIC,
    revenue_growth NUMERIC
);

DROP TABLE empresas_sp500;

CREATE TABLE empresas_sp500 (
    ticker VARCHAR(10) PRIMARY KEY,
    sector VARCHAR(50),
    roe NUMERIC,
    net_profit_margin NUMERIC,
    debt_to_equity NUMERIC,
    pe_ratio NUMERIC,
    revenue_growth NUMERIC,
    price_var_2015 NUMERIC,
    class VARCHAR(20)
);

DROP TABLE empresas_sp500;

CREATE TABLE empresas_sp500 (
    ticker VARCHAR(10) PRIMARY KEY,
    sector VARCHAR(50),
    roe NUMERIC,
    net_profit_margin NUMERIC,
    debt_to_equity NUMERIC,
    pe_ratio NUMERIC,
    revenue_growth NUMERIC,
    price_var_2015 NUMERIC,
    class VARCHAR(20)
);

SELECT COUNT(*) FROM empresas_sp500;

SELECT ticker, sector, roe, net_profit_margin, debt_to_equity, pe_ratio, revenue_growth
FROM empresas_sp500
LIMIT 10;

SELECT sector, COUNT(*) AS num_empresas
FROM empresas_sp500
GROUP BY sector
ORDER BY num_empresas DESC;

SELECT ticker, sector, roe, net_profit_margin, debt_to_equity, pe_ratio, revenue_growth
FROM empresas_sp500
WHERE sector = 'Technology'
  AND roe > 0.10
  AND net_profit_margin > 0.08
  AND debt_to_equity < 1.5
  AND pe_ratio BETWEEN 10 AND 50
  AND revenue_growth > 0.05
ORDER BY roe DESC;

SELECT ticker, sector, roe, net_profit_margin, debt_to_equity, pe_ratio, revenue_growth
FROM empresas_sp500
WHERE sector = 'Healthcare'
  AND roe > 0.08
  AND net_profit_margin > 0.05
  AND debt_to_equity < 2.0
  AND pe_ratio BETWEEN 10 AND 60
  AND revenue_growth > 0.03
ORDER BY roe DESC;

SELECT ticker, sector, roe, net_profit_margin, debt_to_equity, pe_ratio, revenue_growth
FROM empresas_sp500
WHERE sector = 'Energy'
  AND roe > 0.05
  AND net_profit_margin > 0.03
  AND debt_to_equity < 2.5
  AND pe_ratio BETWEEN 5 AND 60
  AND revenue_growth > 0.00
ORDER BY roe DESC;

SELECT ticker, sector, roe, net_profit_margin, debt_to_equity, pe_ratio, revenue_growth
FROM empresas_sp500
WHERE sector = 'Basic Materials'
  AND roe > 0.08
  AND net_profit_margin > 0.05
  AND debt_to_equity < 2.0
  AND pe_ratio BETWEEN 5 AND 50
  AND revenue_growth > 0.02
ORDER BY roe DESC;

CREATE TABLE empresas_candidatas AS
SELECT ticker, sector, roe, net_profit_margin, debt_to_equity, pe_ratio, revenue_growth
FROM empresas_sp500
WHERE (sector = 'Technology'
  AND roe > 0.10
  AND net_profit_margin > 0.08
  AND debt_to_equity < 1.5
  AND pe_ratio BETWEEN 10 AND 50
  AND revenue_growth > 0.05)
OR (sector = 'Healthcare'
  AND roe > 0.08
  AND net_profit_margin > 0.05
  AND debt_to_equity < 2.0
  AND pe_ratio BETWEEN 10 AND 60
  AND revenue_growth > 0.03)
OR (sector = 'Energy'
  AND roe > 0.05
  AND net_profit_margin > 0.03
  AND debt_to_equity < 2.5
  AND pe_ratio BETWEEN 5 AND 60
  AND revenue_growth > 0.00)
OR (sector = 'Basic Materials'
  AND roe > 0.08
  AND net_profit_margin > 0.05
  AND debt_to_equity < 2.0
  AND pe_ratio BETWEEN 5 AND 50
  AND revenue_growth > 0.02);

SELECT COUNT(*) FROM empresas_candidatas;

SELECT sector, 
       COUNT(*) AS empresas_candidatas,
       ROUND(AVG(roe)::numeric, 4) AS roe_medio,
       ROUND(AVG(net_profit_margin)::numeric, 4) AS margen_medio,
       ROUND(AVG(debt_to_equity)::numeric, 4) AS deuda_equity_medio,
       ROUND(AVG(pe_ratio)::numeric, 4) AS per_medio,
       ROUND(AVG(revenue_growth)::numeric, 4) AS crecimiento_medio
FROM empresas_candidatas
GROUP BY sector
ORDER BY empresas_candidatas DESC;

