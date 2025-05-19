<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Music World - Home</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #282c34;
            padding: 20px;
            color: white;
            text-align: center;
        }

        .song-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
            gap: 20px;
            padding: 30px;
        }

        .song-card {
            background: white;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: center;
        }

        .song-card img {
            width: 100%;
            border-radius: 8px;
        }

        .song-card h3 {
            margin: 10px 0 5px;
            font-size: 1.1em;
        }

        .song-card audio {
            width: 100%;
            margin-top: 10px;
        }

        footer {
            text-align: center;
            padding: 20px;
            background-color: #222;
            color: white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h1>🎵 Music World</h1>
            <p>Welcome to the world of songs</p>
        </header>

        <div class="song-container">
            <div class="song-card">
                <img src="images/song1.jpg" alt="Song 1" />
                <h3>Song Title 1</h3>
                <audio controls>
                    <source src="songs/song1.mp3" type="audio/mpeg" />
                    Your browser does not support the audio element.
                </audio>
            </div>

            <div class="song-card">
                <img src="images/song2.jpg" alt="Song 2" />
                <h3>Song Title 2</h3>
                <audio controls>
                    <source src="songs/song2.mp3" type="audio/mpeg" />
                    Your browser does not support the audio element.
                </audio>
            </div>

            <div class="song-card">
                <img src="images/song3.jpg" alt="Song 3" />
                <h3>Song Title 3</h3>
                <audio controls>
                    <source src="songs/song3.mp3" type="audio/mpeg" />
                    Your browser does not support the audio element.
                </audio>
            </div>
        </div>

        <footer>
            &copy; 2025 Music World. All rights reserved.
        </footer>
    </form>
</body>
</html>
