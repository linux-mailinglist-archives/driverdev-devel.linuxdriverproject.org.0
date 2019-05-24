Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4B9292C7
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 10:18:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 41FC686D37;
	Fri, 24 May 2019 08:18:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7CgPiqirSnXD; Fri, 24 May 2019 08:18:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D17EE85008;
	Fri, 24 May 2019 08:18:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2C58D1BF958
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 08:18:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2963A22098
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 08:18:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rUArSfnVTJsx for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 08:18:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id A6B2D22008
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 08:18:41 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id z26so4870672pfg.6
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 01:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5MVjgGhmeDVVcsd1Bp0XT3uzjq2j5RVjcC5adv2QpbQ=;
 b=iRuKM28tYfKNZrvip2A5NOWelVL/4eBtb964IsQlQSIxC/7erSXVG83O6CVtGoqz/+
 vBJHdI3/i+9VXVzomdVKI8qa+vg2YULe2U+7m/oukpljX8eu34y4MpEz3MYLuxxU7uhb
 lJtB+dR823Ada50ALi0DAOQdfMAYLi2gdjrq3FYq9X3yf7GIfTdyJn5g2LlTa8Xjcjxa
 u9Q1BULQoqV0wrU2AGe9oLIW0AlCwoRjN6eI+Wg0WD5oqVJVLzDW43GCY9MZ+/Kn5XuY
 XUIYlHu83mJWrQ05/Iga1DctvwXC0OP/5qiUkbUUZqapVnvB7V1Qn8TbFvrzXCRSp0Uu
 vgVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5MVjgGhmeDVVcsd1Bp0XT3uzjq2j5RVjcC5adv2QpbQ=;
 b=duTGyRYzyppMWdIUM386CCzn/XB0IAdJOewL/7/w4EU5T3dnjGwuB/R0wW+iMv/wJ0
 l2jHt97FRDVFO0seH1LK6O0A4L3JHGT8UyLcaGaXcXaU0maC4gyyisW1juCLnJozD4W8
 2d+7sEImYhBnjT6fY2py5F/ilU+fsrttYCgrCmaQxHdAd6VTmP1qBycugFQef9ZPJBx/
 oiAH5b0TOFM0fQTov0vDzqgA7lghtaNL50UGECK+ifJPuc69+bdT+AXNZE+7uWpv3dme
 B3z8B1upNYvTF+rEwNmpX9C8SD182aCxzFqarOflNcm5z5VwOEV9yRlF+heq+yKi1h4X
 5EXA==
X-Gm-Message-State: APjAAAXoc4KF5iBhRosckwUDpBubSjEIKUZi/l9VfRAP48iKkn5bZxd7
 WVD8JtVJvF8QLXApIXBzk1Q=
X-Google-Smtp-Source: APXvYqyIQSkcOIdJYgcmWe/9jjru5iacQQMg57EgrzxY52IaOz0WwUYWgCUYZURSvIOGbqe1zdETYA==
X-Received: by 2002:a62:ab0a:: with SMTP id p10mr11335022pff.143.1558685921271; 
 Fri, 24 May 2019 01:18:41 -0700 (PDT)
Received: from localhost.localdomain ([110.225.17.212])
 by smtp.gmail.com with ESMTPSA id e10sm3356478pfm.137.2019.05.24.01.18.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:18:40 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, colin.king@canonical.com,
 herbert@gondor.apana.org.au, qader.aymen@gmail.com,
 sergio.paracuellos@gmail.com, bhanusreemahesh@gmail.com,
 mattmccoy110@gmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: ks7010: Merge multiple return variables in
 ks_hostif.c
Date: Fri, 24 May 2019 13:48:21 +0530
Message-Id: <20190524081821.5671-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The function hostif_data_request had two return variables, ret and
result. When ret is assigned a value, in all cases (except one) this
assignment is followed immediately by a goto to the end of the
function. In the last case, the goto takes effect only if ret < 0;
however, if ret >= 0 then this value of ret is not needed in the
remainder of that branch. On the other hand result is used (assigned a
value and returned) only in those branches where ret >= 0 or ret has
not been used at all.
As the values of ret and result are not both required at the same point
in any branch, result can be removed and its occurrences replaced with
ret.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index 3775fd4b89ae..2666f9e30c15 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -1067,7 +1067,6 @@ int hostif_data_request(struct ks_wlan_private *priv, struct sk_buff *skb)
 	unsigned int length = 0;
 	struct hostif_data_request *pp;
 	unsigned char *p;
-	int result;
 	unsigned short eth_proto;
 	struct ether_hdr *eth_hdr;
 	unsigned short keyinfo = 0;
@@ -1209,8 +1208,8 @@ int hostif_data_request(struct ks_wlan_private *priv, struct sk_buff *skb)
 	pp->header.event = cpu_to_le16(HIF_DATA_REQ);
 
 	/* tx request */
-	result = ks_wlan_hw_tx(priv, pp, hif_align_size(sizeof(*pp) + skb_len),
-			       send_packet_complete, skb);
+	ret = ks_wlan_hw_tx(priv, pp, hif_align_size(sizeof(*pp) + skb_len),
+			    send_packet_complete, skb);
 
 	/* MIC FAILURE REPORT check */
 	if (eth_proto == ETH_P_PAE &&
@@ -1225,7 +1224,7 @@ int hostif_data_request(struct ks_wlan_private *priv, struct sk_buff *skb)
 			priv->wpa.mic_failure.stop = 1;
 	}
 
-	return result;
+	return ret;
 
 err_kfree:
 	kfree(pp);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
