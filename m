Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D57931E39F8
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 09:12:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 622AC86B81;
	Wed, 27 May 2020 07:12:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XYCBJUtFntrB; Wed, 27 May 2020 07:12:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D2E186B68;
	Wed, 27 May 2020 07:12:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E8D3C1BF423
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 07:12:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D873B203E5
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 07:12:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lvtjpT3sfvRS for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 07:12:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 4387520479
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 07:12:22 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id m1so5114292pgk.1
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 00:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Tbgdqd+TXdAk8QNQkvpAeStL9yrt3nZfFNT/1PFaGls=;
 b=k1qgL0z6SiL5RJ1jy1ddTv2tly55L3zXvSGIJ+d1Q8l14IIWnU8jdo/ew4J/MGZ1a1
 ghhp01Z2ro6ZZW20+RGtLXPi4dzOcPrC5WNO8MTcS3Bgp+gvUyu/hj2LrSIZjOZ0Trc3
 IqDmuUKZZtuZ6g73xrRk3FBEWp6nqRS7HyxoMZFLM5w+X/RQoi6fPntepT9EBWnM6Jig
 doZXNjAdevq31/+HN5f/EnFXd/8pj6dfnCNgGsSmeuBxuiopt7x2NIrxPpGnLz+2CtiS
 j810vjU2dvanzhLIukM3tlZDPZSv+/KOeBVqFZTQtzfYghYrcWM1AseG/12XCcrjs2Yn
 i87Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Tbgdqd+TXdAk8QNQkvpAeStL9yrt3nZfFNT/1PFaGls=;
 b=SAPUG9G5A+sRabwzArrRzG1Higzd9owQAi/HXFDMyxRqC9mUgyffE6hhxI5BCxyQNV
 g+GVUP7Yi6+7zc8IOdRYZZ+agovPfmIf4xl9tkesfYPze21i5NFKAEnI0RS14iTbjt9+
 /5BKKOLxOBHTy4C0/rCAS/U+xedObQYyJ7/N/YI5h7+C+QC6Rt7f4Eei9pDSh1LpD4lz
 bKcxsYF4gjuG7K6MnqqzAzCbNDKXdOwpNYKyprVzX1CfA6eSH9pbSoaaDhANK24NJMkj
 8YPUED6zaSBnC9kLw4lJ9W066VEQo4S+OYkBGblcM2EGar/GOvc3O+BECRXeu3ziLfl3
 Cevg==
X-Gm-Message-State: AOAM532XLXE6pljdZh6LernhZZunNjrACaYJpdr4wQHXsVWQJDY2MoT8
 sjb/X6+TE9i1jejl/Tj95JA=
X-Google-Smtp-Source: ABdhPJw6D1VZU/JVVsKGh8KLCigxn0+ldfpgARKsTpPYazxQ5VDfKfusD5Y37w56dI+8FS7LCXPvtw==
X-Received: by 2002:a63:78b:: with SMTP id 133mr2796179pgh.161.1590563541617; 
 Wed, 27 May 2020 00:12:21 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id 10sm1306431pfx.138.2020.05.27.00.12.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 00:12:21 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 6/7] media: atomisp: Avoid overflow in compute_blending
Date: Wed, 27 May 2020 00:11:49 -0700
Message-Id: <20200527071150.3381228-7-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200527071150.3381228-1-natechancellor@gmail.com>
References: <20200527071150.3381228-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Nathan Chancellor <natechancellor@gmail.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Clang warns:

drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c:129:35:
warning: implicit conversion from 'unsigned long' to 'int32_t' (aka
'int') changes value from 18446744073709543424 to -8192
[-Wconstant-conversion]
        return MAX(MIN(isp_strength, 0), -XNR_BLENDING_SCALE_FACTOR);
        ~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~

XNR_BLENDING_SCALE_FACTOR is BIT(13), or 8192, which will easily fit
into a signed 32-bit integer. However, it is an unsigned long, which
means that negating it is the same as subtracting that value from
ULONG_MAX + 1, which causes it to be larger than a signed 32-bit
integer so it gets implicitly converted.

We can avoid this by using the variable isp_scale, which holds the value
of XNR_BLENDING_SCALE_FACTOR already, where the implicit conversion from
unsigned long to s32 already happened. If that were to ever overflow,
clang would warn: https://godbolt.org/z/EeSxLG

Link: https://github.com/ClangBuiltLinux/linux/issues/1036
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 .../atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
index a9db6366d20b..629f07faf20a 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
@@ -126,7 +126,7 @@ compute_blending(int strength)
 	 * exactly as s0.11 fixed point, but -1.0 can.
 	 */
 	isp_strength = -(((strength * isp_scale) + offset) / host_scale);
-	return MAX(MIN(isp_strength, 0), -XNR_BLENDING_SCALE_FACTOR);
+	return MAX(MIN(isp_strength, 0), -isp_scale);
 }
 
 void
-- 
2.27.0.rc0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
