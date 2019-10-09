Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BA1D14E2
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 19:07:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2BABC88442;
	Wed,  9 Oct 2019 17:07:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8bXO73ve11Pa; Wed,  9 Oct 2019 17:07:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7C02E883EB;
	Wed,  9 Oct 2019 17:07:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2EFAC1BF2A9
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 17:07:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2B85520133
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 17:07:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JijF6vi3hjoJ for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 17:07:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 5E65F20008
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 17:07:11 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id r19so3452649wmh.2
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 10:07:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=wMt/20RYp2D24CkBqBwCHIn8mXh3zufzv+vPas0B+0k=;
 b=GjStgMNmlQcql2h79zEjsgzRpSMp111EWYQQpRfavS0uctuUzoLjyUfnFgBSKp1s41
 lmkJ0opea5nMrr8eKVZIiKs5eoiFx7LerCbgeIbLwLB3PZvsaNQQQAFtfGE1165AUyT5
 bD0A/PlgiavK3Ww4Z2KmvSyVSOjTG1gYevA/crgqjGL9N5zAxBoaSZmZGO6+iXSybp/L
 5oJruPPhUq9a9TPXzkCVLbC5N2mV1kV0O1YsZfkUKlXi9zr+nX3ohY9bXxkiyv5kJhJX
 8j+Kx/Z+WkQPgud1ZuEarSz+WU4Llh6+7X3M/6tVXUqVDE55FDhAILwOZl9rFzcJ11oG
 yDyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=wMt/20RYp2D24CkBqBwCHIn8mXh3zufzv+vPas0B+0k=;
 b=UQ+9CseO/mNYZ4thOlQW4ZGYtUIt96eqDskJkqaVdPy0GiIvbA4n3A2ckQppVqf3pa
 IyYT5wKNNT1qAnIe/UsS5dFQcIUy7riouRRw0kwp1W0PrLjGGyDf3V+NFYki7E0i91w0
 RFVH/dx6KcaA10szKJ8jCP5uFdpHmODTfHV7MybBK1Q5ZJ56g8+aLLuLl5jlkb3vPHBB
 cWPmJFfGlVNMNHTE1LvfWIHlr2a9oTLSunQq3MaNaFCp6gag4aXEk/aTKYNCBlnVjtms
 1P2dlh8ZkNzgiyaZgrev+9DVGAzk79YqIo3al5/l4ZobiO/TXGGMn4zyzg2w6GE9p3+j
 p9Lw==
X-Gm-Message-State: APjAAAXrSS74BJNKlwHUIscMJZebdzNv5EPCMibUNbCyqeSfw4PQpkFS
 WolVizCpfUyljMtLJ3WBR1c=
X-Google-Smtp-Source: APXvYqzMzjWTtK9YbbVjs2nZryVk+iRT4q3A0Pi5EV3RxZBL/OERsoSvJzdAh27UabSfuZmh38KHwA==
X-Received: by 2002:a1c:c90c:: with SMTP id f12mr3304633wmb.97.1570640829812; 
 Wed, 09 Oct 2019 10:07:09 -0700 (PDT)
Received: from wambui ([197.237.61.225])
 by smtp.gmail.com with ESMTPSA id y14sm4020193wrd.84.2019.10.09.10.07.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 10:07:09 -0700 (PDT)
Date: Wed, 9 Oct 2019 20:07:03 +0300
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: kpc2000: Remove unnecessary return variable
Message-ID: <20191009170703.GA2869@wambui>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unnecessary variable `val` in kp_spi_read_reg() that only holds
the return value from readq().
Issue found by coccinelle using the script:

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 3be33c450cab..6ba94b0131da 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -162,14 +162,12 @@ union kp_spi_ffctrl {
 kp_spi_read_reg(struct kp_spi_controller_state *cs, int idx)
 {
 	u64 __iomem *addr = cs->base;
-	u64 val;
 
 	addr += idx;
 	if ((idx == KP_SPI_REG_CONFIG) && (cs->conf_cache >= 0))
 		return cs->conf_cache;
 
-	val = readq(addr);
-	return val;
+	return readq(addr);
 }
 
 	static inline void
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
