# Dedicated to the citizens of these United States

#Requires -Version 5.1

# Setup speech synthesizer
Add-Type -AssemblyName System.Speech
$SpeechSynthesizer = New-Object -TypeName System.Speech.synthesis.SpeechSynthesizer

# Select voice, can be changed to Zira too
$SpeechSynthesizer.SelectVoice("Microsoft David Desktop")

# Get Declaration of Independence text
$Declaration = (invoke-webrequest https://gist.githubusercontent.com/billkindle/8a6283f9e109e065921cb8bdd9a5be11/raw/a6c139339e676da1ebec87dd8216c442d32eed6d/Declaration_of_Independence.txt).Content

# Read the Declaration of Independance
$SpeechSynthesizer.Speak($Declaration)
