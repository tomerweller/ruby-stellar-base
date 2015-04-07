# Automatically generated on 2015-04-07T10:52:07-07:00
# DO NOT EDIT or your changes may be overwritten
        
require 'xdr'

# === xdr source ============================================================
#
#   union InflationResult switch (InflationResultCode code)
#   {
#   case INFLATION_SUCCESS:
#       inflationPayout payouts<>;
#   default:
#       void;
#   };
#
# ===========================================================================
module Stellar
  class InflationResult < XDR::Union
    switch_on InflationResultCode, :code

    switch :inflation_success, :payouts
    switch :default

    attribute :payouts, XDR::VarArray[InflationPayout]
  end
end
