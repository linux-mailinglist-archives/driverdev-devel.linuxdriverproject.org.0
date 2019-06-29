Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6085AA43
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 12:40:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4F107876C7;
	Sat, 29 Jun 2019 10:40:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YJCBUZ0qcE4I; Sat, 29 Jun 2019 10:40:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1B73D87695;
	Sat, 29 Jun 2019 10:40:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A6F521BF405
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:40:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A3F9284B0F
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:40:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bECAOr5mQRK6 for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 10:40:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0F2F5846C0
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 10:40:15 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id bi6so4647954plb.12
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 03:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=y2Mp0qROMF2T8wQmXHDuriRG6lKkCCwBXq/1jhIUsW4=;
 b=NFUFXPg5TiylMSHadNbB0wXsOI6grxm+VM4Ol82/rR2j01JvY++v3Kqg5kDKqZjB4J
 /+Ys7DVJaCiD+7slZQ1OE4tyXvVDHeIzXGLp+nkfaHGoycxmAlaxKhnrYKODQ8ZxW58L
 gWe2ojp+qu0oXIbIu8wyKIPAF4in96J72Oq6IdJ9zpeK7tsskeeYZ9xecR6QVo+ZgxBS
 pFDLSaMwydTEAoj+XdRWoVLrAkHVljlTurrNeN/GfdrHMycohNk2gAtl2RGrO4DN0d+C
 9Cef9SehFUUZ7+97QNcBe8dpFlzUPCZyiInLO0cIRy1+xvIyzHFHFuzgfol+qUVd5ijK
 rZtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=y2Mp0qROMF2T8wQmXHDuriRG6lKkCCwBXq/1jhIUsW4=;
 b=an+T2r7+TBMForKMMJ1DOQBSDBHrEeMU2X09Fliq2X7FQ4884a9AqNyfdWj/ZEAGlf
 t0fCpi6d+u8GycuQbc0KLehHap7xsdqi9FJ8FhM84pb7AT7QvM75WgHg9c/aQHj2j0HC
 eQzz3Yzx/zkuQxUKXZ9r6IkkIHcP8RkXdFCp7B67lVAl50dPZe6IH5ZkBP5pfotMILGZ
 jQHXNb9HS0Y6x5CKJ6rpST3ufeN2SDOW+tuwR6bCj5AM2yErbuW+yBXXb0o16P9ygpYv
 vHJ28UNQaYokk1lxdUwphkGHQ/o7Sg/QJW0aA92ijMy40MBOKANZjLkORlc0kfHZ3Vt6
 j3iw==
X-Gm-Message-State: APjAAAV/36H4YHVl4vy6JRUXhdPHvU/zLB0Ns5fq/sxdxLFfHue4rOom
 bkdE7Sh7KBt0PvuABRyzZ6M=
X-Google-Smtp-Source: APXvYqwu1wYH3M9AgEB22Hk9+l7wHMQXfW5V7Lqsl6Wy6yjjMMBaWQqVFqmuS4PcZeVECGSuTQTIRg==
X-Received: by 2002:a17:902:8689:: with SMTP id
 g9mr7258592plo.252.1561804814741; 
 Sat, 29 Jun 2019 03:40:14 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id e11sm8224348pfm.35.2019.06.29.03.40.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Jun 2019 03:40:14 -0700 (PDT)
Date: Sat, 29 Jun 2019 16:10:11 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 07/10] staging/rtl8723bs/hal: fix comparison to
 true/false is error prone
Message-ID: <20190629104011.GA15715@hari-Inspiron-1545>
References: <20190629102722.GA15300@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190629102722.GA15300@hari-Inspiron-1545>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jun 29, 2019 at 03:57:22PM +0530, Hariprasad Kelam wrote:

Please ignore this patch
> fix below issues reported by checkpatch
> 
> CHECK: Using comparison to false is error prone
> CHECK: Using comparison to true is error prone
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/rtl8723bs/hal/odm_CfoTracking.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
> index a733046..7883b26 100644
> --- a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
> +++ b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
> @@ -221,7 +221,7 @@ void ODM_CfoTracking(void *pDM_VOID)
>  		pCfoTrack->CFO_ave_pre = CFO_ave;
>  
>  		/* 4 1.4 Dynamic Xtal threshold */
> -		if (pCfoTrack->bAdjust == false) {
> +		if (!pCfoTrack->bAdjust) {
>  			if (CFO_ave > CFO_TH_XTAL_HIGH || CFO_ave < (-CFO_TH_XTAL_HIGH))
>  				pCfoTrack->bAdjust = true;
>  		} else {
> -- 
> 2.7.4
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
