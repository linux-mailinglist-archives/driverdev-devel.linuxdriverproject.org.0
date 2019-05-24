Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD25329257
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 10:04:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BBA6F87FC1;
	Fri, 24 May 2019 08:04:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lBYXTxA4u81f; Fri, 24 May 2019 08:04:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9E79F871EB;
	Fri, 24 May 2019 08:04:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EA0551BF2CB
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 08:03:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E49D886A94
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 08:03:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XYV9MP9nSyiX for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 08:03:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 634F986A92
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 08:03:58 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id f25so4607763pgv.10
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 01:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HNkTrSPrWeWXveHzjDoSXQ5IdGPBHWE+lGuP4zZQGbw=;
 b=M0jrzHPvGSEb/QQcjkX5SYTXMN4ZnJ8qzPhFLxGZxd1MC9AkDd+XcmUa4CKSKzab25
 D2Y9lwHkr42f70AhMTht8xWC/9iG9O67cjGijU4N4VdFttTm6bVu+7RkrqSo2UHZ+N30
 LIXg9adlweQfZgOayvEC1jlQmy+GFgm33xskvgS1t5O9OJ6zl4xz9yNhvJZJ1Um90urT
 Lo2Y7AuXM+DKZKpLxRWx/fiQ5unKTXHZ9Bf070djy70jZoffHBXBdia015ENZsGUdyv4
 vGyRq8lG1CCCARTMklGQe8Ql6+2n/CGqhd+hh11OmgrLHEoRx4nTHIgwU+POuXf1SQI9
 3eOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HNkTrSPrWeWXveHzjDoSXQ5IdGPBHWE+lGuP4zZQGbw=;
 b=EHSqzCvNxfY3npVuiALvP6FrdBri27of+hGJDGBtdYeC78j1j6FVoPXYQSJ/wGv8KC
 Y2KqYqEfrtIUF4yEITQpuXQAYHrcYjSBbbZWMFVXlzXsdRS4aK/Hk9cGlv+98LeWIj44
 mtMjwxBRqOUcChZY95RtGchZrvI2TxRJY+qtVcwf3OLemc2d9bMSkFNqrJ8I0cuaJbql
 wYDgYyMzjMrq9015AyHrT0ZvjQpiaD5f906LvzkGJhAp6Gv7p1GxR3BQ38gqWMZ6s4vY
 x4FGoNO0ACEdmqE9vE6a1pTv4PDZkp/meXKFI2wTkR4AVJmzgf6C0xN0ZiuLQQuYp2CX
 /CDA==
X-Gm-Message-State: APjAAAVVm08fwcrzNTX7y3MoReOmF4J3bdfPzd9seh2XnpLINTDO1hh4
 QQencenbVJHsn0AYSNWKy1PosAKG
X-Google-Smtp-Source: APXvYqyhvamRxC3mOGXVell9YlzIZ6rkR8DMzJTRP8++UqiW0MPrqj9nwS/gxZ33Gx0lNT5yFlvPfg==
X-Received: by 2002:a63:4d0b:: with SMTP id a11mr15759506pgb.74.1558685037809; 
 Fri, 24 May 2019 01:03:57 -0700 (PDT)
Received: from localhost.localdomain ([110.225.17.212])
 by smtp.gmail.com with ESMTPSA id n9sm1730202pfq.53.2019.05.24.01.03.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:03:57 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, colin.king@canonical.com,
 herbert@gondor.apana.org.au, qader.aymen@gmail.com,
 sergio.paracuellos@gmail.com, bhanusreemahesh@gmail.com,
 mattmccoy110@gmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: ks7010: Remove initialisation in ks_hostif.c
Date: Fri, 24 May 2019 13:33:30 +0530
Message-Id: <20190524080330.4740-1-nishkadg.linux@gmail.com>
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

The initial value of return variable result is never used, so it can be
removed.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
Changes in v2:
- Fixed typo in commit message
- Clarified subject line to include filename

 drivers/staging/ks7010/ks_hostif.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index e089366ed02a..3775fd4b89ae 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -1067,7 +1067,7 @@ int hostif_data_request(struct ks_wlan_private *priv, struct sk_buff *skb)
 	unsigned int length = 0;
 	struct hostif_data_request *pp;
 	unsigned char *p;
-	int result = 0;
+	int result;
 	unsigned short eth_proto;
 	struct ether_hdr *eth_hdr;
 	unsigned short keyinfo = 0;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
