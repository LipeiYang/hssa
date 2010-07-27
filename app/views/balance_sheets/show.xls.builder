excel_document(xml) do
  xml.Worksheet 'ss:Name' => 'BALANCE SHEET' do
    xml.Table do

      xml.Row do
        xml.Cell { xml.Data 'ASSETS', 'ss:Type' => 'String' }
      end
      
      xml.Row do
        xml.Cell { xml.Data 'CURRENT ASSETS', 'ss:Type' => 'String' }
      end

      xml.Row do
        xml.Cell { xml.Data 'Cash and cash equivalents', 'ss:Type' => 'String' }
        xml.Cell { xml.Data @bal_sht.cash_equivalents, 'ss:Type' => 'Number' }
      end
      
      xml.Row do
        xml.Cell { xml.Data 'Accounts receivables', 'ss:Type' => 'String' }
        xml.Cell { xml.Data @bal_sht.accounts_receivables, 'ss:Type' => 'Number' }
      end
      
      xml.Row do
        xml.Cell { xml.Data 'Inventory', 'ss:Type' => 'String' }
        xml.Cell { xml.Data @bal_sht.inventory, 'ss:Type' => 'Number' }
      end
      
      xml.Row do
        xml.Cell { xml.Data 'Total current assets', 'ss:Type' => 'String' }
        xml.Cell { xml.Data @bal_sht.total_current_assets, 'ss:Type' => 'Number' }
      end
      
      xml.Row do
        xml.Cell { xml.Data 'Gross property, plant and equipment - net', 'ss:Type' => 'String' }
        xml.Cell { xml.Data @bal_sht.gross_property_plant_equipment_net, 'ss:Type' => 'Number' }
      end
    
      xml.Row do
        xml.Cell { xml.Data 'TOTAL ASSETS', 'ss:Type' => 'String' }
        xml.Cell { xml.Data @bal_sht.total_assets, 'ss:Type' => 'Number' }
      end
    
      xml.Row do
        xml.Cell { xml.Data 'LIABILITIES AND STOCKHOLDERS\' EQUITY', 'ss:Type' => 'String' }
      end
    
      xml.Row do
        xml.Cell { xml.Data 'Accounts payables', 'ss:Type' => 'String' }
        xml.Cell { xml.Data @bal_sht.accounts_payables, 'ss:Type' => 'Number' }
      end
    
      xml.Row do
        xml.Cell { xml.Data 'Short-term Debt', 'ss:Type' => 'String' }
        xml.Cell { xml.Data @bal_sht.short_term_debt, 'ss:Type' => 'Number' }
      end
    
      xml.Row do
        xml.Cell { xml.Data 'Total current liabilities', 'ss:Type' => 'String' }
        xml.Cell { xml.Data @bal_sht.total_current_liabilities, 'ss:Type' => 'Number' }
      end
    
      xml.Row do
        xml.Cell { xml.Data 'Long term debt', 'ss:Type' => 'String' }
        xml.Cell { xml.Data @bal_sht.long_term_debt, 'ss:Type' => 'Number' }
      end
    
      xml.Row do
        xml.Cell { xml.Data 'Interest payables', 'ss:Type' => 'String' }
        xml.Cell { xml.Data @bal_sht.interest_payables, 'ss:Type' => 'Number' }
      end
    
      xml.Row do
        xml.Cell { xml.Data 'Total liabilities', 'ss:Type' => 'String' }
        xml.Cell { xml.Data @bal_sht.total_liabilities, 'ss:Type' => 'Number' }
      end
    
      xml.Row do
        xml.Cell { xml.Data 'SHAREHOLDERS\' EQUITY:', 'ss:Type' => 'String' }
      end
    
      xml.Row do
        xml.Cell { xml.Data 'Share capital', 'ss:Type' => 'String' }
        xml.Cell { xml.Data @bal_sht.share_capital, 'ss:Type' => 'Number' }
      end
    
      xml.Row do
        xml.Cell { xml.Data 'Retained Earnings: Prior', 'ss:Type' => 'String' }
        xml.Cell { xml.Data @bal_sht.retained_earnings_prior, 'ss:Type' => 'Number' }
      end
    
      xml.Row do
        xml.Cell { xml.Data 'Dividends paid', 'ss:Type' => 'String' }
        xml.Cell { xml.Data @bal_sht.dividends_paid, 'ss:Type' => 'Number' }
      end
    
      xml.Row do
        xml.Cell { xml.Data 'Current year retained earnings', 'ss:Type' => 'String' }
        xml.Cell { xml.Data @bal_sht.current_year_retained_earnings, 'ss:Type' => 'Number' }
      end
    
      xml.Row do
        xml.Cell { xml.Data 'Total stockholders\' equity', 'ss:Type' => 'String' }
        xml.Cell { xml.Data @bal_sht.total_stockholders_equity, 'ss:Type' => 'Number' }
      end
    
      xml.Row do
        xml.Cell { xml.Data 'TOTAL LIABILITIES AND STOCKHOLDERS\' EQUITY', 'ss:Type' => 'String' }
        xml.Cell { xml.Data @bal_sht.total_liabilities_and_stockholders_equity, 'ss:Type' => 'Number' }
      end      
    end
  end
end