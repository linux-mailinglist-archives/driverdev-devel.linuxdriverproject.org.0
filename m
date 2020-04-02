Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F67919BB54
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 07:36:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 91B8988031;
	Thu,  2 Apr 2020 05:36:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G6pbwHygZMuI; Thu,  2 Apr 2020 05:36:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1EC6A87EBB;
	Thu,  2 Apr 2020 05:36:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B72051BF863
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 05:36:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B18DB87EC0
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 05:36:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 26th7a9BrNLG for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 05:36:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2203F87EBB
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 05:36:26 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id r14so1208752pfl.12
 for <devel@driverdev.osuosl.org>; Wed, 01 Apr 2020 22:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IAh7UMloMAsOoi/+PgYpkgLYca+CmRu3t0XReUuJ4tk=;
 b=emWiWxRZn9S+bqaR9D56ZUCgLabBF8zrQYPHzSlVMuFNfqroqPigGnFZbaSqLcXyia
 c75i0fPsGyIvSYmYGik6oKogT8lCvzw6MF6vNvuArNMgLwXSCPXd6vJ1+6lrFbqDrdNm
 26kdg/wkDTiigvjYGuC7badIIixE3CDwpHWxsG499qyXBYr3ZrTff8aivmSgcN4zbfGA
 /2tiOIY5x2A/T66ptBcrGN0p43qo8hJr9nf6iyluWyitOIm6DLDQHEz4VAtibqQWLKol
 s6QY2c8aH8nyUGHf/WO8b5ZquAvsNSoBfVHGTDCqkNfVb9ti10q2P++hOTtw6nFVpueJ
 oaGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IAh7UMloMAsOoi/+PgYpkgLYca+CmRu3t0XReUuJ4tk=;
 b=rLv06FTklL0PDXlHS4WCVQq/tic4QE/nVX3F5djrDRR+b1uKPul1sdvk7dhtE2k2wG
 zIA6O8cq2NFzTsKi8bc6UBEGEq1YiQP6CZ3I82K7Kscd8SnxduWu9XLukxCFPO+aqNr6
 TppPlChJtKSwgTJ3eonXpc3dugIzZj5nrFMDjdnIAocB6wdYQj8HjGfimJp3xBEIQa7w
 e+hGuvaYS3+8d9j5Tvc0EYNtT7poaW12u1l742Xc8Y93Rw5FVwAYjXuyWmKQGPRgDBD7
 azhb+SUP9Hijan+0r7bN8lZXuKNVNIcp1cEx77+smTI1ajMFRbELKDPckZlI3Iu3cA43
 AUew==
X-Gm-Message-State: AGi0PuZmqKhMREjzczhIAD+MVA9r0sKHfewI2A6cmbFTULK7XhQ6fywV
 jCRn35rhR6hkctjHV1/+a5E=
X-Google-Smtp-Source: APiQypLBx8wymvTZN5pVSUzPbgkNr6Uo8Oq28moaA64ap2WlXHGMyFFgshdRpwK7NEWGTEFIlhH3/g==
X-Received: by 2002:a65:5249:: with SMTP id q9mr1774384pgp.150.1585805785687; 
 Wed, 01 Apr 2020 22:36:25 -0700 (PDT)
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id y28sm2863136pfp.128.2020.04.01.22.36.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Apr 2020 22:36:25 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com, Rob Springer <rspringer@google.com>,
 Todd Poynor <toddpoynor@google.com>, Ben Chan <benchan@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] staging: gasket: Fix 4 over 80 char warnings
Date: Wed,  1 Apr 2020 22:36:16 -0700
Message-Id: <20200402053617.826678-2-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200402053617.826678-1-jbwyatt4@gmail.com>
References: <20200402053617.826678-1-jbwyatt4@gmail.com>
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
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix 4 over 80 char warnings by caching long enum values into local
variables.

All enums are only used once inside each function (and once inside
the entire file).

Reported by checkpatch.

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/gasket/apex_driver.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
index 46199c8ca441..f48209ec7d24 100644
--- a/drivers/staging/gasket/apex_driver.c
+++ b/drivers/staging/gasket/apex_driver.c
@@ -253,6 +253,8 @@ static int apex_get_status(struct gasket_dev *gasket_dev)
 /* Enter GCB reset state. */
 static int apex_enter_reset(struct gasket_dev *gasket_dev)
 {
+	int idle_gen_reg = APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER;
+
 	if (bypass_top_level)
 		return 0;
 
@@ -263,7 +265,7 @@ static int apex_enter_reset(struct gasket_dev *gasket_dev)
 	 *    - Enable GCB idle
 	 */
 	gasket_read_modify_write_64(gasket_dev, APEX_BAR_INDEX,
-				    APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER,
+				    idle_gen_reg,
 				    0x0, 1, 32);
 
 	/*    - Initiate DMA pause */
@@ -395,11 +397,12 @@ static int apex_device_cleanup(struct gasket_dev *gasket_dev)
 	u64 scalar_error;
 	u64 hib_error;
 	int ret = 0;
+	int status = APEX_BAR2_REG_SCALAR_CORE_ERROR_STATUS;
 
 	hib_error = gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
 				       APEX_BAR2_REG_USER_HIB_ERROR_STATUS);
 	scalar_error = gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
-					  APEX_BAR2_REG_SCALAR_CORE_ERROR_STATUS);
+					  status);
 
 	dev_dbg(gasket_dev->dev,
 		"%s 0x%p hib_error 0x%llx scalar_error 0x%llx\n",
@@ -584,6 +587,8 @@ static int apex_pci_probe(struct pci_dev *pci_dev,
 	ulong page_table_ready, msix_table_ready;
 	int retries = 0;
 	struct gasket_dev *gasket_dev;
+	int page_table_init = APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE_INIT;
+	int msix_table_init = APEX_BAR2_REG_KERNEL_HIB_MSIX_TABLE_INIT;
 
 	ret = pci_enable_device(pci_dev);
 	if (ret) {
@@ -606,10 +611,10 @@ static int apex_pci_probe(struct pci_dev *pci_dev,
 	while (retries < APEX_RESET_RETRY) {
 		page_table_ready =
 			gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
-					   APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE_INIT);
+					   page_table_init);
 		msix_table_ready =
 			gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
-					   APEX_BAR2_REG_KERNEL_HIB_MSIX_TABLE_INIT);
+					   msix_table_init);
 		if (page_table_ready && msix_table_ready)
 			break;
 		schedule_timeout(msecs_to_jiffies(APEX_RESET_DELAY));
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
