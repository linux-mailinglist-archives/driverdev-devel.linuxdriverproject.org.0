Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 11EE7314CEF
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 11:28:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9FEE087336;
	Tue,  9 Feb 2021 08:20:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dxAt+BUHoUcV; Tue,  9 Feb 2021 08:20:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8F29F8669A;
	Tue,  9 Feb 2021 08:20:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 674371BF282
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 08:20:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 63DBB872ED
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 08:20:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6FPta3g1StHl for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 08:20:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
 [209.85.210.170])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D44CD872D4
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 08:20:02 +0000 (UTC)
Received: by mail-pf1-f170.google.com with SMTP id w18so11415630pfu.9
 for <devel@driverdev.osuosl.org>; Tue, 09 Feb 2021 00:20:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zU44lqKZfuZa5WJ6YSMKYxpCeD9c1eY+nex3tkGFwBk=;
 b=qPqMf0zWe3zyWdr2Qchr0jORtbXnV5uaYbMTXt4WnFJcks169V9aehOzLsJWXp8f+G
 D/aOWKNpwGItLVT8ycseObdD5QUJurC9iXsdyJo37R5oq+/m9bV48/bXVnrFLcyIYe+Q
 jq++6zfErycPWeP0hncWq7qYYt/cAqXx+IYSbVKq+hdQMHYNSIRRexgG6cnDpzKMP61T
 KcQUIHsTuA3ZsNfoHgoIvlL7fFz5htuVtKxG/f8NFdZ63AqtkwPPgtkrEIViH0sajmH/
 JguR0+J9Q77vXwWpTZL4xwY1C091DmZHC24f6OiSwyJXqQ77mgB0EvsgFeCOwedF7gxk
 v5Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zU44lqKZfuZa5WJ6YSMKYxpCeD9c1eY+nex3tkGFwBk=;
 b=Yd25QsatXEOVEYEHufrGw7OC1u28pIwxk/cje3EXuaJ9F17zAdqeH21ahsI7A0DBet
 e+Q1QqwgS5cCklJf/i9j7opcI0L2Uglp9WtUQvw55rClvbqxyr/4gzVZ7tNJhVD/Z9QC
 UMIaIWW11Vwq/sInufFqEFetm79bwj7AluTAqLoNKLjDdVcxDpL0rfiMckdddCyneQZU
 R/zXtV5UnVi+9Xr1jJowvEYxdpw/k/9en2kElRTDyw8O1ner+C3VpSVFwv7i4pqS0qYe
 +lGTz1kKbthppIel9oFFgfuSdpq/8pCNSwG7PmouhWoOpiqN9OXPDaIsMaNEv4c6z4nw
 l90A==
X-Gm-Message-State: AOAM533T6mlcTdHozJZnrmYeExT7/zSMek6RKN2wIk7Lb5IHPSsn5mqL
 9QZvvu2b5iMc6iC/RIraEUg=
X-Google-Smtp-Source: ABdhPJwVDNTXY2OqlNwQ3lJEh+Ycf5UAfMfcq0D5qrhteeMDLM375h6ln369yMQOP/WZO4O6nqqDog==
X-Received: by 2002:a63:c60b:: with SMTP id w11mr2769704pgg.215.1612858802414; 
 Tue, 09 Feb 2021 00:20:02 -0800 (PST)
Received: from localhost.localdomain ([106.198.21.213])
 by smtp.gmail.com with ESMTPSA id y16sm22011002pfb.83.2021.02.09.00.19.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 00:20:01 -0800 (PST)
From: Atul Gopinathan <leoatul12@gmail.com>
To: mchehab+huawei@kernel.org
Subject: [PATCH v2 1/2] staging: hikey9xx: change spaces to tabs
Date: Tue,  9 Feb 2021 13:49:34 +0530
Message-Id: <20210209081935.3084-1-leoatul12@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Atul Gopinathan <leoatul12@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the following type of checkpatch error:
"ERROR: code indent should use tabs where possible"

Signed-off-by: Atul Gopinathan <leoatul12@gmail.com>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c     | 2 +-
 drivers/staging/hikey9xx/hi6421v600-regulator.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index 2301f4fcd48d..9c5e113e1a81 100644
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
@@ -177,7 +177,7 @@ static void hi6421_spmi_pmic_irq_init(struct hi6421_spmi_pmic *ddata)
 
 	for (i = 0; i < HISI_IRQ_ARRAY; i++)
 		regmap_write(ddata->regmap, SOC_PMIC_IRQ_MASK_0_ADDR + i,
-				        HISI_MASK);
+					HISI_MASK);
 
 	for (i = 0; i < HISI_IRQ_ARRAY; i++) {
 		regmap_read(ddata->regmap, SOC_PMIC_IRQ0_ADDR + i, &pending);
diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
index c801bb840962..f6a14e9c3cbf 100644
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
@@ -106,7 +106,7 @@ static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
 
 	ret = regmap_update_bits(pmic->regmap, rdev->desc->enable_reg,
 				 rdev->desc->enable_mask,
-			         rdev->desc->enable_mask);
+				 rdev->desc->enable_mask);
 
 	/* Avoid powering up multiple devices at the same time */
 	usleep_range(rdev->desc->off_on_delay, rdev->desc->off_on_delay + 60);
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
