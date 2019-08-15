Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E36E38E498
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Aug 2019 07:49:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9472B88294;
	Thu, 15 Aug 2019 05:49:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1Bfo4STNP2yI; Thu, 15 Aug 2019 05:49:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C971488273;
	Thu, 15 Aug 2019 05:49:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3042C1BF3EF
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 05:49:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2D170203A9
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 05:49:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BQNgnWknhT8Q for <devel@linuxdriverproject.org>;
 Thu, 15 Aug 2019 05:49:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 941C220035
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 05:49:38 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id n190so868589pgn.0
 for <devel@driverdev.osuosl.org>; Wed, 14 Aug 2019 22:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1OqFapc9e33XbACkgO+1qaCXcygsIwUXz+fU/hzrbVM=;
 b=H/HZMCnUO2feKHwxaAF76oKE54jp+YUiE1s5eBJyb1YMXsZWTJP4gAajuFPUtuTEK4
 C0PfnGIhYspHoQ9L7xOcwws2myqXCSOEYHn1uElNpT9i2aFwVCZbgWF5FiRTtkPPIqfe
 Iu9y95udG9tggy79LS8sVyOuBgxJmNFnptRGdTffoaidK81yQlGwq34Yz7edf9bQV83y
 9Ga81JXxUzUTcCRgBq62QIrD9THB6Dzu8jQF/p017qSFSHCWCW4N7V+BRuBM2QqADE+w
 M0oV2vOjlofk76wORkxePdTSvZBdMCPtr2KrnLpt8oEqxv7kIMiw3W0Idosd8E9QFHLO
 fa6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1OqFapc9e33XbACkgO+1qaCXcygsIwUXz+fU/hzrbVM=;
 b=U9Vu8uGfjezZcxe1FWLajHxHayR826cmYqU6IbOBmcemr3i665fOHnTDRWFCtlJqYx
 kksNzzf7Y/ksvBlbOotz7GG7ciIl3RQhaegBp2OaWWDvhXmk8vqfs9XpqbXm3m6n8DgX
 FKM/ylOKLdl0sqVExi0rbUMBVPpFEX9ESaaxfnjto8HIDjErJb+HZwP7VBbbd5GH65vc
 /ssE1g/YvYfOxxi/R9sVrizQ6PhXQEZRQDqX3STlFwMIOa7fwbH5bK5HO8Yshmj6+brB
 i+T+Dt45YNJnXwYWqtYb1EnuLdfm4le06T0zFfme9V8ZReqQI+oYZDGNDZGjaYYIyqzu
 snZg==
X-Gm-Message-State: APjAAAXMR1NVOWvEy/9cnbu/ypthwjIHJxQ9viModFEvYaVjlSiQr0Mz
 mcwJIuSP437qYIKNzOQiT3c=
X-Google-Smtp-Source: APXvYqxe0Dzo/tsr3eXeLCEk35BpIVi/xvOtqCCODY1wnf2MlAjodiGdp1asNb3fJCHnb0MuRQcbkQ==
X-Received: by 2002:a17:90a:9cf:: with SMTP id 73mr769511pjo.90.1565848178252; 
 Wed, 14 Aug 2019 22:49:38 -0700 (PDT)
Received: from localhost.localdomain ([110.225.3.176])
 by smtp.gmail.com with ESMTPSA id ce7sm425391pjb.16.2019.08.14.22.49.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 14 Aug 2019 22:49:37 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: rspringer@google.com, toddpoynor@google.com, benchan@chromium.org,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH] staging: gasket: apex: Make structure apex_desc constant
Date: Thu, 15 Aug 2019 11:19:24 +0530
Message-Id: <20190815054924.643-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Static structure apex_desc, of type gasket_driver_desc, is used only as
an argument to the functions gasket_register_device() and
gasket_unregister_device(). In the definitions of both these functions,
their parameter is declared as const. Hence make apex_desc itself
constant to protect it from modification.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/gasket/apex_driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
index 464648ee2036..2973bb920a26 100644
--- a/drivers/staging/gasket/apex_driver.c
+++ b/drivers/staging/gasket/apex_driver.c
@@ -659,7 +659,7 @@ static void apex_pci_remove(struct pci_dev *pci_dev)
 	pci_disable_device(pci_dev);
 }
 
-static struct gasket_driver_desc apex_desc = {
+static const struct gasket_driver_desc apex_desc = {
 	.name = "apex",
 	.driver_version = APEX_DRIVER_VERSION,
 	.major = 120,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
