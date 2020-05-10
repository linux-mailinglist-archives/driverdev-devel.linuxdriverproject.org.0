Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E16B1CCA23
	for <lists+driverdev-devel@lfdr.de>; Sun, 10 May 2020 12:15:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 08AE4883AD;
	Sun, 10 May 2020 10:15:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1aj0mU4L13Ss; Sun, 10 May 2020 10:15:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 524F988391;
	Sun, 10 May 2020 10:15:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 834E41BF3EC
 for <devel@linuxdriverproject.org>; Sun, 10 May 2020 10:15:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7CFAF2039E
 for <devel@linuxdriverproject.org>; Sun, 10 May 2020 10:15:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LheG-EZGqpMJ for <devel@linuxdriverproject.org>;
 Sun, 10 May 2020 10:15:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by silver.osuosl.org (Postfix) with ESMTPS id DCE382035D
 for <devel@driverdev.osuosl.org>; Sun, 10 May 2020 10:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1589105704;
 bh=c94OQCbIxiDreJXOOPOYlV8SFiSiAocVWa/041VZVpQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=JVw1N+XQrYvsd6AeYc+5u5cw1mxRmhQ8gzhFW8lSrmJ45l6bEEge34PSxfJdOfcQG
 TvhMR+Kbe8lqoRu6r170Rf4e+sN8n2weZKMnuOtcjoZ7j0FuXqA9ocnhgQ+ZIYShPQ
 wWPzQi/UX0BIq2JAmCAjPxmCm6yV88aXLvYRWN70=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx104 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1Mgeo8-1iv4qq0miq-00hAdO; Sun, 10 May 2020 12:15:04 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: David Lin <dtwlin@gmail.com>, Johan Hovold <johan@kernel.org>,
 Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: greybus: Fix uninitialized scalar variable
Date: Sun, 10 May 2020 12:14:26 +0200
Message-Id: <20200510101426.23631-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:ps47P7hYVAoS31u+W1goqC5mfPrNR/UEtJYg44fQfgXMP7xUMLR
 VyH32hTPzXF8DfglQWutmqHJQygU63dOrB5mN6HHOswWY/Q4ScyS4jj3LKp9UVJl3nhuWFe
 yf3FlT+KTGCBpvXsA6kf+esHXmEtMbut/1NvexTWaRH2WFcbZ9sSWHo4jpDWfWx2JgMVhOJ
 Ec8V+AP/T1B3/1EhuqEWw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:g/kiqP+Wlmc=:lF7MhoWLDll1mzH2Ei7uf3
 MhpX/geJXvT92bJd6tFNz6tnzeYK6kFCy2VHvY4v+v9fCBLRVNuIJ1Oh9xvjeH8Z8hXYdEUMy
 8+277b4AxH+9j9gCDMrZnEiXZBcfpwcPukj+5HnS4Wqarvr2mt7lO/sMfpNls04SIsEJUUgGS
 X2RJA3Azg9W3bZxF7bQ6/Uuoaxs5DihLoLkGSius8k2SZJyPk/EdTTpx2/+sHz9jRfUPNP43K
 HKOOjy3F5E5nB9q5KZB38ilYZLKRoGWmxaJx28cMsmdzRN5DGWSjHdYDElRivH7Us9hpAHaqN
 S7760GF5W84KwCLTrJe1uXDHnwDzjNAyferRRjP5qTxN+5Sm9lC1JuzxW8fD1mV4fSg/34wRJ
 4cu92mj7NuJGUj233GMs8cOWqrcdQZGxg3abLmmh4q/S3zNlNyIm9wgSFRHgsR7hr7zBh/gOF
 OGlROH5PyOBLup0djfevEPoM+qaVq/qdRk/u5v0Tqw4QvLJrw6wYnHFmvOzsQSHkiEJGBlpXU
 /cL8tyZXKin3EC88MppinNmMF4XHxaqS2qvQnjpO/Wxus29uG3wAHr4BXJgmhLchkuwwjT5aV
 MwU25wF1qFVIGRtQI6rdUOfIAtm4wxMJ0dHnyAlUZ9HzePkq/yk4RLODB8LuiSX7cUA+wmMs0
 iDc2vF3oJetpFIRaURZXIxIDsVP3+mi1eSnDD1nYrmas1vNrOE4q7XLwALvUkS8DvB1m9xIbN
 /S1DFpMGDKVoio2TtqYbI7hh++izSR7U0tQKE2oSzLZGlJnLlTtWFPwNncpnpVs7DEYpUbV5b
 EgszLtp2dqViYnc0w67UOh8ewyE63ZZc4DJp3FtCHnlepTwEV20qxM+X2xu60+gdQyJSs7R93
 BQtzFHibDlUdSLqUn7bhTOI7F39qvAU4hENfCTKMT3/0w40Q+WkSoNb5/GaRNeOWYFrSxOvKJ
 9M2Dl30rYcenAG5duzFEkdGY2U8Dbny2D4jM6SCT0PUqrzX3R3WQm3zIaoRbw7uFTbX2JSqgW
 TArH41REMiTHxkQHud0XsS0wDC1DKdDgmFPhOeVZ6uhJSgWtpzHNTCiz7haOcxPNAaKojzFXc
 IDsd31gqGn7hcdtKhr01i4u5xaQ18Q5VqF3o2aWp8+ISIP6UNBA3ZJWQ/DwmZKEvuIQOqfK5C
 /X3qmFJvSjWoUtRzRAMh13mY4CXeQrzU5FAyaDg3s+OggVESQprqeytijhN1v4nETkZh2uH1X
 E+1E88RE90iYt88GM
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 Oscar Carter <oscar.carter@gmx.com>, linux-kernel@vger.kernel.org,
 Axel Haslam <ahaslam@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In the "gb_tty_set_termios" function the "newline" variable is declared
but not initialized. So the "flow_control" member is not initialized and
the OR / AND operations with itself results in an undefined value in
this member.

The purpose of the code is to set the flow control type, so remove the
OR / AND self operator and set the value directly.

Addresses-Coverity-ID: 1374016 ("Uninitialized scalar variable")
Fixes: e55c25206d5c9 ("greybus: uart: Handle CRTSCTS flag in termios")
Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/greybus/uart.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
index 55c51143bb09..4ffb334cd5cd 100644
--- a/drivers/staging/greybus/uart.c
+++ b/drivers/staging/greybus/uart.c
@@ -537,9 +537,9 @@ static void gb_tty_set_termios(struct tty_struct *tty,
 	}

 	if (C_CRTSCTS(tty) && C_BAUD(tty) != B0)
-		newline.flow_control |= GB_SERIAL_AUTO_RTSCTS_EN;
+		newline.flow_control = GB_SERIAL_AUTO_RTSCTS_EN;
 	else
-		newline.flow_control &= ~GB_SERIAL_AUTO_RTSCTS_EN;
+		newline.flow_control = 0;

 	if (memcmp(&gb_tty->line_coding, &newline, sizeof(newline))) {
 		memcpy(&gb_tty->line_coding, &newline, sizeof(newline));
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
