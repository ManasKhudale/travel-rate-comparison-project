import matplotlib.pyplot as plt
import mysql.connector as a
con = a.connect(host="localhost", user="root", passwd="root", database="travel_rates")

def display_prices():
    n = input("Enter the desired destination: ")
    query = "SELECT * FROM travel_rate WHERE place_name=%s"
    data = (n,)
    c = con.cursor()
    c.execute(query, data)
    result = c.fetchall()

    con.commit()

    if result:
        print("Prices for", n)
        for row in result:
            print(f"Car Price: ₹{row[2]}, Bus Price: ₹{row[3]}, Flight Price: ₹{row[4]}, Train Price: ₹{row[5]}")

        modes = ['Car', 'Bus', 'Flight', 'Train']
        prices = [row[2], row[3], row[4], row[5]]

        min_price_index = prices.index(min(prices))
        least_mode = modes[min_price_index]
        least_price = min(prices)
        print(f"The least price for {n} is ₹{least_price} by {least_mode}")


        plt.bar(modes, prices)
        plt.title(f"Travel Prices for {n}")
        plt.xlabel("Mode of Travel")
        plt.ylabel("Price")
        plt.show()
    else:
        print(f"No prices found for {n}")


    c.close()

def main():
    display_prices()

main()