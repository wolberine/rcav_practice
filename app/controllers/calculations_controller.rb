class CalculationsController < ApplicationController
  def instructions
  end

  def sqrt
    @number = params["number"].to_i
    @sqrt = Math.sqrt(@number)
  end

  def pmt
    @basis = params["basis"].to_f
    @periods = params["periods"].to_f
    @principal = params["principal"].to_f

    rate = @basis/10000
    nper = @periods

    @pmt = -(rate * @principal)/(1 - (1 + rate)**-nper)

  end

  def square
    @number = params["number"].to_i
    @square = @number**2
  end
end
