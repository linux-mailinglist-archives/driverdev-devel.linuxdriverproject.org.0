Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD93E2909F
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 07:56:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9880887F58;
	Fri, 24 May 2019 05:56:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0O2VEA93T3B3; Fri, 24 May 2019 05:56:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 43A6687F65;
	Fri, 24 May 2019 05:56:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1A2731BF3C6
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 05:56:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1615C86C8F
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 05:56:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HT1uFwBy504S for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 05:56:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9D5F686B2C
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 05:56:21 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id r22so1765389pfh.9
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 22:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AoxtaitWGEKFSZOEKz/v/lg67nbZ3fMxSFB5YHzG0Zk=;
 b=AY/0k4r8s0g1pZ0kq+WyGw30gp9iBBM6N/4oGMC4X8ToyKe1a+5qbj4F2mJa54l+ba
 sRvxKw+ypCdS9FwSiPQfbK/3PoRxwGNROKxcUc4wjuo9+Qeh+1sLJCpcvlXR/X/dlQ2d
 SjJw4SA/crQN57zKdk8Ep14IMaaxVVryF/+CinzK1ymLYOFwJveNSs6GDq1I1QB3lYZ+
 p6bbw+J5vjsQyDUWimuZMqZpVvHRlr1UzhEw60PI2pbuVdVIW2D9r1aUOtvMwE+BlUsr
 LsSABLfs72VwRdWoRK0uPaYugFGYrdWfPvKaklCSU+zjlv8CqLq/NzYuTH1JFVuY1Tnz
 9r1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AoxtaitWGEKFSZOEKz/v/lg67nbZ3fMxSFB5YHzG0Zk=;
 b=fhbnF6hG4l0pa6tfyHyNOzD1wFD8N6RgPCZ/Pdq1JE5yaQEbYPWTTFPtcTEO2cpzAK
 9ZA+5DqCEd99BF0omvIv70qLtwBNH3y2B2J/3YEMjLAMj5W5Nnhtjptki+HzmTAWLD2y
 KP68XJ9dwamtICtQv45xfiwxXNb37rZiY3+67+Tgph2RsytuhXmZVmdHAtPMxzG9+9GY
 mWi6DaK0FzL2QPQ1xuP9wJmn7LiiVz5Kc5WcooJLel2AR6H5yGwBkMXTdYh9cSCfep8Z
 SgwIzHZeLL1zfMO/7AedWWYz1IJYndfikJZgsreVo58vxDAeQrr8XFcF/Rp0zpJP2OoG
 xRkg==
X-Gm-Message-State: APjAAAUZJw+GyZfOnLH/GDes5Ge/vjnAmgaA4WPqDh3IOcjEq56ZM6MU
 8BJSN7wX0lRtjnSPVyfm3PA=
X-Google-Smtp-Source: APXvYqzui1RlsbgsXSuGOMkUiXJP91mqSn9EV/ojt8Fi8wiX31QqbqmpC429LfG3fikeBVMYKIMA1w==
X-Received: by 2002:a63:c64a:: with SMTP id
 x10mr101968551pgg.195.1558677381296; 
 Thu, 23 May 2019 22:56:21 -0700 (PDT)
Received: from localhost.localdomain ([110.225.17.212])
 by smtp.gmail.com with ESMTPSA id x18sm1907129pfj.17.2019.05.23.22.56.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 22:56:20 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: ks7010: Remove initialisation
Date: Fri, 24 May 2019 11:26:02 +0530
Message-Id: <20190524055602.3694-1-nishkadg.linux@gmail.com>
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

As the initial value of the return variable result is never used, it can
be removed.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/ks7010/ks7010_sdio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index 74551eb717fc..4b379542ecd5 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -380,7 +380,7 @@ int ks_wlan_hw_tx(struct ks_wlan_private *priv, void *p, unsigned long size,
 					   struct sk_buff *skb),
 		  struct sk_buff *skb)
 {
-	int result = 0;
+	int result;
 	struct hostif_hdr *hdr;
 
 	hdr = (struct hostif_hdr *)p;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
