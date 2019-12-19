Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 276CE1267E6
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Dec 2019 18:21:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1179887035;
	Thu, 19 Dec 2019 17:21:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H5SlKvVbsNVF; Thu, 19 Dec 2019 17:21:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 63BBB86FB6;
	Thu, 19 Dec 2019 17:21:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0BE021BF2C7
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 17:21:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 088F787FEE
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 17:21:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iX3Fj6f5S+NN for <devel@linuxdriverproject.org>;
 Thu, 19 Dec 2019 17:21:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mta-p8.oit.umn.edu (mta-p8.oit.umn.edu [134.84.196.208])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5DB9187FED
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 17:21:23 +0000 (UTC)
Received: from localhost (unknown [127.0.0.1])
 by mta-p8.oit.umn.edu (Postfix) with ESMTP id 47dzDy6P8nz9vcwn
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 17:21:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p8.oit.umn.edu ([127.0.0.1])
 by localhost (mta-p8.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kgfEwKlvsRCO for <devel@driverdev.osuosl.org>;
 Thu, 19 Dec 2019 11:21:22 -0600 (CST)
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com
 [209.85.219.198])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mta-p8.oit.umn.edu (Postfix) with ESMTPS id 47dzDy5NTMz9vcwr
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 11:21:22 -0600 (CST)
Received: by mail-yb1-f198.google.com with SMTP id a6so300109ybn.0
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 09:21:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umn.edu; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dZet5/8oAF/RkVe8aOI8XLGZBrvCqMDHvpE19fg8kTA=;
 b=HcVWnhPGj57k0g+tWAn2Av/8Bukx9CzCkdb+BN1itEFxQINnpef0Jd1yXfwSC9aAf8
 yRH9lEj8qOgs0MS/Ta7ppmyMwGgn282Rzvq5DVm9Lux3/EH3ZoJlGvY4lSlea+Wtya3a
 eCGR/9Zc0H7rlQv6d4wZcHU8IVBL81eHfL8Ufs7hlLEXTiXKOCy+LXM9KTGMRuVnRj27
 jx/kYJa6ik9/UtMZu/8QArDjcLD0l6Nze95zhbHxHnFvMz1aMHKbDa0IXSwURWskQUCW
 +Sormf5EHb8z/RnLAbFmnEaqY5/v1/Z6oM0CYQbX16+D/5HceDtXt955S5lv9F89VoFG
 PDCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dZet5/8oAF/RkVe8aOI8XLGZBrvCqMDHvpE19fg8kTA=;
 b=sj8pSmRjDcBiL/o06j9HHUkbmLwOBr73Rwb/JMMKiXmTjO+DLidh+ZyMbl0jsDMg56
 JS8QnUFeuKRhNiLc/IiM11tBDAQHov93PJwGseudkLF5iZTm9Q9FsZbRdZ2WpLx2Qrcv
 7acD5WmfvtmFYOd9h05XGkBEO7IJAipayH2NGVaxvpTZwzhtRyOOG06nX4bSyrusrq0k
 ptAM+hzPG4FleHUJCfmaZ2uLtyUmS++v2whLT3AGpt8Tm4hEW/nHrMLEph92bgBHJ8XR
 Al9V6hXq6YL6jQGLip4hLI6k0vCRg2HFuFrRG367Gv0mK96XELwB+GkTyxBS3QFIBecY
 Txrg==
X-Gm-Message-State: APjAAAUbbhr0fhoJOVisW94V2dEASHDMyVwEvg3POf52X0ZD5Qp/wb9C
 8rzUCU+kq012DvnQALefFWn8Vk6BEPwNDkdRailNSUzNfIeICxtrkOdXG3HS0SEsHR+u9AOxVgx
 gP2mqy0qgO2X0ykKzrqkBVDELrA==
X-Received: by 2002:a81:8451:: with SMTP id u78mr6848987ywf.127.1576776082217; 
 Thu, 19 Dec 2019 09:21:22 -0800 (PST)
X-Google-Smtp-Source: APXvYqxm6MhF/Zip53QgVRHuvPGYfTUuzQeQ5ipzeYUp0KU1vA33iZSd8Cc0ZwbsC2mIH4Cj9Bl8HA==
X-Received: by 2002:a81:8451:: with SMTP id u78mr6848962ywf.127.1576776081989; 
 Thu, 19 Dec 2019 09:21:21 -0800 (PST)
Received: from cs-u-syssec1.dtc.umn.edu (cs-u-syssec1.cs.umn.edu.
 [128.101.106.66])
 by smtp.gmail.com with ESMTPSA id h68sm2696217ywe.21.2019.12.19.09.21.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 09:21:21 -0800 (PST)
From: Aditya Pakki <pakki001@umn.edu>
To: pakki001@umn.edu
Subject: [PATCH v3] staging: kpc2000: remove unnecessary assertions in
 kpc_dma_transfer
Date: Thu, 19 Dec 2019 11:21:11 -0600
Message-Id: <20191219172118.17456-1-pakki001@umn.edu>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, Vandana BN <bnvandana@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Max Filippov <jcmvbkbc@gmail.com>,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In kpc_dma_transfer(), the assertion that priv is NULL and priv->ldev
is NULL, are never satisfied. The two callers of the function,
dereference the fields before the function is called. This patch
removes the two BUG_ON calls.

Signed-off-by: Aditya Pakki <pakki001@umn.edu>
---
v2: Also remove BUG_ON call for ldev, suggested by Greg.

v1: Replace the recovery code by removing the assertion, as suggested
by Greg Kroah-Hartman.
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index cb52bd9a6d2f..40525540dde6 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -49,9 +49,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 	u64 dma_addr;
 	u64 user_ctl;
 
-	BUG_ON(priv == NULL);
 	ldev = priv->ldev;
-	BUG_ON(ldev == NULL);
 
 	acd = kzalloc(sizeof(*acd), GFP_KERNEL);
 	if (!acd) {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
