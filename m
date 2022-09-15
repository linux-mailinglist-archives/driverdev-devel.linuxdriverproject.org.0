Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1A85B96C1
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Sep 2022 10:58:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 413B04032A;
	Thu, 15 Sep 2022 08:58:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 413B04032A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zqY9eRMsMdeU; Thu, 15 Sep 2022 08:58:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2A8440302;
	Thu, 15 Sep 2022 08:58:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2A8440302
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 36B741BF475
 for <devel@linuxdriverproject.org>; Thu, 15 Sep 2022 08:58:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D769B402FE
 for <devel@linuxdriverproject.org>; Thu, 15 Sep 2022 08:58:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D769B402FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sNCzyUdUksy8 for <devel@linuxdriverproject.org>;
 Thu, 15 Sep 2022 08:58:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DAC8402B9
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0DAC8402B9
 for <devel@driverdev.osuosl.org>; Thu, 15 Sep 2022 08:58:37 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id c2so17712099plo.3
 for <devel@driverdev.osuosl.org>; Thu, 15 Sep 2022 01:58:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date;
 bh=gIZNqT2ZAkXaZyWINWYq7lo5YTszTa54rmQ3wSSWBaA=;
 b=pncaEnbkfSDCAb7iZvS9UqrD8hVv3eZVAQP3MRjjmZnxHSPCFyTZCqMSkMUGxGzGbk
 CAGQojUFDVPEXQE8epTQzhCkK/Ef3+epp7lqSUZOrj3hvIO5MHMQgzo+EjAiIYpALBAA
 dNHhah8648/YWSvYOb8zKnTOnWIqcYBBbcYe6Xb7kxx6QARdcRvqqMXsxUPVWNg5XK8A
 FyjEzlvkc8sQ0+q3ekUfxhz7NI+kyll0aXCzQDxQtCzH8We6qVgHLa8ZvszN6LTKahJP
 PXwKujDFVHd4MzQp+ICSqYz8G1zLmUgUAqtcXazIbUtXMrOtWNIN7xp1pL49/jboE2Lz
 SW/g==
X-Gm-Message-State: ACrzQf0Sl9GnMp+vq9VBpl0IH37f0YKc/X0+F3XJKbGvk5fRISHI7T3v
 Ngu6SuXJldZob1QBNNspyB8=
X-Google-Smtp-Source: AMsMyM7ejkhm5/VC/t4JV5rikoTNn5ptleg8X5r7xPTj/rsmYp9R0cHyLpbw+HxDWam1i0v3OK0Jzw==
X-Received: by 2002:a17:903:110e:b0:171:3114:7112 with SMTP id
 n14-20020a170903110e00b0017131147112mr3362731plh.114.1663232317417; 
 Thu, 15 Sep 2022 01:58:37 -0700 (PDT)
Received: from jonathan-VirtualBox.ip (122-56-198-116.mobile.spark.co.nz.
 [122.56.198.116]) by smtp.googlemail.com with ESMTPSA id
 iw11-20020a170903044b00b0016f196209c9sm12276080plb.123.2022.09.15.01.58.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Sep 2022 01:58:36 -0700 (PDT)
From: Jonathan Bergh <bergh.jonathan@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: Android: ashmem.c: Fixed missing const modifier
Date: Thu, 15 Sep 2022 20:58:27 +1200
Message-Id: <20220915085827.19701-1-bergh.jonathan@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date;
 bh=gIZNqT2ZAkXaZyWINWYq7lo5YTszTa54rmQ3wSSWBaA=;
 b=qmlmS3qMsCul9iyvY0vf+5+TDMlH8Zsq+g9M8nLTXxBwEqWrtCjp2IiNR+Y5PFQ5ab
 eSspG7jaUROyDOJcqLZJTXg0h9UmYW15gGEy6aF2JJLJsIAKxYiLCFEyRpXYhFn0/zEY
 T7dhkCTlrPP/45zyMtEF+OQzFF3s4A1BWzdaKPIc2j9QVoEU+EzwQwyBZY/vxk4H6NuJ
 TxBCjxr1oxvJadtQAH/pqFqClJ1x7rFFIrHkVIEnB+Yj4sev6FAKFVMOTc6D7BHJSyyq
 UrulUSbhkAXOxYC8WotWOnj0X+14PVw16EQx7AoKrxfjfDxpBZ9LmWU5ZSx8yR8eQ2dO
 r7tA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=qmlmS3qM
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
Cc: devel@driverdev.osuosl.org, Jonathan Bergh <bergh.jonathan@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed missing const modifier line 370

Signed-off-by: Jonathan Bergh <bergh.jonathan@gmail.com>
---
 drivers/staging/android/ashmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index c05a214191da..a04488efd5f2 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -367,7 +367,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
 
 static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
 {
-	static struct file_operations vmfile_fops;
+	static struct const file_operations vmfile_fops;
 	struct ashmem_area *asma = file->private_data;
 	int ret = 0;
 
-- 
2.34.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
