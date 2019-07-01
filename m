Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F16125B672
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 10:11:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1D4D986576;
	Mon,  1 Jul 2019 08:11:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WQeo-y6VI4Ve; Mon,  1 Jul 2019 08:11:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2749C865CF;
	Mon,  1 Jul 2019 08:11:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 58FD41BF5A0
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 07:00:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 535042049B
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 07:00:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2ooGkzn2bzU0 for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 07:00:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 957AC20350
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 07:00:43 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id p184so6069503pfp.7
 for <devel@driverdev.osuosl.org>; Mon, 01 Jul 2019 00:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q5Q7FEra3c4swH+BZods7Uouhd41kqQtITwvmVdYfuM=;
 b=AyiJGm0g3ohTMFwMYeNz8Sm5gI4r3fhZOzST4GJz3Z/vK4HjznweAFEylagBIAcirP
 HN5njSE6MgNenTb3Ukw1U5ogvW99hcg7ouEXSMke7jP2KoClz1erZkoOmWWmZcEXXgCb
 VyYO8EPCaxlutFYeOAzUpJpoMxviI0sZChkUGG6i6o9gE2nXoI5VM2K4qgyzuwihPBL3
 lNWM93nfOpFjRcdFQu2MHnkA54Oj0yhg9jjKOegNlYF5sjZstr4jekaH6CVLkv9HTdJy
 C8e/qPu6+Hn8sxghuGTXR8DAuwz+MoTVZ7qCdFxRccsaa7zXu8fvDoPVubl6fIcPrUlg
 WRmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q5Q7FEra3c4swH+BZods7Uouhd41kqQtITwvmVdYfuM=;
 b=UEyA6O4AIGAgR6HuwcrqZ9EUK1hpq4GEWBHVh3ibkgmpdfJlHkDz7jHafokYFQoEMW
 Gk8LbqN9jMsWcArrTebH0ChJiLHcj/cC/uLZt7pOxnZwHVJxu09ieCp5O+w6QR0CA/mN
 ocEhS68k5sklJN0J/yJrpKg7mRf09c/TcbKwW0GP5HVP/IAMv94hR919y5EXiNcoUU8x
 X/5jLlMG1JO5pbiGe96HIXFWfOL3qiukj6LhXOBqTS8Vo1mPA3Xgqwn9lroFRaA+XprN
 Tsx99qdDqY2zpDMit2VEek1a5xP45JJxVyrc9UigjOYZZsw1e9deIReK1BVmjH2HpNuj
 nryA==
X-Gm-Message-State: APjAAAXLN0djuQ3q3lNM//DTKotSuMVgiseYl9Vc3O1xxp/wu5wlbgcT
 9I8rE4xWSgkdXNpyIui0OTYMaBl7
X-Google-Smtp-Source: APXvYqzSLcsYqNW+7UhMq25nSTuxBVQ2zNsT+MbF69KzoN3uWyYnD9E5PpPVJsVwlD+ZZYZRj2XSMg==
X-Received: by 2002:a63:6ec6:: with SMTP id j189mr7623816pgc.168.1561964443289; 
 Mon, 01 Jul 2019 00:00:43 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id g2sm14880583pfb.95.2019.07.01.00.00.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 00:00:43 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, abbotti@mev.co.uk,
 hsweeten@visionengravers.com
Subject: [PATCH v2 3/3] staging: comedi: mite: Replace function
 mite_request_channel_in_range()
Date: Mon,  1 Jul 2019 12:30:25 +0530
Message-Id: <20190701070025.3838-3-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190701070025.3838-1-nishkadg.linux@gmail.com>
References: <20190701070025.3838-1-nishkadg.linux@gmail.com>
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

Remove function mite_request_channel_in_range as all it does is call
__mite_request_channel.
Rename __mite_request_channel to mite_request_channel_in_range and
change its type from static to non-static to maintain compatibility with
call sites.
Change only remaining call site of __mite_request_channel to call
mite_request_channel_in_range_instead.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
Changes in v2:
- Edit subject line to include driver name.

 drivers/staging/comedi/drivers/mite.c | 27 ++++++++++-----------------
 1 file changed, 10 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/comedi/drivers/mite.c b/drivers/staging/comedi/drivers/mite.c
index 639ec1586976..cc9fc263573e 100644
--- a/drivers/staging/comedi/drivers/mite.c
+++ b/drivers/staging/comedi/drivers/mite.c
@@ -558,7 +558,14 @@ void mite_prep_dma(struct mite_channel *mite_chan,
 }
 EXPORT_SYMBOL_GPL(mite_prep_dma);
 
-static struct mite_channel *__mite_request_channel(struct mite *mite,
+/**
+ * mite_request_channel_in_range() - Request a MITE dma channel.
+ * @mite: MITE device.
+ * @ring: MITE dma ring.
+ * @min_channel: minimum channel index to use.
+ * @max_channel: maximum channel index to use.
+ */
+struct mite_channel *mite_request_channel_in_range(struct mite *mite,
 						   struct mite_ring *ring,
 						   unsigned int min_channel,
 						   unsigned int max_channel)
@@ -583,21 +590,6 @@ static struct mite_channel *__mite_request_channel(struct mite *mite,
 	spin_unlock_irqrestore(&mite->lock, flags);
 	return mite_chan;
 }
-
-/**
- * mite_request_channel_in_range() - Request a MITE dma channel.
- * @mite: MITE device.
- * @ring: MITE dma ring.
- * @min_channel: minimum channel index to use.
- * @max_channel: maximum channel index to use.
- */
-struct mite_channel *mite_request_channel_in_range(struct mite *mite,
-						   struct mite_ring *ring,
-						   unsigned int min_channel,
-						   unsigned int max_channel)
-{
-	return __mite_request_channel(mite, ring, min_channel, max_channel);
-}
 EXPORT_SYMBOL_GPL(mite_request_channel_in_range);
 
 /**
@@ -608,7 +600,8 @@ EXPORT_SYMBOL_GPL(mite_request_channel_in_range);
 struct mite_channel *mite_request_channel(struct mite *mite,
 					  struct mite_ring *ring)
 {
-	return __mite_request_channel(mite, ring, 0, mite->num_channels - 1);
+	return mite_request_channel_in_range(mite, ring, 0,
+					     mite->num_channels - 1);
 }
 EXPORT_SYMBOL_GPL(mite_request_channel);
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
