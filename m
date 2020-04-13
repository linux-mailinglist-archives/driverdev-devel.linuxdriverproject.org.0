Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC791A6771
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 16:02:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 44CBB85B5D;
	Mon, 13 Apr 2020 14:02:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hy0ds0G9uqtP; Mon, 13 Apr 2020 14:02:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 205328575A;
	Mon, 13 Apr 2020 14:02:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C12E1BF3ED
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 14:02:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 589AE8488E
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 14:02:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wUhAZNldi4ED for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 14:02:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ED236847FE
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 14:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586786553;
 bh=aWabkX+VjxCXEjMZgVB4rhzfh2PYPDYf+m/yRAvUdDY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=UXmiIOPA01lkaO7c8pVPiFVlYAdtE2z6cx/xBQtkdNWd8r6HszcmTzc1kjzbLO6vd
 UaedWVg1B0qb21PmcMXg69xHmqQY9a7c8LsfMdLAv5rRtfnLydMSSWsMWaQ6wEIIpY
 480jAfm8AdHGDiFwG/26t+3bXL+RxPC0Yw/VEJHE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx104 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1MORAU-1jcltO3vu2-00PuwR; Mon, 13 Apr 2020 16:02:33 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [RFC] staging: vt6656: Add formula to the vnt_rf_addpower function
Date: Mon, 13 Apr 2020 16:02:09 +0200
Message-Id: <20200413140209.4520-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:2Sy7ENs56EYNCOfQsabHsx7yt45HYz2D+WcFO1uzxDE12fmN9Ho
 kB/1t2vAIFxKUzTOW0Vdjnq8jrSToLtEPqKIYm1ChSBptJqxklKw8WFOunBwTQcWkNCB/FF
 uoLUV3/bqAX6XH5InrZhum8I+RAWOZn90yEPNgR68+dcftV3wwgmhwt1ijQJsvXE6YC1kjV
 5N+Ut59T+fexUk6ISm0GQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:G5K3oNxTWQI=:tiYGVznO3UgoOT1SouVKw/
 0JF6wxj/IKctsFjZsO7Eh3qJst9qhvElq4WWcozw7x9a8KBxEb0XAMQ58sPWXnhxpfis/aLc6
 3UGGeJHFrN7n/SmReiq9lWX6r7gCc9nOs/+auElvoRkoSUt80bfThbEaM/hHVzDUPTKusDicp
 HqDUInDAg2peNwwC+EITNeITUhe7DcYJEKIZe9NbbyiX1rrKRzxKkVKdXwAAwHv6wg6zC7oSX
 uNow+QKfIICJOjH/sMsY0IcnTfNkWLmqvjdW7R2drib5flBY+6lcY6bniuFR7XpxW6igg9g4n
 ypXZTELY0Jjrq0gxLZGCZhgy46QvbTvQmDgxt2OgSIRky4ITPYcxvTjhOCvPstxTdbZRNTVza
 phHW/hOMKXsfc1epqngYlwHLSU7uX5sxufhsozbQzwNqknp2u73OA6AXRh/bqQTpGoZ9TnnV4
 g5aMmqkgG/Op7d0xidn3XfBwmxzl83ZtWNo+7bpfIG3qyW5v4D6pn+ggugCF8ats6bE4rV+F2
 rQMx7RqjbQ1sgbmdd9e/wli6BrxdaqshIsVuR8Gm+vrzcrzolipT5T2+9sxjZXCUjB/DxIvAV
 Kvhi8IyE1skEkbQAnuVXbsslvucDSDXk4a52SBUfVHWG5sMp0awn+WEVGRZDWPns3ha/DEk5c
 ZMwyZhp12aW+bAC0dPDQsk6UlBBCrhFwdSjSFPrKFIBGy3SQic5DUlWuHPYyeXFNlj7BWUpxz
 MH/GSAZdOn9Hi4QDIEo7y6Gk2RpF8GLJ1i1jmyZWNsiF3LISpBA9pvKwWsQt5r/WuCfbM/HU8
 YwxscsQMwgQKgSbkdoD1EV7Hvt/a5GyGAkX/6QlD1qT9Nb9CZ3GNXU4HrHcmX/R53A0WDTCmp
 cPq4pnyQCg/fIRR6+JMXD+mJqMB+BC7C06t9fomVSflLarv2nkOczWf7mplRsbBx0jAkyODfK
 hrSVJh/QmIM5MyRFUSDo5tgnd/S1yj0fNgS8W3qbKfBBO0sFINRh3kmv0bKHyvztxOy0av8KK
 wncfeN92AF6xkavqoNhuQkjAPfKWoAfyZDfgn8+LxKJFcf6HCvFeudBOmz11Qp0nPa9Xnu722
 rbUhkA6MP1/82kBVkTpaZjLCOnY/DD8rn9V3hGGESnyzdAzz1hMZ3fxezf8BqHW8AKowyR/vP
 o/U75LXQAAD+Ry3SOuGL4yi7zEcKZpOz8XvWWRHupR8cEJqDH9paA7mjdrdB5hl/g1R+37PQ0
 vrNDR/0M9UEDLyoST
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
Cc: Malcolm Priestley <tvboxspy@gmail.com>, devel@driverdev.osuosl.org,
 Oscar Carter <oscar.carter@gmx.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use a formula to calculate the return value of the vnt_rf_addpower
function instead of the "if" statement with literal values for every
case.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
What is the better approach for this function ? Leave it as is or use
a formula although it is less clear.

I prefer the formula as it is a more compact function.
What do you think ? Feedback wellcome.

Thanks,
Oscar Carter

 drivers/staging/vt6656/rf.c | 20 +++-----------------
 1 file changed, 3 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
index 4f9aba0f21b0..3b200d7290a5 100644
--- a/drivers/staging/vt6656/rf.c
+++ b/drivers/staging/vt6656/rf.c
@@ -575,28 +575,14 @@ int vnt_rf_setpower(struct vnt_private *priv, u32 rate, u32 channel)

 static u8 vnt_rf_addpower(struct vnt_private *priv)
 {
+	s32 base;
 	s32 rssi = -priv->current_rssi;

 	if (!rssi)
 		return 7;

-	if (priv->rf_type == RF_VT3226D0) {
-		if (rssi < -70)
-			return 9;
-		else if (rssi < -65)
-			return 7;
-		else if (rssi < -60)
-			return 5;
-	} else {
-		if (rssi < -80)
-			return 9;
-		else if (rssi < -75)
-			return 7;
-		else if (rssi < -70)
-			return 5;
-	}
-
-	return 0;
+	base = (priv->rf_type == RF_VT3226D0) ? -60 : -70;
+	return (rssi < base--) ? ((rssi - base) / -5) * 2 + 5 : 0;
 }

 /* Set Tx power by power level and rate */
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
