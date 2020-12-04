Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D181D2CF795
	for <lists+driverdev-devel@lfdr.de>; Sat,  5 Dec 2020 00:37:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 396D587808;
	Fri,  4 Dec 2020 23:37:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hTAihxACsALo; Fri,  4 Dec 2020 23:37:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 47E2087624;
	Fri,  4 Dec 2020 23:37:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3D6051BF3DF
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 23:37:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3533A8793E
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 23:37:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4diLESdU4iMu for <devel@linuxdriverproject.org>;
 Fri,  4 Dec 2020 23:37:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oo1-f68.google.com (mail-oo1-f68.google.com
 [209.85.161.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1561E87624
 for <devel@driverdev.osuosl.org>; Fri,  4 Dec 2020 23:37:46 +0000 (UTC)
Received: by mail-oo1-f68.google.com with SMTP id t23so1810989oov.4
 for <devel@driverdev.osuosl.org>; Fri, 04 Dec 2020 15:37:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Hu+wkWbpBPezTyvSb2of+Vm89E29WSOkpzM3YXzuj38=;
 b=s53gSZHTQH7cvBh/vdbdcsZagopkO0fpu0/tXRVjv8ut6GBOgL1RMR7uIa4erod7Cb
 ZTetW+yb4/iMe3tZD/5+xe+GBAZmZcCK+XWwUf1/5j1o+cyuwkvFJ8ccg+c9DkvAlyCD
 DXgCwg5ApY8QF/d6IbAYylT5lEFbjTA57ODJhMZCNBQW2N4rVYYoNoTfFC6PJY3h799o
 HP1MzkRsZjPhyYeaTQ5nUcucJQ+SJDtBCFL8qkne6XIAgqeI9w5fCEBHv+E5cSOrqhjK
 jAYlyCZf8AwEvRhlswdLZ2tyvYmpPcKdtaxW+4OToSUFbAySWyvZaUpg5bURW0gGR0/Y
 G2Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Hu+wkWbpBPezTyvSb2of+Vm89E29WSOkpzM3YXzuj38=;
 b=CtWHkR9E3B10UT8DbnXVM+M8uNAkM960VYKn6N2wizxp+xPEpbrwINFa+0eYGKVxqn
 JElBBswu0GIV+cAqdmg/PX3Zf1U7D0TYrogr9b36SlKXVNQdQNxOF2HUaIOYRpDqoRnq
 8NuX9gd9S0ZYJZZDcRGwvhww8eJYNSnfuuXlG+jXr9N5x+Ml/1ThlVa5B5im41cSd5Az
 sPzUYajOPG4Bcgxv1ixA0653fGfaYtJzYRh9D6LQedZINFThfzATatEcQtqPNGMJW1wb
 Z9NWd9/XBjN+EU1bhlrDyKlxcfSK37e1Zgh0ffi1LzFJDWku02LtmZruQnzBmvNmviKO
 fDRA==
X-Gm-Message-State: AOAM5310O8fSzFBz77KKGMwItq6KHUsxo/Req+LzZP6EtbRcXEMSuxQs
 c3QLnGpwz0nq2Zj7Q5sRcMw=
X-Google-Smtp-Source: ABdhPJzUH98nCflQCCHuadj2dET80eZLyv6NF8U5XbXxt95V+Oap0UpJh05+04/E7GpWUZU0MpSJwA==
X-Received: by 2002:a05:6820:131:: with SMTP id
 i17mr5320675ood.18.1607125065377; 
 Fri, 04 Dec 2020 15:37:45 -0800 (PST)
Received: from linuxmint-midtower-pc ([135.26.31.16])
 by smtp.gmail.com with ESMTPSA id l5sm990439oig.46.2020.12.04.15.37.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Dec 2020 15:37:44 -0800 (PST)
Date: Fri, 4 Dec 2020 17:37:43 -0600
From: Travis Carter <traviscarter2@gmail.com>
To: ezequiel@collabora.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH] staging:rkvdec: Fixed "replace comma with semicolon" Warning:
Message-ID: <20201204233743.GA8530@linuxmint-midtower-pc>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Corrected the following Warning:
drivers/staging/media/rkvdec/rkvdec.c:133: WARNING: Possible comma where semicolon could be used

Signed-off-by: Travis Carter <traviscarter2@gmail.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index d25c4a37e2af..66572066e7a0 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -130,7 +130,7 @@ static void rkvdec_reset_fmt(struct rkvdec_ctx *ctx, struct v4l2_format *f,
 	memset(f, 0, sizeof(*f));
 	f->fmt.pix_mp.pixelformat = fourcc;
 	f->fmt.pix_mp.field = V4L2_FIELD_NONE;
-	f->fmt.pix_mp.colorspace = V4L2_COLORSPACE_REC709,
+	f->fmt.pix_mp.colorspace = V4L2_COLORSPACE_REC709;
 	f->fmt.pix_mp.ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 	f->fmt.pix_mp.quantization = V4L2_QUANTIZATION_DEFAULT;
 	f->fmt.pix_mp.xfer_func = V4L2_XFER_FUNC_DEFAULT;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
