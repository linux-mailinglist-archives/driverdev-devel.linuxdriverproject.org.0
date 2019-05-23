Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC14327D5F
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 14:54:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3DB498436F;
	Thu, 23 May 2019 12:54:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PTdoUKt68XsS; Thu, 23 May 2019 12:54:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4C7B387167;
	Thu, 23 May 2019 12:54:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F2EBB1BF31E
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:54:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ED460885B1
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:54:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WK4gly7yyN25 for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 12:54:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 75DCA8859D
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 12:54:19 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id u17so3199625pfn.7
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 05:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PxeLHI+jcJnNa8egh+nhhwEm8X7EMV+hjf297FNmO2k=;
 b=peBQCQTsOhZRPBlQhXGKjX9BmJCm8odmIaIdt9AnoBnHuLuHgBSIXKze8HoLcLodx8
 88zvIel1MVoqD70UqU0d105JJNVD6H45YVT8ukmGTeINvYrVwbVAq99W+/3EMHSFu79x
 a9SuvDw1Perwg9+I1hzp8+WrgIt0MLVSOz021DaYE2pY6y3n5bwN2lSwdQhUA33W+WYu
 H/tb+45zUX2AC1E+N/eai3SA4M03ghD0k8Ne4ccQHQEtAQMZniNsrAOereY6Hg1xhXpy
 rvwNkm5FJ2VMWSIR8Hrnw4zJs1UyEvsPXi7pgLKnkbAq2Z/19DJzAjKc4+nh/8fslNbX
 AMig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PxeLHI+jcJnNa8egh+nhhwEm8X7EMV+hjf297FNmO2k=;
 b=bfiDZ9bLknL55L717Dst8YEVueQmPwAd0NvCqExYlr0VqhmtIhudhK8AKBoELnMPWB
 Rr9xxhQLmvGIIfYmlruaaqaIjFDb0t7tWEdutAWGqVuBJAQfZ0WXH9mw90jHpmYJAIGw
 /sXS2h7FTBFjXOouhIblYxhgNTiQ3p+d/XQg6XwFB5+hgzr4wHDhKJpNfETVNqsJ7DO/
 jQsdhV4UtiHY9JCTVBX3xKbJUggu02l37cKx0t/uVeLnTNgCFwQRF6H94C3um1CqIj7b
 QUJu9sRxFboZRllfZX6E5PuaeBMkK0/x+ypcj+Su+9CIOhCOm/BSHJV/nil//CdAHjt9
 hVLw==
X-Gm-Message-State: APjAAAVWw1AGGGcsSnLHw2mpWXjhFK97gUOUhyMfZsr02GazNkfB1yRP
 f/FQaWj/dW8FkrapfJKPKGf0fbC6a7k=
X-Google-Smtp-Source: APXvYqxV4KBmIXZqYjcYRuW7xGgYl0YjuSZmNGQlm0u6NJ3EFrA8/HTX+//gsnRZZM/zz+A7JhRanA==
X-Received: by 2002:a63:4a16:: with SMTP id x22mr5750690pga.219.1558616059112; 
 Thu, 23 May 2019 05:54:19 -0700 (PDT)
Received: from localhost.localdomain ([122.163.94.48])
 by smtp.gmail.com with ESMTPSA id w12sm27355248pgp.51.2019.05.23.05.54.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 05:54:18 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, straube.linux@gmail.com, realwakka@gmail.com,
 hle@owl.eu.com, rico.schrage@gmail.com, sophie.matter@web.de,
 weiyongjun1@huawei.com, jbi.octave@gmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: pi433: Remove unnecessary variable
Date: Thu, 23 May 2019 18:23:41 +0530
Message-Id: <20190523125340.29338-1-nishkadg.linux@gmail.com>
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

The variable retval is assigned constant values twice, and can therefore
be replaced by its values.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
Changes in v2:
- Add Wei Yongjun to the recipients list
- Fix From and Signed-off-by fields

 drivers/staging/pi433/pi433_if.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
index c889f0bdf424..40c6f4e7632f 100644
--- a/drivers/staging/pi433/pi433_if.c
+++ b/drivers/staging/pi433/pi433_if.c
@@ -871,7 +871,6 @@ pi433_write(struct file *filp, const char __user *buf,
 static long
 pi433_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 {
-	int			retval = 0;
 	struct pi433_instance	*instance;
 	struct pi433_device	*device;
 	struct pi433_tx_cfg	tx_cfg;
@@ -923,10 +922,10 @@ pi433_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 		mutex_unlock(&device->rx_lock);
 		break;
 	default:
-		retval = -EINVAL;
+		return -EINVAL;
 	}
 
-	return retval;
+	return 0;
 }
 
 #ifdef CONFIG_COMPAT
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
