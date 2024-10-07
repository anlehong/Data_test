echo "Select option:"
echo "1. Import the file text.txt inside LinuxProject folder"
echo "2. Display the contents of text.txt on the terminal."
echo "3. Append the following text to text.txt: Let's learn Linux."
echo "4. Count the number of lines in text.txt."
echo "5. Search for the word "Love" in text.txt and display the lines containing it."
echo "6. Replace "Make" with "Do"."
echo "7. Display only the third word from each line in text.txt"
echo "8. Count the number of words in each line."
read -p "Select (1-8): " option

case $option in
    1)
        if [ ! -d LinuxProject ]; then
            mkdir LinuxProject
        fi
        curl -o LinuxProject/text.txt "https://file.notion.so/f/f/c67a89a4-f41d-4526-a34a-07c24c1e7fb7/5c6325b8-4cc2-445f-b5f0-779e1e849e1a/data_linux.txt?table=block&id=3e4b9150-a56d-48be-8cfe-e82eab664bdf&spaceId=c67a89a4-f41d-4526-a34a-07c24c1e7fb7&expirationTimestamp=1728410400000&signature=dfGKCYbfaV2TD6TTjqjiCmeHy-YuftSczU-t1l7yetM&downloadName=text.txt"
        ;;
    2)
        cat LinuxProject/text.txt
        ;;
    3)
        echo "Let's learn Linux." >> LinuxProject/text.txt
        ;;
    4)
        wc -l LinuxProject/text.txt
        ;;
    5)
        grep "Love" LinuxProject/text.txt
        ;;
    6)
        sed -i 's/Make/Do/g' LinuxProject/text.txt
        ;;
    7)
        awk '{print $3}' LinuxProject/text.txt
        ;;
    8)
        awk '{print NF}' LinuxProject/text.txt
        ;;
    *)
        echo "Please choose 1-8!"
        ;;
esac
