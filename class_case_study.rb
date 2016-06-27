class Customer
@@no_of_customers=0
def initialize(id, name, addr)
@cust_id=id
@cust_name=name
@cust_addr=addr
end
def display_details
puts "Customer ID #{@cust_id}"
puts "Customer name #{@cust_name}"
puts "Customer address #{@cust_addr}"
end
def total_no_of_customers
@@no_of_customers += 1
puts "Total number of customers: #{@@no_of_customers}"
end
end

cust_1 = Customer.new("1", "Jan", "Görli")
cust_2 = Customer.new("2", "Petr", "Kotti")
cust_3 = Customer.new("3", "Pavel", "Schlesi")

cust_1.display_details
cust_1.total_no_of_customers
cust_2.total_no_of_customers
cust_2.display_details
cust_3.total_no_of_customers
cust_3.display_details

