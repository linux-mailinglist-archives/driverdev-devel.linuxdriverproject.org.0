Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A7A339F8B
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Mar 2021 18:36:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 41471400CD;
	Sat, 13 Mar 2021 17:36:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fepKushCmnnn; Sat, 13 Mar 2021 17:36:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 96FA2400BC;
	Sat, 13 Mar 2021 17:36:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 374AB1BF573
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 17:36:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 338D1838D7
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 17:36:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IJ94fUWvBT82 for <devel@linuxdriverproject.org>;
 Sat, 13 Mar 2021 17:36:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6CD77838DB
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 17:36:06 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id v9so50493661lfa.1
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 09:36:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hZFzGJGGqYkQXbFw3vppwBnaPK4m1e30oYQ0u6p8Zm4=;
 b=Ridq8kOcPRU4RXTT55WYVNxHb/xGmTkxBK8eLGPtRNdW4m2GAH1vtx1sepsv8MiLFN
 y6diMAwAbRsnUyCOORmWjK95p6moYrwrcwhA3OTD3nP84udz6fYeT0L6m8OoW4KCZPcv
 Fc+CPZxH8x4y7e9JLvlpK6WWCILI73Qw1TY2MMS8IfQM65/gAYdgo/DW+urP6R5MVtft
 5A2ll0pNsyKf5fyFh80AyGqJXFXxPmya6MlRGgWTlAxqDflJDIroNhgEOIuIkLhtcJfG
 BUf9ekEnq/MZyV2Yq3O/9/jcvM/KhOLvISi5qZyl4cAc/vzr4l4kLkDIhdOovQQ5JDVA
 kBJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hZFzGJGGqYkQXbFw3vppwBnaPK4m1e30oYQ0u6p8Zm4=;
 b=OFc58B2y1bnha42c9/ABbGJgSMLrVfy/t5bIjk6ttS/iq9sKNa+e631w6Mu8XFCcy3
 COSZHIWw+Ms/0joff+7HDXteHTi1biyZP8/ytrFNA9YEEOB+ofMMVug7QpsOSKZDkkic
 t0kL/t54gd/zrbkDz+j+/uNcR+pD9GwEi5uJi3Xrsq1EEDz8QTS7KmJyEbAwHEgiYQEa
 NJcaDPOk4/RarFmOz8vVbvS0hS11dgwSJMINOKIKVhuFyficWU6fvYR1iDmlzM6QLlhs
 wpxU8pyuWXnfE3zuyK1YR64uIJdQwmlvi4yb3x9heRjy8SNM3K+9pQtlaTU2zgxMjPPa
 jUGw==
X-Gm-Message-State: AOAM532ApH9qdvB1BzjcSNi538RVCkc1xzn+RlR5V3gGccZItxdztR4R
 DM283efvqeEgPZrdtBznD50gaEwpv+E=
X-Google-Smtp-Source: ABdhPJxWRBOgIXZrxkqXsmq0+pdGIC6y9QSrRY+1wDEZOs5NXUP61Wlm6ThQAw3Ng2+vy9mk6hpNyQ==
X-Received: by 2002:a19:2258:: with SMTP id i85mr3091717lfi.516.1615656964435; 
 Sat, 13 Mar 2021 09:36:04 -0800 (PST)
Received: from localhost.localdomain
 (2a02-a456-df9f-1-f9b2-7163-4c2e-174.fixed6.kpn.net.
 [2a02:a456:df9f:1:f9b2:7163:4c2e:174])
 by smtp.gmail.com with ESMTPSA id g9sm2085065lfc.258.2021.03.13.09.36.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 13 Mar 2021 09:36:04 -0800 (PST)
From: Gabriele Modena <gabriele.modena@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 2/3] staging: wimax: add a blank line after declaration in
 op-rfkill.c
Date: Sat, 13 Mar 2021 18:35:31 +0100
Message-Id: <1ee3795245816a81609749c82c3d369ea0cbf466.1615652628.git.gabriele.modena@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1615652628.git.gabriele.modena@gmail.com>
References: <cover.1615652628.git.gabriele.modena@gmail.com>
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
Cc: Gabriele Modena <gabriele.modena@gmail.com>, trivial@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl warning:

WARNING: Missing a blank line after declarations
+	struct device *dev = wimax_dev_to_dev(wimax_dev);
+	d_fnstart(3, dev, "(wimax_dev %p)\n", wimax_dev);

Signed-off-by: Gabriele Modena <gabriele.modena@gmail.com>
---
 drivers/staging/wimax/op-rfkill.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/wimax/op-rfkill.c b/drivers/staging/wimax/op-rfkill.c
index ad9d1c682ca2..50146f7b089e 100644
--- a/drivers/staging/wimax/op-rfkill.c
+++ b/drivers/staging/wimax/op-rfkill.c
@@ -379,6 +379,7 @@ int wimax_rfkill_add(struct wimax_dev *wimax_dev)
 void wimax_rfkill_rm(struct wimax_dev *wimax_dev)
 {
 	struct device *dev = wimax_dev_to_dev(wimax_dev);
+
 	d_fnstart(3, dev, "(wimax_dev %p)\n", wimax_dev);
 	rfkill_unregister(wimax_dev->rfkill);
 	rfkill_destroy(wimax_dev->rfkill);
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
