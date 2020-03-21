Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EAF18E51F
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 23:21:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9141387897;
	Sat, 21 Mar 2020 22:21:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aP2b2PHsLBAo; Sat, 21 Mar 2020 22:21:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CA90F8786B;
	Sat, 21 Mar 2020 22:21:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 22ADC1BF5A6
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 22:21:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1FC8086640
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 22:21:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RkD8BCY0ANVL for <devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 22:21:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 74B7D86053
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 22:21:21 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id dw20so4548454pjb.0
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 15:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=YDt1O5yGZ6i7riNKjtcBfBSe+BjizbdVsG1m7rWg6PY=;
 b=lWH71JTFjmKdK1+WU7n32xi2rrAA3ia70j/TFYjfkM7i3bGTNvL5LQDvKn7kGc/Loj
 raS1GoaViYA5+yZFdhoeL5mpeVH/8Td6a+JiKqg98w8eESkAwGxlij3Bd2CXFcKRvKH/
 D5f4f3J5N9c4bC8Qf6H7y68oLs/tBUxblHULQWksmeWcX55QexQs4TNYOJKXDhZS19Fz
 4N5/ZnPOEyoeGsq+oDXw058zvqlyIde0mJpkWnPa+1JyFIZcvzxa7SZWW3f7csjlWdQh
 s2K+EtHEsdQEkicgWCRb/HkssUG7tGtuUf7pGl+PkrPoDHBdrKCzVMMRGXn5aV0p9uAX
 8v+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=YDt1O5yGZ6i7riNKjtcBfBSe+BjizbdVsG1m7rWg6PY=;
 b=nRY5I78IUqFbWQqrrymqld+X2J8ErePiqzTSAgVBy4/TTf3DdIxe7Mmdhl34oHiaMu
 RG7gYIUG32Hbu4TJbzZvYtLUZ340SWvY8i/OBR37p7tac1IFazjpz2fRCdYsdX+O4GE0
 EWYJnrarhyGTO+kKHukn8LJ9mHLoc9CFEuFZ54UojvQwn7cEFfG9a/oEaZstSK76z6MB
 hpdowXNnzmXnqUij2gdpK0W6seYsDnyv/1RimViL6W54m7A8Oe83beXTGoY0KPIxtcJF
 z1x9/fFcZ7ZgGSr8Beb1zmUxVqVBFdLfLm55NJTruIDiEZZ9HeEou9CrXiaLes8fyt58
 Z8PA==
X-Gm-Message-State: ANhLgQ3JMBnv1AUeiUA+dZ6pFnWIVQfq9WBcjpdBr7KM7wCRsQiPQvPX
 Nn4nefTMgk6upOgDA9xTSPo=
X-Google-Smtp-Source: ADFU+vsiHNFTV1nG+Qdz3weTi93Li0qmFI2E0dyrDWwMvRhKrMBUoS4V0ZTKtgFPYQx3s8zVJgi1hA==
X-Received: by 2002:a17:90a:21ac:: with SMTP id
 q41mr17311989pjc.41.1584829280895; 
 Sat, 21 Mar 2020 15:21:20 -0700 (PDT)
Received: from localhost.localdomain ([113.193.33.115])
 by smtp.gmail.com with ESMTPSA id w19sm8744669pgm.27.2020.03.21.15.21.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Mar 2020 15:21:20 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel] [PATCH 01/11] Staging: rtl8188eu: hal_com: Add
 space around operators
Date: Sun, 22 Mar 2020 03:51:13 +0530
Message-Id: <19950c71482b3be0dd9518398af85e964f3b66b1.1584826154.git.shreeya.patel23498@gmail.com>
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

shreeya@Shreeya-Patel:~git/kernels/staging$ git diff -w drivers/staging/rtl8188eu/hal/hal_com.c
shreeya@Shreeya-Patel:~git/kernels/staging$

shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$ diff hal_com_old.o hal_com.o
shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$


 drivers/staging/rtl8188eu/hal/hal_com.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/hal_com.c b/drivers/staging/rtl8188eu/hal/hal_com.c
index 95f1b1431373..ebe19e076ff2 100644
--- a/drivers/staging/rtl8188eu/hal/hal_com.c
+++ b/drivers/staging/rtl8188eu/hal/hal_com.c
@@ -18,26 +18,26 @@ void dump_chip_info(struct HAL_VERSION	chip_vers)
 	uint cnt = 0;
 	char buf[128];
 
-	cnt += sprintf((buf+cnt), "Chip Version Info: CHIP_8188E_");
-	cnt += sprintf((buf+cnt), "%s_", chip_vers.ChipType == NORMAL_CHIP ?
+	cnt += sprintf((buf + cnt), "Chip Version Info: CHIP_8188E_");
+	cnt += sprintf((buf + cnt), "%s_", chip_vers.ChipType == NORMAL_CHIP ?
 		       "Normal_Chip" : "Test_Chip");
-	cnt += sprintf((buf+cnt), "%s_", chip_vers.VendorType == CHIP_VENDOR_TSMC ?
+	cnt += sprintf((buf + cnt), "%s_", chip_vers.VendorType == CHIP_VENDOR_TSMC ?
 		       "TSMC" : "UMC");
 	if (chip_vers.CUTVersion == A_CUT_VERSION)
-		cnt += sprintf((buf+cnt), "A_CUT_");
+		cnt += sprintf((buf + cnt), "A_CUT_");
 	else if (chip_vers.CUTVersion == B_CUT_VERSION)
-		cnt += sprintf((buf+cnt), "B_CUT_");
+		cnt += sprintf((buf + cnt), "B_CUT_");
 	else if (chip_vers.CUTVersion == C_CUT_VERSION)
-		cnt += sprintf((buf+cnt), "C_CUT_");
+		cnt += sprintf((buf + cnt), "C_CUT_");
 	else if (chip_vers.CUTVersion == D_CUT_VERSION)
-		cnt += sprintf((buf+cnt), "D_CUT_");
+		cnt += sprintf((buf + cnt), "D_CUT_");
 	else if (chip_vers.CUTVersion == E_CUT_VERSION)
-		cnt += sprintf((buf+cnt), "E_CUT_");
+		cnt += sprintf((buf + cnt), "E_CUT_");
 	else
-		cnt += sprintf((buf+cnt), "UNKNOWN_CUT(%d)_",
+		cnt += sprintf((buf + cnt), "UNKNOWN_CUT(%d)_",
 			       chip_vers.CUTVersion);
-	cnt += sprintf((buf+cnt), "1T1R_");
-	cnt += sprintf((buf+cnt), "RomVer(0)\n");
+	cnt += sprintf((buf + cnt), "1T1R_");
+	cnt += sprintf((buf + cnt), "RomVer(0)\n");
 
 	pr_info("%s", buf);
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
