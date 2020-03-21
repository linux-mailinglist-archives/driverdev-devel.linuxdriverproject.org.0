Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C37318E52A
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 23:25:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E34F8869E3;
	Sat, 21 Mar 2020 22:25:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VRRz4z5yZLvs; Sat, 21 Mar 2020 22:25:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EDBB186640;
	Sat, 21 Mar 2020 22:25:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D2DE51BF5A6
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 22:25:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CF17C20345
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 22:25:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ca+MX3xfmsSp for <devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 22:25:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 41BB220335
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 22:25:21 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id h72so3167562pfe.4
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 15:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mAhmgr201F3GjjWTmMCpMYY5Zc1UTBtq2w4m7TVaIeU=;
 b=O+2HJ7IEtf1noDrpRDmSJCnPcn+fcsUAQCahss8+FtCDyzZy0Sz6nWT9ZDz5hvFxpC
 AWjGFmKcOcOcxMnRV2Y8eEJhUzcQ3MDQ2qePOGDndplF29nInBW8XdIw26zJGKchzMT+
 XUflKsB6rxWFFIAQ+D3jBHXqTQ0aOz3nSP8C6+jJi2P81inIhv9re1/eA5g3+8TxmCSN
 T41SMtzn3maq9Q1P3JZEjwGAXeH4BGltcns+9lhvetm0NpjnIwvdq763uc0HcT04+Kmd
 Xbl1TB+7dNGeWPRFqt90d6Z48lWY0jIHleuNBpjevZvEl0aF39hCx+dhyoSuqewEw/C2
 x4Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mAhmgr201F3GjjWTmMCpMYY5Zc1UTBtq2w4m7TVaIeU=;
 b=Uln/qLGEAQdSKLTJ7rAjDjRgO3JQLybfIqrPrv2Wp154Xd43Q1HZe00QEkVwtoDwum
 zgMBvbcl/4205ednJgl8KghAkO9ZdKH+L86/kFTAKy53ZrPS9HFyuvikW/ZOwqisrp7c
 UNdUZ41FPRJLwoDzfAZffGTH3/nr3S6P6dujZCikelC++DaiOSweTHHKykyzzzn9XXiW
 zcMo5A5olTGQo8jYopcQSHSAtAn99ye9sEPpq+F4DqKdVM1sJNPZeORgcD2kkDfIFA1u
 ePh7brFF3SF6vrOTC+Ul+/sZM2Vy3SI3VBdlD8AW0OhGnZxY2uB4oJ4Z4dKXaX++iZ/M
 2iGw==
X-Gm-Message-State: ANhLgQ2xpVDezfz1GqE0ysQJ6PWMcn+68Dw2DftGZGSxtDJpIPZVIRZf
 SueL5YxUx7VGv8V2VF1bi1k=
X-Google-Smtp-Source: ADFU+vsyEd7bpVl93Yp8/Rjb/7dX7rkaj1rjklbifa7zkg3PLPJF9mzbjZHsZjebqCF2UvKGHogovQ==
X-Received: by 2002:a63:7416:: with SMTP id p22mr13500492pgc.32.1584829520646; 
 Sat, 21 Mar 2020 15:25:20 -0700 (PDT)
Received: from localhost.localdomain ([113.193.33.115])
 by smtp.gmail.com with ESMTPSA id x11sm6998244pgq.48.2020.03.21.15.25.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Mar 2020 15:25:20 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel] [PATCH 05/11] Staging: rtl8188eu: pwrseqcmd: Add
 space around operators
Date: Sun, 22 Mar 2020 03:55:13 +0530
Message-Id: <4847208f6bc4ef05b3f685e390dea6b2fc4b4464.1584826154.git.shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1584826154.git.shreeya.patel23498@gmail.com>
References: <cover.1584826154.git.shreeya.patel23498@gmail.com>
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
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add space around operators for improving the code
readability.
Reported by checkpatch.pl

git diff -w shows no difference.
diff of the .o files before and after the changes shows no difference.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---

shreeya@Shreeya-Patel:~git/kernels/staging$ git diff -w drivers/staging/rtl8188eu/hal/pwrseqcmd.c
shreeya@Shreeya-Patel:~git/kernels/staging$

shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$ diff pwrseqcmd_old.o pwrseqcmd.o
shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$

 drivers/staging/rtl8188eu/hal/pwrseqcmd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/pwrseqcmd.c b/drivers/staging/rtl8188eu/hal/pwrseqcmd.c
index 249cbc375074..77edd7ad19a1 100644
--- a/drivers/staging/rtl8188eu/hal/pwrseqcmd.c
+++ b/drivers/staging/rtl8188eu/hal/pwrseqcmd.c
@@ -85,7 +85,7 @@ u8 rtl88eu_pwrseqcmdparsing(struct adapter *padapter, u8 cut_vers,
 				if (GET_PWR_CFG_VALUE(pwrcfgcmd) == PWRSEQ_DELAY_US)
 					udelay(GET_PWR_CFG_OFFSET(pwrcfgcmd));
 				else
-					udelay(GET_PWR_CFG_OFFSET(pwrcfgcmd)*1000);
+					udelay(GET_PWR_CFG_OFFSET(pwrcfgcmd) * 1000);
 				break;
 			case PWR_CMD_END:
 				/* When this command is parsed, end the process */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
