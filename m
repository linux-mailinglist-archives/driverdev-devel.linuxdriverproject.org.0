Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 585BC366E6
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 23:37:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 886B5861BC;
	Wed,  5 Jun 2019 21:37:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DzKEWbmsq-Lk; Wed,  5 Jun 2019 21:37:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4366E86135;
	Wed,  5 Jun 2019 21:37:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 71C561BF422
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 21:37:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6EE558411F
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 21:37:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qvc6tjEKvprW for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 21:37:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D105483638
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 21:37:06 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id l128so218211qke.2
 for <devel@driverdev.osuosl.org>; Wed, 05 Jun 2019 14:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=893J4xNM/bwBsjQATIhlonNslmjJjGvg2y/vAmZ94ag=;
 b=TIuqFWuNCmIReM1uB+P5/ksRi9hb+wX7zyNH6KaWvP3nQTdd/wgovh//b4WvOhQeax
 NC0KiPeWshL5zth40EWczshnwVJQiYGoZm9OPJRdVEooU9Y8fhZybqd/v6rO/EK/ZFgX
 5GHpOWiitJrxvGPwNqtBqVFTHSsmAz4q5lPutUfWIJIxtn5+4lxEYbKhgd3KJ+tgb4+o
 PJqjmAihHXOoW1bLoscmk71T25o5X9N0eT3sfWuRovhHBqwZdtBItX0+LVbcGRySX2I5
 FNB3KcteZemKOSpcaWDXmR0EnisuA0OxDHIcfLxhf+9jBjIVQz3O6vxAo9s+JF+SK6We
 nkdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=893J4xNM/bwBsjQATIhlonNslmjJjGvg2y/vAmZ94ag=;
 b=m27AJy3a9cFgCp/9YUGbeVQ8yMtmhDydCA0Qqf3mFEoTjdyYf7IbhVDRTjfzRkTLTP
 qmMNxmd8/o/xnqpnfrFAf5W1xHBBwwhre/iEeftW5Tz461C3iemXQJgzuif/O6w26jHU
 XjUZYwHVLNM4gnqtd1fm+ONXWQ2h892awb1Oca9XeFrEn7Ibw1IwQ0QseIdsipuj83e+
 q2sCxWG/o3tPigqJsW4JqHtAm3CYl0qkYMM5KnvFJrWUAOzqYh3JaJpIPrRMWxARJytH
 9MsZ2A3LZm797Ct2R3tsP9gqBnAPjaahLSHH0K65BP3AGGcXzh6RTe6sBuQeLbBGTz/U
 qx0g==
X-Gm-Message-State: APjAAAWt1WT5YkzmVS8/xID2p1+IY+rv7jM/8CV4Co5T3vxcuVKelLx8
 Fk28q89RaEYNiXUQikARA6e3wQ1W
X-Google-Smtp-Source: APXvYqxbDkYE2+zPiyJPzFJI47D/kXqbLTgjEBGBN3uzYK3w4yOyDf9N2ruIiwEk1quAIGgXxePy/A==
X-Received: by 2002:a05:620a:35e:: with SMTP id
 t30mr35309160qkm.14.1559770625772; 
 Wed, 05 Jun 2019 14:37:05 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:3c8:56cb:1049:60d2:137b])
 by smtp.gmail.com with ESMTPSA id d23sm20151qtq.6.2019.06.05.14.37.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 14:37:05 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: kpc2000: Use '%zu' for printing 'size_t' type 
Date: Wed,  5 Jun 2019 18:36:48 -0300
Message-Id: <20190605213648.6887-2-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190605213648.6887-1-festevam@gmail.com>
References: <20190605213648.6887-1-festevam@gmail.com>
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
Cc: devel@driverdev.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In order to print a 'size_t' type the '%zu' specifier needs to be used.

Change it accordingly in order to fix the following build warning:

drivers/staging/kpc2000/kpc_dma/fileops.c:57:35: warning: format '%ld' expects argument of type 'long int', but argument 8 has type 'size_t {aka unsigned int}' [-Wformat=]

Reported-by: Build bot for Mark Brown <broonie@kernel.org>
Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index aec60382e403..fdec1ab25dfd 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -54,7 +54,7 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 	ldev = priv->ldev;
 	BUG_ON(ldev == NULL);
 
-	dev_dbg(&priv->ldev->pldev->dev, "%s(priv = [%p], kcb = [%p], iov_base = [%p], iov_len = %ld) ldev = [%p]\n", __func__, priv, kcb, (void *)iov_base, iov_len, ldev);
+	dev_dbg(&priv->ldev->pldev->dev, "%s(priv = [%p], kcb = [%p], iov_base = [%p], iov_len = %zu) ldev = [%p]\n", __func__, priv, kcb, (void *)iov_base, iov_len, ldev);
 
 	acd = kzalloc(sizeof(*acd), GFP_KERNEL);
 	if (!acd) {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
