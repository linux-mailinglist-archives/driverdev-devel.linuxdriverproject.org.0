Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C9054562B0
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 08:54:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1CC418608D;
	Wed, 26 Jun 2019 06:54:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7rHKIVuE9w1f; Wed, 26 Jun 2019 06:54:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A093485E6E;
	Wed, 26 Jun 2019 06:54:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 301311BF3CC
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:54:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2D2B2865D5
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:54:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XMP+fPyjTxky for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 06:54:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C1D8D82753
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 06:54:31 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id w10so730400pgj.7
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 23:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G1avkuAvq81tWnNenYcIc44034Hm3fW1xFgr2/Pm6Lw=;
 b=Nu+4fCoWvMVzzPyp6JIE3t7xmJHB6MtoIlGeV55mO8VkatEQuIJgMMgMiAF4uIk2Bj
 nHBNclfQmYz5kDXwFL+S4DQC8cvzHGaLNL4rrKFXgi3cRr5OLHaFDjBrfVJfyvUK1Kq/
 hOBMKWvbee0G65lzoydYsXUveTEzCwp/B/mUhbKlyT4AJdJ8lPR8dXck2fowRgpw0j7Q
 WFBQrBCuvi3A1rFJKReg1jOYhfcYbZSxjD5hagrnck/dbVk1CERyPll3uatuXLB1IUNY
 hyOa/BA3nCIpMtzTXzVTjHeshQWDDQgAP0fMSU8QVgZt4jEj4BQCR1LD0C33XPLaci5e
 bHGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G1avkuAvq81tWnNenYcIc44034Hm3fW1xFgr2/Pm6Lw=;
 b=nisK1nQJFYsvGP1pae35+fSeM9VP1r63xX9Ka1/RyFmj8WjKgoMLw2GNu+pRmiw+Z8
 Izn555s5sDWVTZEi/ke5RbI/eqQ+c549aWjzXOB7zpehBTud1h0ek7y2ieH69wNm618G
 8k877maEQTvc3lRyTMe7+QPD2gfUpU0f6tskaNIkKCcHFXf7OZg572nl2xnBkiFpbFWC
 I9xB7dhRLPzXfmdshu/cCtKUw3XNHKAx7pID3tJM7VzuKjQNiPz8IjTgiH3wZjh9sr8s
 NxDnvpBtoiLkjIf1qPkhjg2bs93nNEnE+m2q1Oae6R+7MTPz6d0iD6p5iQ5STWjbfogu
 Y1Ew==
X-Gm-Message-State: APjAAAWUnRho7bQy9w6TiA8CZO+yC+aWb2wtctFZJJmgRtFzrjSsCMUj
 hxSH+VZiRFFPueniUifayxXYfa0b
X-Google-Smtp-Source: APXvYqyuDpBGXkUjhZ3+0zacEmApsl8fawWcDFp47OiODL2c1PztJDy9oFI0U9dwJUGvwwOR8j78/Q==
X-Received: by 2002:a65:648e:: with SMTP id e14mr1381429pgv.317.1561532071413; 
 Tue, 25 Jun 2019 23:54:31 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id z11sm970605pjn.2.2019.06.25.23.54.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 23:54:30 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, abboti@mev.co.uk,
 hsweeten@visionengravers.com
Subject: [PATCH 3/3] staging: comedi: Replace function
 mite_request_channel_in_range()
Date: Wed, 26 Jun 2019 12:24:04 +0530
Message-Id: <20190626065404.3330-3-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190626065404.3330-1-nishkadg.linux@gmail.com>
References: <20190626065404.3330-1-nishkadg.linux@gmail.com>
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
