Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 553B23630EA
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Apr 2021 17:36:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3B898430D;
	Sat, 17 Apr 2021 15:36:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M-yy43seuRGP; Sat, 17 Apr 2021 15:36:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 30B1D84233;
	Sat, 17 Apr 2021 15:36:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 28BC31BF2EC
 for <devel@linuxdriverproject.org>; Sat, 17 Apr 2021 15:36:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 22B8F404A7
 for <devel@linuxdriverproject.org>; Sat, 17 Apr 2021 15:36:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2nPfJt_FKyjO for <devel@linuxdriverproject.org>;
 Sat, 17 Apr 2021 15:36:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 828444049F
 for <devel@driverdev.osuosl.org>; Sat, 17 Apr 2021 15:36:33 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id h11so2655859pfn.0
 for <devel@driverdev.osuosl.org>; Sat, 17 Apr 2021 08:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=D/05szO78c8EJq1ym9W+r9Xm4IHEEvxwkXiJ2BgsUcI=;
 b=ok7VrOdFliNRvZPADXhbRfkawBFnWi8hF+qbhcL408j1O1CsdLTqdkaT2NunMt45B8
 N+VoBizCnqx6dc6VhWoytC/kZwga6xA3m8vr3M9ECWTT8/fTM/C8dSNMJ4h7Daf8HPV5
 E+FNBQY0vP9qd/Gb1PUaR/Iv4smpfs/UkZZOJKM5Z4Hko3l2LBNxyZEozolcC13994kO
 eNPYC7AT7zRvE4ejlzXzeNnegh2cBpiBFLgAE3YeXsayRKu7UYe6HqPPmRFRz5lSL8GU
 SwJY1wyqBcJrcE7JpEyzrhHpvSixPsKk1U2Eyq1TeRDX81u9pUvxWJVv7UM9vixbMMTn
 XHTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=D/05szO78c8EJq1ym9W+r9Xm4IHEEvxwkXiJ2BgsUcI=;
 b=ekgntHNDWM0914Fk1JxO3U3Vp/yZ+ID583c8kCI2Ng3PtKvraJu5UtC+qfSQUUZIhK
 WCVMztPwPdE9XW15LLOmK7JAzeCCCv1x568I6XpmKtIkUG6LbNRRGdCAxYv+mkQK5DHM
 9olTvBDh5BV0+nue9otWNkEnyNIuzxbnVmrJ10GiHCO5hqOR5S/6O3NW0M6QDwRlgiY5
 WcOSN3IzL10YmMA/ng+H/JK2heG9vHZjU3hifu+D8H45li0q155AcWBYuZNNtMqsObBK
 fxrkjhrIl9N1qgGQYk7Ag0iiz9RDGjM3v+nDlaeBazTVSaZyedh+7/LSl9G9ahV8rhvG
 mAFg==
X-Gm-Message-State: AOAM530X/clzSS4zQNVbnd9ogb32BfX8mZuBE8EvZ/Upruq4bsnbsiCc
 W4m76TDRNSrY7LYNpyJ4QKg=
X-Google-Smtp-Source: ABdhPJxJJG0G9xu6o6xj+ER8AwUrznNbFdJJuUqM3mxFkioSLr8Wb31xP1m18arBGjy0mJ7c5cQe1w==
X-Received: by 2002:a63:c10a:: with SMTP id w10mr3815406pgf.353.1618673792733; 
 Sat, 17 Apr 2021 08:36:32 -0700 (PDT)
Received: from ashish-NUC8i5BEH ([122.177.44.217])
 by smtp.gmail.com with ESMTPSA id e4sm8347297pgu.89.2021.04.17.08.36.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Apr 2021 08:36:32 -0700 (PDT)
Date: Sat, 17 Apr 2021 21:06:27 +0530
From: Ashish Kalra <eashishkalra@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ashish Kalra <eashishkalra@gmail.com>, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] media: atomisp: silence "dubious: !x | !y" warning
Message-ID: <20210417153627.GA50228@ashish-NUC8i5BEH>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: eashishkalra@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Upon running sparse, "warning: dubious: !x | !y" is brought to notice
for this file.  Logical and bitwise OR are basically the same in this
context so it doesn't cause a runtime bug.  But let's change it to
logical OR to make it cleaner and silence the Sparse warning.

Signed-off-by: Ashish Kalra <eashishkalra@gmail.com>
---
 .../media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
index 358cb7d2cd4c..3b850bb2d39d 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
@@ -58,7 +58,7 @@ sh_css_vf_downscale_log2(
 	unsigned int ds_log2 = 0;
 	unsigned int out_width;
 
-	if ((!out_info) | (!vf_info))
+	if ((!out_info) || (!vf_info))
 		return -EINVAL;
 
 	out_width = out_info->res.width;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
