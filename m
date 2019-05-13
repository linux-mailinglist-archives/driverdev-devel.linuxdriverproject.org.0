Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A3B1B3FC
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 12:27:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3D5838547D;
	Mon, 13 May 2019 10:27:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mFP-21uQ97QR; Mon, 13 May 2019 10:27:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A264185535;
	Mon, 13 May 2019 10:27:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 91B641BF873
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 10:27:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 344A78550D
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 10:27:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PEZND9YJPZ0M for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 10:27:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 82E5785533
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 10:27:16 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id y2so1512644pfg.5
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 03:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kAtmxaN6VL8SaJjLVBAIa2oOTmks0i73BjWVVNPw1co=;
 b=h0OBTYFrrYnkwJ7tmLK1zCJdRKwMLmvRflQHkiA4fdS9QTn0F+HSX5o+czHd6lKUsW
 aLrCGJmIpBju44J+nBAAzZlKmSaiBrJg4QensONmvuEIUCVpkhzZxvDQXKvAzGGxBTll
 9l7W4iLeZZnpK1ZbVrUPW5Ipe/ms2A7w2aqs4TTCZMerw8f2tcPP7EzvRldkWq8fenCn
 jYSeP0+I8kbO0ovJ3FMvsLBS34E9OfAOkMR2InNg7tmZFkYVbIZmSXYRj8mtnof9UmCI
 MA7DmRgnSPhvl01i9J6i4tR5Q1dKMek7CG8KiPiQyP1wcuOSUxn6f21h7s+qc55B6nS6
 Eugw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kAtmxaN6VL8SaJjLVBAIa2oOTmks0i73BjWVVNPw1co=;
 b=dhI3DRJov7g0LWCFX4x22+2rMKbDhiNbvgl3uq5GT33zaXaaM90Pue/iMwmAAvIYTJ
 Ho/+3u+lOoP4kXMn0kVgfQL+J4/+Nn9NPdvaoSvjOK8seVNzDffIAiZgp+N9V/A4rgYN
 p5BXab3IMjtVnib3JegUkqDCirh/Q/SWesbBbTaIzIEppvEioiXguRzGahI8uiVkhyIn
 w0oxl7Cm1EmVRRe1Op54SQ1AvcAHtc3oysuO/cxboBlM43AxiyL8D5Bf443C5Gv44xbD
 VlEyxkORH03Kh/1V0eW9rr4lghTsL4qnJAyYPi3fHeFTK+LTh9nma8eJtcaFl0/LbIep
 jHjg==
X-Gm-Message-State: APjAAAWyQIIzmEPC03wYC/NjKmZMG0ztZSzMU5Skd1x4ki7Qzc7oYdHz
 WjSYGGBd6wTJ4WVOufWh+LM=
X-Google-Smtp-Source: APXvYqzAkgyb1cqJZ6kvmvZ/AQINiOwFDYwBRdl+cQCKLWIHd5wVqzP6rHfQD0tk8DkNlpSHS5UGXw==
X-Received: by 2002:a63:4852:: with SMTP id x18mr16356386pgk.14.1557743235990; 
 Mon, 13 May 2019 03:27:15 -0700 (PDT)
Received: from bnva-HP-Pavilion-g6-Notebook-PC.domain.name ([117.248.72.152])
 by smtp.gmail.com with ESMTPSA id
 r124sm11773487pgr.91.2019.05.13.03.27.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 03:27:15 -0700 (PDT)
From: Vandana BN <bnvandana@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lukas.bulwahn@gmail.com
Subject: [PATCH v3 5/8] Staging: kpc2000: kpc_dma: Resolve checkpath errors
 Macros in paranthesis & trailing statements on next line.
Date: Mon, 13 May 2019 15:56:19 +0530
Message-Id: <20190513102622.22398-5-bnvandana@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513102622.22398-1-bnvandana@gmail.com>
References: <20190510193833.1051-1-bnvandana@gmail.com>
 <20190513102622.22398-1-bnvandana@gmail.com>
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
Cc: Vandana BN <bnvandana@gmail.com>,
 linux-kernel-mentees@lists.linuxfoundation.org, skhan@linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes below errors reported by checkpath
ERROR: Macros with complex values should be enclosed in parentheses
CHECK: Prefer using the BIT macro
ERROR: trailing statements should be on next line
ERROR: trailing statements should be on next line
---
v2 - split changes to multiple patches
v3 - edit commit message
---

Signed-off-by: Vandana BN <bnvandana@gmail.com>
---
 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
index 0b8dcf046136..e996ced77bd6 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
@@ -14,7 +14,7 @@ MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Matt.Sickler@daktronics.com");
 
 #define KPC_DMA_CHAR_MAJOR    UNNAMED_MAJOR
-#define KPC_DMA_NUM_MINORS    1 << MINORBITS
+#define KPC_DMA_NUM_MINORS    BIT(MINORBITS)
 static DEFINE_MUTEX(kpc_dma_mtx);
 static int assigned_major_num;
 static LIST_HEAD(kpc_dma_list);
@@ -55,9 +55,11 @@ static ssize_t  show_engine_regs(struct device *dev, struct device_attribute *at
 {
 	struct kpc_dma_device *ldev;
 	struct platform_device *pldev = to_platform_device(dev);
-	if (!pldev) return 0;
+	if (!pldev)
+		return 0;
 	ldev = platform_get_drvdata(pldev);
-	if (!ldev) return 0;
+	if (!ldev)
+		return 0;
 
 	return scnprintf(buf, PAGE_SIZE,
 		"EngineControlStatus      = 0x%08x\n"
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
