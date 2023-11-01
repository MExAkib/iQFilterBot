# @MExAkib

if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/MExAkib/iQFilterBot.git /iQFilterBot 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /iQFilterBot 
fi
cd /iQFilterBot 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
