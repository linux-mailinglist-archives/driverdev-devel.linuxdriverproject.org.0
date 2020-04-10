Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B681A45AE
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Apr 2020 13:29:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC22388141;
	Fri, 10 Apr 2020 11:29:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cgfC216omx64; Fri, 10 Apr 2020 11:29:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D1D77880E9;
	Fri, 10 Apr 2020 11:29:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A0D01BF2FB
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 11:29:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 26BD185A22
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 11:29:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HPm-b7b-Brd5 for <devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 11:29:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8187A85450
 for <devel@driverdev.osuosl.org>; Fri, 10 Apr 2020 11:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586518164;
 bh=sWYYu3vMxv+gaoLrrDxDuwL+UgyJB+3aK94jNvqAN2Q=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=BJJD/x4jqvq8NcP0wyK/pY2vf35HluMdDC/CRo2x4vNPk1INvVbmM1P45Dg8ktR5t
 0K98hBx4DsqcxZ1DxdcBs6y2ByhlQDZSTp2RyXhuf/GtgonQAWX9Y0QemAf1toHdZz
 eeGzFriMDkuXGFNF/ojelaf8tu6DKp4P5hzljEA0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx005 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1M8ykW-1jK6gn3GvW-0069YE; Fri, 10 Apr 2020 13:29:23 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] staging: vt6656: Remove duplicate code for the
 phy->service assignment
Date: Fri, 10 Apr 2020 13:28:34 +0200
Message-Id: <20200410112834.17490-3-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200410112834.17490-1-oscar.carter@gmx.com>
References: <20200410112834.17490-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:NjWxbGtEZJAAq5q9d0g2t52pyLQL1cNj7YfLf+Ywk7tnZX8Z8KN
 2L7jusOoUGtMZ3F+D+HvU/4v/Y2MJvSrSsCwkMmdN2Vaa7ZySflHMSQksANCnXHsiYoGW01
 aTfO/HAQ3gVRnIU5cY1Sq3mswAmE33pYsOjybyVw4MXUaQMxpS39YCg4py91AvMMduKgN+T
 RwEVZ5LjVyW7eiKMft81w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Wy3xv9jGFSk=:iAyDj2NhE+ynqdygNhH/Ct
 lZQnd11jEtK6UzJ4SewJPHxNRA4JXoKiHjrwX7pUE5qartSUu3m8EpylNCFZpjMd620UnfHBR
 UltOpJtACX1h3ajBGnLpHpPOJEzjvb+2vZX6vdMS56TKtGrV/4UGutYOA0m6sh4LdSVW3WL3p
 Bk3tRzv2YXSK7xo6W1Nh7kFg3SGAFk4en3oKPDh2WtS9hALqvo55in/McWaEDvtRP9/44hnz9
 bYD9smU8rGdctYXcQgoHK/fYyFIZKmm/tUhqcjXJwJ/dIepOHrH0KdiS79BWc9Jktw5KNQq4R
 Rt+VPMPJmiQAmYxAxWe6R+msp3rWoJQq4YXNPT6j7wq9OejXClghKig35O1oEKXbqh5/L4LMB
 7AWKUCjGgtz9kMCW1SWSOOkXNmLqpM13Yl2mo1+DIo+cdrOcC4hkAHJp9HwkO8fojWCL5nsZk
 JSdokShKYloxHY7fM/SvHeV+bM45boJNQ1t/o2M5Rfxajf7elqFX6T11OLwv81TTls6QxIhjw
 6yQ+NQYXyLYX3P8vyBxbHiQ5FgmqWZzZsaiLksJvsT5wg2HLif6+061lF7h8hQ9i/J0w7+raL
 jZgI2a1maJmiYw+FZVHhUFoA6gSqq6KiTa7CtQN78jiAFeQlN+dCPVaOLKi3OprYe2XrSFii5
 OqpwEdTaITiZgc8AIaz4tTX47kF7KM/yO6XUXMPZrPw4gvRwZjx3w9A8iPpSGSR1cA6WqnnlL
 ZfuyCbeWlyVUqtNbpd83KcFO7/usoNRWUFwAGXWgdQzwYIJK1qA3mWiNEIpukg5slgSJgGnJo
 H/Nr3jqoj0CeqsI0EqkdfdwZEy3yWqQwlNgzJbnNddaGL2fa8UdHkX98oF1DGKYQHSU/OWb8W
 r4+8/tTcDzWDulK/40SxRrqmSxtv5IRz0DQJl60G5QsOAuqZhVxaf8WWiBTR0m0WLLjtr5W+Y
 EPSezMjas8FlTk1I2f7ny9cDpJHMQxBoUepkoVTZs4R6q97J95d/hPuUTf58UCX8AUnLOzifL
 iFsamqG94K+vyaLRRFdRpHeu5HXLHiB19xyRZUcvkWSRf4U7Jx8ZB8BdDm49XD9dJ42MkfByy
 T301XQhMWWaegvyetpTrB1K8me4afHvSv/CxOxC8PNYLQpeC1IV/ir8C3cZstvCYBdOjn6ueZ
 l8OR/Mua4jaeUVseenZ9ykHfQs0neyAA3vpqqKveIMS5PlBjKptE3vvjrYOLu62rh3r1ATME4
 PUrhHEoHzvXUIu2vi
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

Take out the "phy->service" assignment from the if-else statement due to
it's the same for the two branches.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/baseband.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index 47f93bf6e07b..b0054f6c07e6 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -233,14 +233,13 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 			       : preamble_type == PREAMBLE_SHORT;

 	phy->signal = vnt_phy_signal[i][j];
+	phy->service = 0x00;

 	if (pkt_type == PK_TYPE_11B) {
-		phy->service = 0x00;
 		if (ext_bit)
 			phy->service |= 0x80;
 		phy->len = cpu_to_le16((u16)count);
 	} else {
-		phy->service = 0x00;
 		phy->len = cpu_to_le16((u16)frame_length);
 	}
 }
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
