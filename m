Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFCA3632EE
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Apr 2021 03:27:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE11E83BE7;
	Sun, 18 Apr 2021 01:27:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0-4rzwIwEEug; Sun, 18 Apr 2021 01:27:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 236F883B90;
	Sun, 18 Apr 2021 01:27:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2914F1BF477
 for <devel@linuxdriverproject.org>; Sun, 18 Apr 2021 01:26:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1019940428
 for <devel@linuxdriverproject.org>; Sun, 18 Apr 2021 01:26:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CwSccuoJZz0A for <devel@linuxdriverproject.org>;
 Sun, 18 Apr 2021 01:26:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B35D04028A
 for <devel@driverdev.osuosl.org>; Sun, 18 Apr 2021 01:26:54 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id 20so11945892pll.7
 for <devel@driverdev.osuosl.org>; Sat, 17 Apr 2021 18:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=LdLHlKsKEFT/fVDlILkUUrriYCxDyTZYAd5HOZ1HRDg=;
 b=Y0gFQuR+R5X/OWidUG3xXW1k5G4ht/w3sArhSwgYPfIXmWFZZpOUuRA6+ndA7zDpah
 UcDGBb9DdAcgl2Flx2FbkIZKyLlnABL6x0vPedND0opA+TyTO8tt7GJihjyBXu4QLDis
 5PSVWoXJH5lSLmNcjSrxR44s+T2JqlEAWkuDUQfxGgQOSloFbtZI0n8KujZoRq3c1+Gr
 v+xiS9bT5X0JDMFdOL77Z27z4dBPlr/HllGPzWxnQKi9RSLccMY4c4GIxxNeNt8fdmkM
 YxkG4oj9lkbvHYOxr3R0gxcqoQx9F+7dTaenu9YoCr2ds0/BvJOON6hAf9yt13PvnzsN
 Ipuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LdLHlKsKEFT/fVDlILkUUrriYCxDyTZYAd5HOZ1HRDg=;
 b=bzUtMRNByFFtHkXBSTwFfz0fBmSBkE3XA9iEjVF1nJQqynDHPjqijxBroBGTQgqCY5
 N+Tvf+ttATHS/2DkkxuvATxGzBHbztoUWeiyEHLF4ZXY94lJWWqBL8QfbuQ5S8O5ua6I
 yzDzAFZP07En2E5WYQcfB1w1ndInsRd4uJ6BpCud782fx97hLDU67lK/GYVMYzDkgDIg
 pRMqy1FMwjopDCisMcSX6IEONvjns9SvxWJCJdsuXcUEEs+akdpJc2U5eNPWkYY5x1yo
 wWScCYiJK/0YulkeaM0vMfugp5R3gkZMF8YayNcsAdA8Zl01XCa4HCSSQTSpuRWxm59V
 saVQ==
X-Gm-Message-State: AOAM530FyLDw1FjVfSAVtqyheUbCsy3lsKpnUusd/RSfTFnDCZKbOD6N
 VshXV4tgvWnLLmpEi52FWI8=
X-Google-Smtp-Source: ABdhPJxen3CTLTnRJO3l85gPTk589xOv1MyaXv++LG9X73e6GTpGQ1RSUPafJMwC5mRQmOy6BqDzgg==
X-Received: by 2002:a17:90b:285:: with SMTP id
 az5mr17055801pjb.0.1618709214008; 
 Sat, 17 Apr 2021 18:26:54 -0700 (PDT)
Received: from ashish-NUC8i5BEH ([122.177.44.217])
 by smtp.gmail.com with ESMTPSA id i11sm9059473pfa.108.2021.04.17.18.26.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Apr 2021 18:26:53 -0700 (PDT)
From: Ashish Kalra <eashishkalra@gmail.com>
X-Google-Original-From: Ashish Kalra <ashish@ashish-NUC8i5BEH>
Date: Sun, 18 Apr 2021 06:56:48 +0530
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [PATCH] media: atomisp: silence "dubious: !x | !y" warning
Message-ID: <20210418012648.GA4821@ashish-NUC8i5BEH>
References: <20210417153627.GA50228@ashish-NUC8i5BEH>
 <20210417205613.5c1aac74@coco.lan>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="XsQoSWH+UP9D9v3l"
Content-Disposition: inline
In-Reply-To: <20210417205613.5c1aac74@coco.lan>
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
Cc: devel@driverdev.osuosl.org, Ashish Kalra <eashishkalra@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--XsQoSWH+UP9D9v3l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Apr 17, 2021 at 08:56:13PM +0200, Mauro Carvalho Chehab wrote:
> Em Sat, 17 Apr 2021 21:06:27 +0530
> Ashish Kalra <eashishkalra@gmail.com> escreveu:
> 
> > Upon running sparse, "warning: dubious: !x | !y" is brought to notice
> > for this file.  Logical and bitwise OR are basically the same in this
> > context so it doesn't cause a runtime bug.  But let's change it to
> > logical OR to make it cleaner and silence the Sparse warning.
> > 
> > Signed-off-by: Ashish Kalra <eashishkalra@gmail.com>
> > ---
> >  .../media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c    | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
> > index 358cb7d2cd4c..3b850bb2d39d 100644
> > --- a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
> > +++ b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
> > @@ -58,7 +58,7 @@ sh_css_vf_downscale_log2(
> >  	unsigned int ds_log2 = 0;
> >  	unsigned int out_width;
> >  
> > -	if ((!out_info) | (!vf_info))
> > +	if ((!out_info) || (!vf_info))
> 
> 
> While here, please get rid of the unneeded parenthesis:
> 
> 	if (!out_info || !vf_info)
> 
> 
> >  		return -EINVAL;
> >  
> >  	out_width = out_info->res.width;
> 
> 
> 
> Thanks,
> Mauro
Updated Patch as per your feedback

Thanks
Ashish

--XsQoSWH+UP9D9v3l
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="0001-media-atomisp-silence-dubious-x-y-warning.patch"

From 770317157c3a7abf2fda1d71b0bd651c33bf0bfa Mon Sep 17 00:00:00 2001
From: Ashish Kalra <eashishkalra@gmail.com>
Date: Sun, 18 Apr 2021 06:52:03 +0530
Subject: [PATCH] media: atomisp: silence "dubious: !x | !y" warning

Upon running sparse, "warning: dubious: !x | !y" is brought to notice
for this file.  Logical and bitwise OR are basically the same in this
context so it doesn't cause a runtime bug.  But let's change it to
logical OR to make it cleaner and silence the Sparse warning.

Signed-off-by: Ashish Kalra <eashishkalra@gmail.com>
---
 .../media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
index 358cb7d2cd4c..71c3e7dac052 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
@@ -58,7 +58,7 @@ sh_css_vf_downscale_log2(
 	unsigned int ds_log2 = 0;
 	unsigned int out_width;
 
-	if ((!out_info) | (!vf_info))
+	if (!out_info || !vf_info)
 		return -EINVAL;
 
 	out_width = out_info->res.width;
-- 
2.25.1


--XsQoSWH+UP9D9v3l
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--XsQoSWH+UP9D9v3l--
