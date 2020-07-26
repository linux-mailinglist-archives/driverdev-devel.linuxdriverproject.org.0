Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A98822DF6B
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 15:07:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7C07721549;
	Sun, 26 Jul 2020 13:07:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 84TRxDFtflzU; Sun, 26 Jul 2020 13:07:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1EF2E20796;
	Sun, 26 Jul 2020 13:07:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F02E31BF37C
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 13:07:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D45C1204E2
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 13:07:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eAvt2JlvahVh for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 13:07:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 2D971204AC
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 13:07:38 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id e22so705331pjt.3
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 06:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Lx46SUe0W2Aa0tmKClb3XrT13PonUJQyizX9DXZgEss=;
 b=gy6mxoDKvbFarBsD+8qVrW8HMFoJv1Adp669APeIoWSZ3X96mpW9HfxWdi5YtAEOGn
 hassBkMXYUFMlKlTuHdKBMK90sWdaaV0jv/r834xn/Oy7cI7baajJt+S/GlghFwjkxyU
 FZOBiWOPVHAoVAA2ea0awPRHwVW684fOivKp78s+2T/qAr9z1xZjOxALRPbcwIh/vygi
 vNrB/ps+k6gtP9QqttKx5p8hoJoQHcZyZLYHAFw+RLsYNS9Mf8lOf3tHr4JhHge3TXxV
 5GxD8XKynxlJvdyTcOWeIeZ3xw92L8aQPktMabUA3mB3YXS+vzTb6jt3OrXvj80Focnn
 o6Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Lx46SUe0W2Aa0tmKClb3XrT13PonUJQyizX9DXZgEss=;
 b=l2kdH21nuELNQRo2HzKfKXsyWGWlZPs+hRq/4oIrNUeJ1lEdADn4Byp3XYMGI8z9/a
 WXts50u7nsYgcKw70BqG1eUVZ2fynZLPLtccMOVtLPH026W+zytvC+4A0Obj+eqjmBza
 fMrBBU7ZIhMSH0pbjvcP1U3QlrbF5QDmvzAMZuC3enWeq15eMNZp1/r3TE8MOLFGtR8v
 vlhvVrU096d0zI9O65lhyQMgsTxwFlz5wSpm5mpZlwaMOnhcqxMc8gC+wnmhVp/+PL8b
 FGs8Sjlde+PwVgd6E8r3AN/TZmAN8AJ5JBIw+DH5g9UYh/BH70Ip5D9YISaeQ9QA/4Up
 QxQw==
X-Gm-Message-State: AOAM531hRMSbNVgDEji5knQoETn3Zf5uw0nGesvtvVrdLDPQ7B07qsG6
 iFZO4PkE6lUZ4os5hh4+3Oqp1/rpDZo=
X-Google-Smtp-Source: ABdhPJyW/HCzmZLpXYi7hPoqQcb9Gq2KXp418mAeeJ7QYOKLf7sMTGQ2gs0Un6snEfoNjUjqobUdZA==
X-Received: by 2002:a17:90a:df8f:: with SMTP id
 p15mr14940734pjv.164.1595768857731; 
 Sun, 26 Jul 2020 06:07:37 -0700 (PDT)
Received: from localhost.localdomain ([106.51.110.149])
 by smtp.gmail.com with ESMTPSA id ci23sm11119938pjb.29.2020.07.26.06.07.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Jul 2020 06:07:36 -0700 (PDT)
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: wfx: Remove unnecessary return variable
Date: Sun, 26 Jul 2020 18:37:20 +0530
Message-Id: <20200726130720.12993-1-sylphrenadin@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: julia.lawall@inria.fr, devel@driverdev.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove redundant variable in file fwio.c used for returning value.

Issue was found using Coccinelle:

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
---
 drivers/staging/wfx/fwio.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wfx/fwio.c b/drivers/staging/wfx/fwio.c
index 206c6cf6511c..22d3b684f04f 100644
--- a/drivers/staging/wfx/fwio.c
+++ b/drivers/staging/wfx/fwio.c
@@ -397,10 +397,9 @@ int wfx_init_device(struct wfx_dev *wdev)
 	ret = load_firmware_secure(wdev);
 	if (ret < 0)
 		return ret;
-	ret = config_reg_write_bits(wdev,
-				    CFG_DIRECT_ACCESS_MODE |
-				    CFG_IRQ_ENABLE_DATA |
-				    CFG_IRQ_ENABLE_WRDY,
-				    CFG_IRQ_ENABLE_DATA);
-	return ret;
+	return config_reg_write_bits(wdev,
+				     CFG_DIRECT_ACCESS_MODE |
+				     CFG_IRQ_ENABLE_DATA |
+				     CFG_IRQ_ENABLE_WRDY,
+				     CFG_IRQ_ENABLE_DATA);
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
