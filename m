Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F2218E856
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Mar 2020 12:24:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 29686863CD;
	Sun, 22 Mar 2020 11:24:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GRby5F8IzIZY; Sun, 22 Mar 2020 11:24:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8038686103;
	Sun, 22 Mar 2020 11:24:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 045CF1BF3EF
 for <devel@linuxdriverproject.org>; Sun, 22 Mar 2020 11:24:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0124D86103
 for <devel@linuxdriverproject.org>; Sun, 22 Mar 2020 11:24:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hl4KY6tWRxYt for <devel@linuxdriverproject.org>;
 Sun, 22 Mar 2020 11:24:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3DF8F85E08
 for <devel@driverdev.osuosl.org>; Sun, 22 Mar 2020 11:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1584876251;
 bh=2OfMz68fZcjyzYOJnTOBgsYuScztKPJ6ntaCVj5jt/0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=dkMDcncr31iy7F6+uSADPNxS3aP7BED9iOPjRmh3VB/wI+M/HsRN9ET4f2umlnbhB
 0T03qpvAl8gPnAKmcsQqxhgYrUJHwIlYQcV/wG/cWGDYqQytrcXhue/9UsMkEJHOQu
 fjzCdDJF5fZB+jCZ+h/QS4Kbi+UioA/0bNXlBgP8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx005 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1Mdeb5-1jp2Tq2X8T-00ZecY; Sun, 22 Mar 2020 12:24:11 +0100
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vt6656: Use DIV_ROUND_UP macro instead of specific
 code
Date: Sun, 22 Mar 2020 12:23:42 +0100
Message-Id: <20200322112342.9040-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:QcrRCzsISLPdRLV/rxdGZpgJj1BH2D/hXWF8r0pOjAM6J/ZAoVg
 ZRuRD7YzqJ4EqUkT9nC29B6GyZJWvrqD2ykxtFLF7C6NOrTi5+c9TJJqrmwi/BPLrf3YzcY
 FjvOygTPILYo5bibzBXptJQ60s/0acM9kFWT3K15mGp7cOdHBBw/ive8UxMENjAp4Wp4khb
 c+uOinyGlaG+vOwNzEwuw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:spl5UPks56o=:c9soitPABpcjTQjStixt2M
 nseBB2ZCj2flGPJHz4Z1H2pOnkvjNDS8lsYKjIg6wrGYcLC96tmI1OdoonKM7PSVtNmMErZRX
 j04S+xgWxbxqSUmLTC//rKLGpiPbY4w+1ZD71bFi/s7IzxBADoVmzAWrxmXDPxs7u0UXBzAzY
 EZx1htdETYun/Hn7Nq6sU0yBrf9qNFmYCY1n8pVNjCjPb0D4eXMVBXgwoI0GFM5tWUGhfivCv
 GZRgvlNm9df2Atkf7t/tWmjYsTOvr3utOopu8Sr9dXCaPJ+2kz1w0bIQ4ne6jQDWrI1hPydf3
 OPFeD9o82s1y3FUFBNwTHJ5duVRB0U1+iEP8DKt65uE00b4Pe/adXkZRJdK4Om8L6lHl0Sg2Z
 X0e7zSEEhT/BWe1b8iSuTU8CqcwYDhEXqHdZBeCOQ/cZdfr1IFZhy4eMPC0yqWS5UluVVmOIp
 OalVQ+xGbvgSa1cAPExtOGkIBgMoXnhSsdrNb6LeBsc5zwKC6lAXgKyQpr3QaIUqE19g7GBb0
 UaQ9cy2sDzTOjpZBDuH/WgIEyyRdnvPQ0X9502fSfa5v7UYmm6eVrRK1C8cohLoRxBNzBQqp4
 2bQa+nSLHVpEfO0+woivzt4mzxsWW3rh9mGV8T8lcOTv7S8N4rgVGePt31z5HtFFVG/iWtuK7
 rNRQUvwDncbN2W9J4HUXxnnvx5+HyTv7xebRXrlEr7VUApkmV6OGf2ufKlCPLK/V52Ej67+yO
 oZ5OG/vtMcy2V3clgcZNuWsJLuGBqZ8PhkXMxaoEVWMqouCEwuvZ1FbaNjk1WA0ktMu+E4ZKl
 3yc6XtKUxTMXSaxIzgJ01FEmXtJIYd/WccQmwhmK109KkBRvvBmPYUVZk9nhllA+Pv4Cpgyeu
 1XTD1AjS/BgRctZi7bLOKjrQ23ha2livcoN0YqamP8dBCgIkn7A+Tlx7PTaPeEvs5MBkvR5OM
 Pn+t6dEsJ+YOa/MxdghAjrN4AByJCEs9472NjZ1qDB2JpiZAc7ENw2UNWB2/QN9MZCOCzf7Mp
 J6mG6XoalPJCuFEFDU6lHSACZNVKNnp1kua9vzh2+HCX5AWiDFj2YJtLSqQ0gPqDx+JL29gT+
 kPwXmhCeagtfryJUwHASqYwVUer/FWON8ry0ShbjB87gMBP2kpVL70l6oaMfhFfNr8XwhsypR
 CiFdSsYc+TlDMfGxxcM9UnUNdtlc4+2MjKnp3ZA59XXS+53hxiRcsC5SSQaXeEEVY9LpeeA8a
 m4GMWasGol01vN+JU
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use DIV_ROUND_UP macro instead of specific code with the same purpose.
Also, remove the unused variables.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/baseband.c | 21 ++++-----------------
 1 file changed, 4 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index f18e059ce66b..e2eb2b98a73d 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -22,6 +22,7 @@
  *
  */

+#include <linux/kernel.h>
 #include "mac.h"
 #include "baseband.h"
 #include "rf.h"
@@ -132,7 +133,6 @@ unsigned int vnt_get_frame_time(u8 preamble_type, u8 pkt_type,
 {
 	unsigned int frame_time;
 	unsigned int preamble;
-	unsigned int tmp;
 	unsigned int rate = 0;

 	if (tx_rate > RATE_54M)
@@ -146,20 +146,11 @@ unsigned int vnt_get_frame_time(u8 preamble_type, u8 pkt_type,
 		else
 			preamble = 192;

-		frame_time = (frame_length * 80) / rate;
-		tmp = (frame_time * rate) / 80;
-
-		if (frame_length != tmp)
-			frame_time++;
-
+		frame_time = DIV_ROUND_UP(frame_length * 80, rate);
 		return preamble + frame_time;
 	}
-	frame_time = (frame_length * 8 + 22) / rate;
-	tmp = ((frame_time * rate) - 22) / 8;
-
-	if (frame_length != tmp)
-		frame_time++;

+	frame_time = DIV_ROUND_UP(frame_length * 8 + 22, rate);
 	frame_time = frame_time * 4;

 	if (pkt_type != PK_TYPE_11A)
@@ -213,11 +204,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,

 		break;
 	case RATE_5M:
-		count = (bit_count * 10) / 55;
-		tmp = (count * 55) / 10;
-
-		if (tmp != bit_count)
-			count++;
+		count = DIV_ROUND_UP(bit_count * 10, 55);

 		if (preamble_type == 1)
 			phy->signal = 0x0a;
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
