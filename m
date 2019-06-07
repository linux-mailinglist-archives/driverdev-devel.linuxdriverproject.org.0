Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 783A0383FC
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jun 2019 08:01:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4E80F86BC9;
	Fri,  7 Jun 2019 06:01:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kNjL0ed1340t; Fri,  7 Jun 2019 06:00:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C756D869B4;
	Fri,  7 Jun 2019 06:00:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 43C411BF2C1
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 06:00:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3BC83204A4
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 06:00:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W-Xg2st66DRG for <devel@linuxdriverproject.org>;
 Fri,  7 Jun 2019 06:00:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 59B852035C
 for <devel@driverdev.osuosl.org>; Fri,  7 Jun 2019 06:00:49 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id x2so100596qtr.0
 for <devel@driverdev.osuosl.org>; Thu, 06 Jun 2019 23:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=dWh46ehTtF7XrRzrQS4UMj2mqF99ZWlKh15WhZd7opk=;
 b=VbtRyWfh0kvCsghw4vQkoSYYEJBJkt40e8F3tOl//OUPrA30px/R4n4WjhT78ROsUA
 RfCJm1xFS7KHaK1mntORy62MwR9gLl8grdBsBe5RP8LuwhaG+HIZn2khfCURtIO7AZxx
 cCs5A53qGsXNDKFkG3YP/o8ywR7izGCE+VyssZEct9M+fZT1mUlT4kQkiioRVFvt7uQv
 fUoNYVJPIClMm9wdHC4KYfsNYkVHqRKQyguBFf80v8ppKP1kUYsC8bT0o62Yzz91avTm
 wvluBd/3/FkBJ1D+ZpnQmXK/MLJ4DdSLBCrLaXjSIBQU5MLCMoOHMvZV6tK2bNZtdvPp
 tSig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=dWh46ehTtF7XrRzrQS4UMj2mqF99ZWlKh15WhZd7opk=;
 b=kREQhuLLtPQBHdJ9Yt3w2KpZzPPk3aSw1LcTTPAU+hOGFgY64Q3Tzlr+pMSG00jaGp
 BaDKZgFR+ZC5h0zVSg6KRvHFFxvV+o3QVdWlEZ8xRHhxyfsdFs9TeZnGPwjZSrgi5zNH
 3PZYuRMQurMMOh+KquguUjkcJwzQ5z1qOdpMRpSNxW3Oo2LAhGuBM13+mHXRWXPOjmGy
 EWTdeSdF2dNmbDKMAKLW56B4CUa2Jo4aY77XvuMGuTBpdWpAEa2LmZcqH0vZmvRPNpde
 EfwIFXKDbG8Eq9fP99zlHviHW+dhUsPlyIhiyqy/oINjDB8NV8VS/+KDVnKbbJf4Akwz
 GQBg==
X-Gm-Message-State: APjAAAVIIAUpGkOMOO/2d36371cncPk9+CJEV2cm4LCaWHZ3ePw+Hq1t
 3gxpA8bUp/Ezs0pGUSH22II=
X-Google-Smtp-Source: APXvYqzzmpJUF9IoRPMUxjasE/Eq5+9Yg1niCvXE8klMRI1pm12EcDjmShlXCjNiKSzkC3RmZoPNvA==
X-Received: by 2002:aed:3ed5:: with SMTP id o21mr42958105qtf.369.1559887248462; 
 Thu, 06 Jun 2019 23:00:48 -0700 (PDT)
Received: from ROOT.localdomain (modemcable124.134-176-173.mc.videotron.ca.
 [173.176.134.124])
 by smtp.gmail.com with ESMTPSA id 39sm633787qtx.71.2019.06.06.23.00.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 23:00:48 -0700 (PDT)
From: Maxime Desroches <desroches.maxime@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: vc04_services : vchiq_core: Fix a brace issue
Date: Fri,  7 Jun 2019 01:59:45 -0400
Message-Id: <20190607055945.21769-1-desroches.maxime@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Maxime Desroches <desroches.maxime@gmail.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove braces in a single line if statement in the vchiq_core.c file

Signed-off-by: Maxime Desroches <desroches.maxime@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 44f0eb64952a..0dca6e834ffa 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -3100,9 +3100,8 @@ VCHIQ_STATUS_T vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle,
 			       QMFLAGS_IS_BLOCKING |
 			       QMFLAGS_NO_MUTEX_LOCK |
 			       QMFLAGS_NO_MUTEX_UNLOCK);
-	if (status != VCHIQ_SUCCESS) {
+	if (status != VCHIQ_SUCCESS)
 		goto unlock_both_error_exit;
-	}
 
 	queue->local_insert++;
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
