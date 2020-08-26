Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB76252C3C
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Aug 2020 13:11:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6739F869CA;
	Wed, 26 Aug 2020 11:11:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h8djF6KKOyYM; Wed, 26 Aug 2020 11:11:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 50FF986BC5;
	Wed, 26 Aug 2020 11:11:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 09CB21BF36F
 for <devel@linuxdriverproject.org>; Wed, 26 Aug 2020 11:11:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0668487BD4
 for <devel@linuxdriverproject.org>; Wed, 26 Aug 2020 11:11:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2IgC3IoLJjyS for <devel@linuxdriverproject.org>;
 Wed, 26 Aug 2020 11:11:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 80F1887BCA
 for <devel@driverdev.osuosl.org>; Wed, 26 Aug 2020 11:11:00 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id k1so809165pfu.2
 for <devel@driverdev.osuosl.org>; Wed, 26 Aug 2020 04:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OYwGuEb91/Fq7kHgAcheZzGBW4eXw4/zcLyHp4V/iG0=;
 b=kHrFHnGJJqHIOGuHlNt47+PIV7xjyxVsQGCXDBKvWlCVnlDrIzQm6EMJ2ilqj4vxtR
 Ea5p9UqDeeEy8aUGQmy7Jg2iXrzk3+f7GARCG/yd94rppYK1u0lp3FDcF1INMV7dBzZu
 88Sx8IdxaethQB6tSl/yYI2xja24LrVc04r10ejLRKRrdS8mKCWTZPyTmaw3HrNQHi6L
 /9L2n9XdDytKjSYeVNeUJSPwJHMkrwKqnUmP8LFzlh2gerEGyU19Z15fqwcs8wbTOAvQ
 mkSg6jHwv/x12y61M23ocu1o6DnSUIhByZVC5fAASWXHamKddzyqNC+GJmw55ugorjCO
 PYPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OYwGuEb91/Fq7kHgAcheZzGBW4eXw4/zcLyHp4V/iG0=;
 b=CTRmvF0ESMLlHH70/woh3j62hZBDKNSD6zqILnAma/b9wr9eFaArEf3Nprneud1nCA
 HEI+hz9dZuFgUbzzuB1BH+Ygk1Y/20pw/V8w7Ya/gYpm3smnXHSff3HOUnUj4Nw1Lbmd
 rhiWGhKXav3Timmx9MdswebNferMA795gKUuaYXJLCkUhjzEyybZHuSP4uiPhx7wMQtN
 /nyjcOOmQ3v/g5dfQ8f29mqW7CR3bHsGaNQN7A5b5ivvk7bHsn9m+HAzFOfN4Mr1hf5k
 +LM0oUMitK1DpsQu3wHoqULDoQ3npQIVPUmjxpo+bu04aAc/b6lwpJwF0o+iEiVXO7Qa
 kVZA==
X-Gm-Message-State: AOAM530IXV7ytUGZITFI4U3EoyLYDcMEYPtccD3Ktnp7Cb+37lDY6NEC
 lmwhszsllE8iDJyauxp7dn0=
X-Google-Smtp-Source: ABdhPJwLxmpEUrt0bg/EsSlOKtqGn2tKaPB89b7YhYCQnhKwKyVGv7GIbk3RsGJH1mgpotz1PR/t8A==
X-Received: by 2002:a63:df01:: with SMTP id u1mr9354157pgg.401.1598440259924; 
 Wed, 26 Aug 2020 04:10:59 -0700 (PDT)
Received: from localhost.localdomain ([49.207.215.131])
 by smtp.gmail.com with ESMTPSA id e62sm2793172pfh.144.2020.08.26.04.10.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Aug 2020 04:10:59 -0700 (PDT)
From: Anant Thazhemadam <anant.thazhemadam@gmail.com>
To: 
Subject: [PATCH v2] staging: media/atomisp : fix "dubious: !x | !y" sparse
 warning
Date: Wed, 26 Aug 2020 16:39:15 +0530
Message-Id: <20200826110919.9523-1-anant.thazhemadam@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200826095000.GW1793@kadam>
References: <20200826095000.GW1793@kadam>
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
Cc: devel@driverdev.osuosl.org, anant.thazhemadam@gmail.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Upon running Sparse, "warning: dubious: !x | !y" is brought to notice
for this file.  Logical and bitwise OR are basically the same in this
context, so it doesn't cause a runtime bug.  But let's change it to
logical OR to make it a little bit cleaner and silence the Sparse
warning.

Signed-off-by: Anant Thazhemadam <anant.thazhemadam@gmail.com>
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
