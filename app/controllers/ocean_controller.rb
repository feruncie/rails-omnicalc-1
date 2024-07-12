class OceanController < ApplicationController 

 #.. add one for homepage that equals square new page 

  def flower
    render({ :template => "math_templates/square_new" })
  end 


  def bee #DONE
    @the_num = params.fetch("users_number").to_f

    @the_result = @the_num ** 2 

    render({ :template => "math_templates/square_results" })
  end 

  def tree #DONE
    render({ :template => "math_templates/new_square_root" })
  end 

  def star #DONE
    @the_num = params.fetch("users_number").to_f 

  @the_result = @the_num ** 0.5 

    render({ :template => "math_templates/square_root_results" })
  end 

  def orange #DONE
    render({ :template => "math_templates/payment_new" })
  end 

  def apple #DONE

    apr = params.fetch("apr").to_f / 100
    years = params.fetch("years").to_i
    principal = params.fetch("principal").to_f

   monthly_rate = apr / 12 
   number_of_payments = years * 12
   payment_result = (monthly_rate * principal) / (1 - (1 + monthly_rate) ** -number_of_payments)

   rounded_apr = (apr * 100).round(4)

      def format_currency(amount)
       "$%.2f" % amount
      end

   @the_apr = "#{rounded_apr}%"
   @years = years
   @principal = principal.to_fs(:currency)
    @payment = payment_result.to_fs(:currency)
    render({ :template => "math_templates/payment_results" })
  end 

  def hug #DONE
    render({ :template => "math_templates/random_new" })
  end 

  def love #DONE
    @minimum = params.fetch("number_one").to_f 

  @maximum = params.fetch("number_two").to_f 

  @random_number = rand(@minimum..@maximum).to_f
    render({ :template => "math_templates/random_results" })
  end 
end 
