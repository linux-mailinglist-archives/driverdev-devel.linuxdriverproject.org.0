Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A843D1AECD2
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Apr 2020 15:46:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D6AD1859D1;
	Sat, 18 Apr 2020 13:46:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lLYxAyEu-0jz; Sat, 18 Apr 2020 13:46:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3215D85D30;
	Sat, 18 Apr 2020 13:46:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 881F91BF364
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 13:46:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 81F8084F7A
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 13:46:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wDEIcBEo5LOa for <devel@linuxdriverproject.org>;
 Sat, 18 Apr 2020 13:46:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 22FD684964
 for <devel@driverdev.osuosl.org>; Sat, 18 Apr 2020 13:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587217591;
 bh=BpcHpbLXJb+WHF2RoThe4fFeGdSByivKbXya/PGIWw4=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=LsysFO3+kglKOhmgmcfoghAYzKBKEP4aFieLpxChOiJtqzm8l9jy4IaTK+CDG+otY
 Piwopf0zXDGe8It2w0jpOaVxuwnms6RVlBLizOs6bhXX0Vpr+9sSgM4JYch9g/BJIm
 R9vCu7Ab61QX6RGh+IqUJ5tT2uv1Pg3Y0ESAvrG0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MlNtP-1iyCoE1ZXh-00lpbR; Sat, 18 Apr 2020 15:46:31 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vt6656: Refactor the vnt_ofdm_min_rate function
Date: Sat, 18 Apr 2020 15:45:53 +0200
Message-Id: <20200418134553.6415-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:4JFtHOTdQkeOmzXA0/LYjINxluFdAMpRqtHOhwpeJebrmU3ZkS5
 Q6AZ0qRJj0o+UMJAXBvV0+IS1ZG+0Sc9noMFEdOLWtcbi3f8mf7Jpbq1LPWx9TahJKznBxM
 57T+a5xcnh9OULhjG2AFQ3CdtbIXmQUc23VQfhF3CysqoLuqnWHWJcn7ERswBrKExzt44bB
 Hs6i3S4vPfVDZ5zCZXQXw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:aa2gM4tW/X8=:ut/0Mb0Rrp4UmD3apbwkAR
 Ho6S626EEb4Pyvij+acmOhAnTftZatO6XC02S9vbdFevjOgN7b7K7fLxgRu+FDMYOawc3dVFA
 isLSqdtGoo3yCkNGuNe+FI2/sP6ulLjVNAlu4O5kZOiME/oK2OCU7fnEqbeW3dE1sGDMXSl0x
 hreOMXUaJ4mPv+HDV7iG86ePePSE1WzCrb6vibnjTflqRS+f1PGF4T+F2Qy51XqZYeGDDTi0U
 2ueJdZEmaRG6l6Abk99F37GzvpGjk13JrnjtlU7MVpYvQdGqggm0NY5yUY3dxliTshzwWWv9a
 nf/ewqeZuTn+lpuwGff1voM+/o9AWRgyoA9N1bDdAaf+5Hw/BrArQRgjzRydxXl+C3Qs/19ON
 UZPXl20YlKMH6ztGRy6jgQI5puvbFglvNlDZFUZnk8xAhbApZh3g2fNxFLH5xmhoJOnG12H1c
 yJYDu6+mLWTipR6NF0PW7RUem/rrJuxVpa/CXxofZGcEopLg/XTU4s3kAdUklqj99n1nasS6G
 kgR/44xN924GlSYTYcVJRMO5VwYzayy9t9cHPLWEN5YO7gWu3Nps5ICPYGhKsIZrw972IjVRM
 wjOrrse9iXfqo45p/zO2J+YVDp5bsCkVjlxfo0B2QyFtvk8t0ARRrfs5nOT9QW5BVGHv7jZni
 Bf9gTHKtSKRWiDHl39wTGoEqOK1APoicCzhbEUuRi+j0eTo2lqY+ZBbbOuT6f9lN0zMvBf6gb
 vXMp/GuO0DxevWEg8a2ItMCR9ggFgWo7tzEXbGUXpavAoXH2EVZIbl0LeCX+VbRg5rqV2MBuS
 2kQqg8n9/utToGBlQcb9yIW0uAB+L+b4p2glGA/xRozOVNG3auL74o6OBz7TNYpHQOmtXq1cs
 BSgLlpJOunyX0BIYCjJCjCA8093r1jl30iOqMhMnHnAu0geV+WrT6C/iEpBK7Iw0jD1ZIWfB8
 nXmIWKsTDK6wO+xU5mElP0nJi8yib3s2iMnz8Bbpb5J+MO05FFg0JBQ/orj9thIlkyc6+k2oa
 p2ADOHqxLdOdxyc7NxamvNUvjP+jrQSRuYTUZ6OJTKR7R9YrOF8fSCCwBAOyYOd9lbsjfyA7R
 9U4IWWigeBoas4GnKLXRWynXs24F9oOlS2O+U5DEkJVG20dLGZlkrftdzLgExEMw3Q1N6jweX
 ns7L9x7pSDsjNJKzSDpe0m0adt3z62e/yffuKt6FTYN0qA0o8E6YaJksoozFq+VPRuAw1JgTg
 MPBy4I2Fx4pcJk3Bo
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
 Malcolm Priestley <tvboxspy@gmail.com>,
 "John B . Wyatt IV" <jbwyatt4@gmail.com>, linux-kernel@vger.kernel.org,
 Stefano Brivio <sbrivio@redhat.com>, Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace the for loop by a ternary operator whose condition is an AND
bitmask against the priv->basic_rates variable.

The purpose of the for loop was to check if any of bits from RATE_54M to
RATE_6M was set, but it's not necessary to check every individual bit.
The same result can be achieved using only one single mask which
comprises all the commented bits.

This way avoid the iteration over an unnecessary for loop.

Also change the return type to bool because it's the type that this
function returns.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/card.c | 11 ++---------
 drivers/staging/vt6656/card.h |  2 +-
 2 files changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index 9bd37e57c727..adaf93cf653a 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -248,16 +248,9 @@ void vnt_update_top_rates(struct vnt_private *priv)
 	priv->top_cck_basic_rate = top_cck;
 }

-int vnt_ofdm_min_rate(struct vnt_private *priv)
+bool vnt_ofdm_min_rate(struct vnt_private *priv)
 {
-	int ii;
-
-	for (ii = RATE_54M; ii >= RATE_6M; ii--) {
-		if ((priv->basic_rates) & ((u16)BIT(ii)))
-			return true;
-	}
-
-	return false;
+	return priv->basic_rates & GENMASK(RATE_54M, RATE_6M) ? true : false;
 }

 u8 vnt_get_pkt_type(struct vnt_private *priv)
diff --git a/drivers/staging/vt6656/card.h b/drivers/staging/vt6656/card.h
index 75cd340c0cce..eaa15d0c291a 100644
--- a/drivers/staging/vt6656/card.h
+++ b/drivers/staging/vt6656/card.h
@@ -29,7 +29,7 @@ void vnt_set_channel(struct vnt_private *priv, u32 connection_channel);
 void vnt_set_rspinf(struct vnt_private *priv, u8 bb_type);
 void vnt_update_ifs(struct vnt_private *priv);
 void vnt_update_top_rates(struct vnt_private *priv);
-int vnt_ofdm_min_rate(struct vnt_private *priv);
+bool vnt_ofdm_min_rate(struct vnt_private *priv);
 void vnt_adjust_tsf(struct vnt_private *priv, u8 rx_rate,
 		    u64 time_stamp, u64 local_tsf);
 bool vnt_get_current_tsf(struct vnt_private *priv, u64 *current_tsf);
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
