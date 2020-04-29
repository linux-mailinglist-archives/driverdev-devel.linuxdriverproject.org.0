Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DE41BE6D3
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Apr 2020 21:00:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3E2CE88461;
	Wed, 29 Apr 2020 19:00:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zEAmT5097rAs; Wed, 29 Apr 2020 19:00:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A259688395;
	Wed, 29 Apr 2020 19:00:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7B4E21BF59F
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 19:00:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4A506231E9
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 19:00:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pvg0sfkyELLK for <devel@linuxdriverproject.org>;
 Wed, 29 Apr 2020 19:00:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
 by silver.osuosl.org (Postfix) with ESMTPS id 9323A204D2
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 19:00:41 +0000 (UTC)
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MEFfB-1jLvSk42HV-00AE83; Wed, 29 Apr 2020 21:00:24 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: David Lin <dtwlin@gmail.com>, Johan Hovold <johan@kernel.org>,
 Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Axel Haslam <ahaslam@baylibre.com>
Subject: [PATCH] greybus: uart: fix uninitialized flow control variable
Date: Wed, 29 Apr 2020 21:00:09 +0200
Message-Id: <20200429190022.12671-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:Mlh1BapjxIyzREDPZHO4Hsp4KHejN/8Ty1YIQCptm26zBMM5I3P
 wQTQKDgLNwYUCbAgRy4fe93olczzoNzwMHGD9JAaN5/yWKmh5SFbVNZfUZOS6Fx/8cAo3oi
 /azCZ5byWZRmS0620KRUL+RlGTToj0G0ZRT15dQ49siFwfOA5k+TUt8LYAOsL8Lm4800AQq
 9osmsZVASt7O7yqPQpkVQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:KGOa0CrtfLc=:CWMlEOVkWkLMggCRWjllmT
 wbM/3K/fRtpJ28a/tXXlV0dZxMoQegCX0a8EWZEqsT0gxOEsGbFmpi9Y/TjFxAG9ZD/es3WJi
 pZfVawR6Hz+z/JTUEVssBCpVXH7h2h5/FrOO9AGuS12Oqrv/wDzWgyKpIe/GS7xg4XLoweITD
 5w8nyW9cYFuGh8GoEq82RVqO7J/qbfcEiPcQ6CDpkA5NHHulX0N8az7QsQAMqW+kNWqQLU+ej
 0uQNHrxNbJM68U8KbgNfM4hW07bHN+SxCAecphVoOPiDhWQg3A/KuomKLXhq0ExjD847a8FpT
 KgPmN+zKVKhJCj9r1sNLRu9JumHKu5/KM4PcRgcX/9UV8AHWhPYISeM/oRNJjzm2TTKRTcSc5
 fZ8mtFc74F4yZEyxtEufzQc9AJIMGXZKKWwhHhXrUm/03bQFttRgy6foKMcvYN6BMAHPnh1+R
 fKhN48XsvrsVo4yVlOaZHai2tB3bzW2Jq2WSgfgLT5KLEv0aMYqxwtbqEXUosJeKZEwbJXLjI
 tSJRoAdQvnLjDUo716/qR3Dhrua60vBzngu0mWddP3PAhcQInGA9vdADtta4Qcc1b2ssrZ01l
 BUYU/9xybCkqzA3QeU8kQsB9hYBu03jxzE4m+pl2afsT5hizpm8cJuEB1KEDeblgZkYf7TrXy
 cyqU9pc3nExqtODcgmd2GAXOapIZdVyFQv3LPKdY7MYZD9ATIkzvF9vEoor0TDS7KKbe1fp0P
 5ckuxbImGobBOxpJRsaXahO5enR6X91hWfVLKJApkJ8ExESmf290qzGOeXWwD5aGo1evDQJVv
 vDHXeBjvIgG0KVouw0ZAXgjlMx38ZpQvdqkrLPgleiYzpvBxA4=
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Viresh Kumar <viresh.kumar@linaro.org>, Mark Greer <mgreer@animalcreek.com>,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 Greg Kroah-Hartman <gregkh@google.com>,
 Johan Hovold <johan@hovoldconsulting.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

gcc-10 points out an uninitialized variable use:

drivers/staging/greybus/uart.c: In function 'gb_tty_set_termios':
drivers/staging/greybus/uart.c:540:24: error: 'newline.flow_control' is used uninitialized in this function [-Werror=uninitialized]
  540 |   newline.flow_control |= GB_SERIAL_AUTO_RTSCTS_EN;

Instead of using |= and &= on the uninitialized variable, use a
direct assignment.

Fixes: e55c25206d5c ("greybus: uart: Handle CRTSCTS flag in termios")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
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
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
