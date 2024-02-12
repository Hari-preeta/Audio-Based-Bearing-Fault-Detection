from twilio.rest import Client
import os


account_sid = "ACd394f8d51a55e6388fa881e88c6c45b3"
auth_token = "dcc8973bf82d838cb4ef68941b01de2e"

client = Client(account_sid, auth_token)

with open("transs.txt") as file:
    values = file.readlines()

new_values = []

for value in values:
    new_values.append(value.strip("\n"))

final_values = []

for x in new_values:
    final_values.append(x.split())

peak = []
m_values = []
fft_values = []

for i in range(len(final_values)):
    for j in range(1):
        peak.append(int(final_values[i][0]))
        m_values.append(int(final_values[i][1]))
        fft_values.append(int(final_values[i][2]))


def message_send(message_passed):
    client.messages.create(
        from_=+12016141261,
        body=message_passed,
        to=+916380448569
    )


for k in range(len(peak)):
    if peak[k] > 11000 and m_values[k] > 7 and fft_values[k] > 75:
        message_send(message_passed='The motor is in faulty condition...Please check out')
        #print("Faulty")
    else:
        #print("Healthy")
        message_send(message_passed='The motor is Healthy...')


