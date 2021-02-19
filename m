Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DCE31FB0B
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 15:39:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8F0A2873B4;
	Fri, 19 Feb 2021 14:39:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RHKewaw9+cj0; Fri, 19 Feb 2021 14:39:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 03B608738D;
	Fri, 19 Feb 2021 14:39:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2E9281BF846
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 14:39:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 26821873BE
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 14:39:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W6XQ1sTanEXP for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 14:39:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2D3468738A
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 14:39:05 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id v62so7847375wmg.4
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 06:39:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xmA/KV9e2ZyA8lcC+WdH41u9opqrjZNkfCRBCxD5ZNk=;
 b=cxbgewZ+RPJiWcAUAkXPEywDNxuM8rjqCG/rwZgzCLyLrRfv1FEfE7mcUBTzM2cgux
 wNvTv2Xz4fM+1FFDjqyjPpAUX3chnK9DmpUOT0+VxEmlpj83QI9gLCRI4hmNcHRRsZyQ
 uE1LpkSUsRKqqmlWHRAyE1X2t40kROfatOfO5vc8BfDMJu1o2LKoHvjBvz3ZgdfqwIdr
 qg2qEua0ru1+Y7rtw2tuYQirWRLaQg4sIXrxUotnGMFa/eefhzaTH3RYq3OFGa9Rn6cI
 q+NfH/s94yKjL7UIklAt4RtgqIcvblhsDUurWlr9c8tXVhDxFT8dhVuAKm3A1EJETCIy
 fF3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xmA/KV9e2ZyA8lcC+WdH41u9opqrjZNkfCRBCxD5ZNk=;
 b=Z1GK13MLrNjIK34+boLm038KuX/smC8vXiJISaMBQUCm7fVbWqV/X7SB+i6vEmwBJH
 FQILjIWiTAc9sWiZ5mvKZIMITV+uEMIt0gHsHwBSbuan4yguKlIDtITDdIo5iEx9ak4N
 K6zJYWy89/ApO56NBRdyGONHJjN9uACp5zyDX3qYEQ+/oNcxQq68jaGsQB5QQF3hPxMY
 qAXILJIR6DyBxitxEoaBEz93gvJvHH3ZGqF2IW9nfUJgzXkG3PLgKoB3v7l+bnEoc58G
 ASxkSfEyh/02LTZk4fJRWM7WZwp7H+mzQvpWc7LjPNAmnCVUStyNVS99LIjswV2Xpost
 Xn/A==
X-Gm-Message-State: AOAM533plzDXeQJx5MEPnznkdhdPe4ibhuqBhLLxQK7Lda/AHSC017xH
 0T/n/3T7GZKwexQQyGjhEQc=
X-Google-Smtp-Source: ABdhPJyBOJobgDyI4nY0tMF/lTWSKS2eZrzryQBmz5QcUFuGrzd6EPuqh8J63on+3nD3BuilAYvLgw==
X-Received: by 2002:a05:600c:3588:: with SMTP id
 p8mr8423631wmq.71.1613745543530; 
 Fri, 19 Feb 2021 06:39:03 -0800 (PST)
Received: from ubuntudesktop.lan (205.158.32.217.dyn.plus.net.
 [217.32.158.205])
 by smtp.gmail.com with ESMTPSA id m23sm11530694wmc.31.2021.02.19.06.39.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 06:39:03 -0800 (PST)
From: Lee Gibson <leegib@gmail.com>
To: mchehab+huawei@kernel.org
Subject: [PATCH] staging: hikey9xx: Fix space tab style warnings
Date: Fri, 19 Feb 2021 14:38:51 +0000
Message-Id: <20210219143851.83672-1-leegib@gmail.com>
X-Mailer: git-send-email 2.25.1
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
 linux-kernel@vger.kernel.org, Lee Gibson <leegib@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the checkpatch warnings such as:

hi6421-spmi-pmic.c:51: WARNING: please, no space before tabs

Signed-off-by: Lee Gibson <leegib@gmail.com>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index 4ebcfea9f3bf..626140cb96f2 100644
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
@@ -48,9 +48,9 @@ enum hi6421_spmi_pmic_irq_list {
 /*
  * The IRQs are mapped as:
  *
- * 	======================  =============   ============	=====
- *	IRQ			MASK REGISTER 	IRQ REGISTER	BIT
- * 	======================  =============   ============	=====
+ *	======================  =============   ============	=====
+ *	IRQ			MASK REGISTER	IRQ REGISTER	BIT
+ *	======================  =============   ============	=====
  *	OTMP			0x0202		0x212		bit 0
  *	VBUS_CONNECT		0x0202		0x212		bit 1
  *	VBUS_DISCONNECT		0x0202		0x212		bit 2
@@ -66,7 +66,7 @@ enum hi6421_spmi_pmic_irq_list {
  *	SIM0_HPD_F		0x0203		0x213		bit 3
  *	SIM1_HPD_R		0x0203		0x213		bit 4
  *	SIM1_HPD_F		0x0203		0x213		bit 5
- * 	======================  =============   ============	=====
+ *	======================  =============   ============	=====
  */
 #define SOC_PMIC_IRQ_MASK_0_ADDR	0x0202
 #define SOC_PMIC_IRQ0_ADDR		0x0212
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
