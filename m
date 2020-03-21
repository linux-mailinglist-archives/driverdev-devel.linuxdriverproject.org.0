Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B45DD18E52F
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 23:26:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5F8D9204D3;
	Sat, 21 Mar 2020 22:26:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8RTz+ZaHLnH9; Sat, 21 Mar 2020 22:26:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EAF5420335;
	Sat, 21 Mar 2020 22:26:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B76681BF5A6
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 22:26:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B2652878A0
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 22:26:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6fXGxuS4HA28 for <devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 22:26:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 41F80876E7
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 22:26:49 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id z65so5371482pfz.8
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 15:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ywrv/YxqmMIS6BbmjMP+A5ZaWbyGuTGBex2n9c9Zhpo=;
 b=Q/gqYFf3q1Q4c4SAAakxM39b/dJ1ZQeT2PdRHX61uOkvXmYEfy0V0XbtJ5enT/mVUr
 mJLA/cAp2VR6cyo0jHgzv4iMGgjMHB2EI78f94C2tYMB54Y96bu1OM/ROxcy0NtcNVJy
 +pwTWt7MKFbQAOBegPYhA9pbvRPZb9ERn10EyJBksXlBEzLWclme4MnWYCN6Q4qDo9Y0
 4izSpJnihHZeqbCDwBFjpCzYqjEx1CduMELQ05cvwQvCGtfR7VkWdfBCEgHFO1dmTZJk
 N1ow+1fQgOLv9b2gPzAtEh2sAWgHfr130YbZcMmFAnClc4yNxo1ItgoVyQzR2RNbzmEg
 CPzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ywrv/YxqmMIS6BbmjMP+A5ZaWbyGuTGBex2n9c9Zhpo=;
 b=fTrA512ZmchmMkQioH2+IhFrXJBQd0aiB+Q/QLh2bfswrTsKE5buIaERcmk5laiuxq
 35Uw3R/AXTtA5+6hei/j91mLhzR3xa1BMgWQckKVxHANWKa6ulM68AYv85yuu5Pxlxdu
 c4OJbcvTKe4ZS8ot3Zu5S3/uCnHmSytveZKZ5IE0L32UB349/iNkF8asI+aU1rznNNaB
 PR/SymFRnomJGeuIvnBLV8vKTV4NzlX2UznpdyiqSXHCZjwgmq3bx3LGB5QUVnmZ5uo0
 wOrXGKgj82ZVFjuhevxals82yVft1JhsZtogFgeaMGgGkg9fAIaSUel8soyhfQVddIAh
 goiQ==
X-Gm-Message-State: ANhLgQ2OjQ0Wlq6fenvQtryzVK9qpfCzdjsJkpMBgB/29V4tE5d3KeS5
 I9CDOaXQXBWyK3pD3fTGm+UgodbIROU=
X-Google-Smtp-Source: ADFU+vswz5jM9difNOg3zGZEZG+CtRvkVy8VYS5qTy5LUdIcRFvGI3GzpOW8UHe4Z581aFOjr4aXnQ==
X-Received: by 2002:a63:ec4d:: with SMTP id r13mr15436063pgj.232.1584829608726; 
 Sat, 21 Mar 2020 15:26:48 -0700 (PDT)
Received: from localhost.localdomain ([113.193.33.115])
 by smtp.gmail.com with ESMTPSA id 184sm8312634pgb.52.2020.03.21.15.26.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Mar 2020 15:26:48 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel] [PATCH 07/11] Staging: rtl8188eu: rf_cfg: Add
 space around operators
Date: Sun, 22 Mar 2020 03:56:42 +0530
Message-Id: <c1a6f5a1c5fb3a176ee77cc01446976b180bd999.1584826154.git.shreeya.patel23498@gmail.com>
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

shreeya@Shreeya-Patel:~git/kernels/staging$ git diff -w drivers/staging/rtl8188eu/hal/rf_cfg.c
shreeya@Shreeya-Patel:~git/kernels/staging$

shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$ diff rf_cfg_old.o rf_cfg.o
shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$

 drivers/staging/rtl8188eu/hal/rf_cfg.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rf_cfg.c b/drivers/staging/rtl8188eu/hal/rf_cfg.c
index 004e19301eae..0b20e62f9a68 100644
--- a/drivers/staging/rtl8188eu/hal/rf_cfg.c
+++ b/drivers/staging/rtl8188eu/hal/rf_cfg.c
@@ -143,7 +143,7 @@ static u32 Array_RadioA_1T_8188E[] = {
 #define READ_NEXT_PAIR(v1, v2, i)	\
 do {								\
 	i += 2; v1 = array[i];			\
-	v2 = array[i+1];				\
+	v2 = array[i + 1];				\
 } while (0)
 
 #define RFREG_OFFSET_MASK 0xfffff
@@ -190,7 +190,7 @@ static bool rtl88e_phy_config_rf_with_headerfile(struct adapter *adapt)
 
 	for (i = 0; i < array_len; i += 2) {
 		u32 v1 = array[i];
-		u32 v2 = array[i+1];
+		u32 v2 = array[i + 1];
 
 		if (v1 < 0xCDCDCDCD) {
 			rtl8188e_config_rf_reg(adapt, v1, v2);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
