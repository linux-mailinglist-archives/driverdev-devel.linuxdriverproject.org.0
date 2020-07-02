Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A5A211B42
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 06:52:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8D3328A56B;
	Thu,  2 Jul 2020 04:52:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dt-SWSsvl4lm; Thu,  2 Jul 2020 04:52:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A54D8A457;
	Thu,  2 Jul 2020 04:52:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 58BF51BF59C
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 04:52:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 537618A457
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 04:52:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DkN3D3P0VGyd for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 04:52:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A6A588A454
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 04:52:40 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id 67so7918187pfg.5
 for <devel@driverdev.osuosl.org>; Wed, 01 Jul 2020 21:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=uEiRLNKt69M+Lip9AktsDp/u6gg05rPhzB8bmhjA7A4=;
 b=ExH6F2q454wJ41b2BXCt/7X7WIXluk6VAKALxUU5tFpTjbkOtGbsmX0+nPyTZocMem
 KjpQl2U7z7K/EeOzS3tSvLYOOrNwXHoNTkgtXuyjrCQPNV2A/Ebi8bTfIusaFV5ni/S2
 n6rgbnQpdQuBcz11zE7y4VCx9wa6m4S48uvGs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uEiRLNKt69M+Lip9AktsDp/u6gg05rPhzB8bmhjA7A4=;
 b=Al2kJaPpzR4JX9sFvmEUH3YrdaXo/XctmtQN2RNMesZ7XR0O5WFnex+uEEp1T5n/nB
 H4/lKGsaDO3UT/LGoh/qaQT7qKJ8loXSerLrnQbfQoFonRGQdDkIZfWZ8CynVNqG01PX
 Ov/UiCfmCIO8/yrcXnEkAnr6cI2y7mmFaIlR0tlUa0Vfeo7eAZNbAsGgEw7vZl0ggWkC
 ZoIy0YyO6QqKX3rc33rRpWIceL62Tt1UtxsLYmi5CrZ+xO0VFTvaPFB/HUeZFWqhX96f
 2UbinFk2Eh+/z5N2TpWEcbyFfShD6UW15XSeuAYxMR4M5Jy4Ki9G/H7bPtwX+tHF/OB+
 VDDA==
X-Gm-Message-State: AOAM532Cd+OLTGGAmigFsxjLWw7+RRpWkwcTY8jY2k0bFDv3fTlm3RrF
 QO06AFVi2mqjeNifwW8M/9wcpYzp434=
X-Google-Smtp-Source: ABdhPJxY9ullqFsM6GLHzjRtrLbGtIuq/OrFmyjpR5DEajP/BpW38p3Yc6gX4kiSlGzCA1+ccg2QXw==
X-Received: by 2002:a65:6415:: with SMTP id a21mr22407549pgv.129.1593665559676; 
 Wed, 01 Jul 2020 21:52:39 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id c132sm6912538pfb.112.2020.07.01.21.52.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 21:52:38 -0700 (PDT)
Date: Wed, 1 Jul 2020 21:52:37 -0700
From: Kees Cook <keescook@chromium.org>
To: B K Karthik <bkkarthik@pesu.pes.edu>
Subject: Re: [PATCH] staging: rtl8188eu: include: rtl8188e_xmit.h: fixed
 multiple blank space coding style issues
Message-ID: <202007012152.4F5B41C14@keescook>
References: <20200702044842.fbafuffk7zercbi7@pesu-pes-edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702044842.fbafuffk7zercbi7@pesu-pes-edu>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 02, 2020 at 12:48:42AM -0400, B K Karthik wrote:
> added blank spaces to improve code readability.
> 
> Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> ---
>  drivers/staging/rtl8188eu/include/rtl8188e_xmit.h | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h b/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h
> index 49884cceb349..c115007d883d 100644
> --- a/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h
> +++ b/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h
> @@ -30,11 +30,11 @@
>  #define SET_EARLYMODE_LEN2_1(__pAddr, __Value)			\
>  	SET_BITS_TO_LE_4BYTE(__pAddr, 28, 4, __Value)
>  #define SET_EARLYMODE_LEN2_2(__pAddr, __Value)			\
> -	SET_BITS_TO_LE_4BYTE(__pAddr+4, 0, 8, __Value)
> +	SET_BITS_TO_LE_4BYTE(__pAdd r +4, 0, 8, __Value)
                                   ^

did this get compile tested? :)

-Kees

>  #define SET_EARLYMODE_LEN3(__pAddr, __Value)			\
> -	SET_BITS_TO_LE_4BYTE(__pAddr+4, 8, 12, __Value)
> +	SET_BITS_TO_LE_4BYTE(__pAddr + 4, 8, 12, __Value)
>  #define SET_EARLYMODE_LEN4(__pAddr, __Value)			\
> -	SET_BITS_TO_LE_4BYTE(__pAddr+4, 20, 12, __Value)
> +	SET_BITS_TO_LE_4BYTE(__pAddr + 4, 20, 12, __Value)
> 
>  /*  */
>  /* defined for TX DESC Operation */
> @@ -100,7 +100,7 @@ enum TXDESC_SC {
> 
>  #define txdesc_set_ccx_sw_88e(txdesc, value) \
>  	do { \
> -		((struct txdesc_88e *)(txdesc))->sw1 = (((value)>>8) & 0x0f); \
> +		((struct txdesc_88e *)(txdesc))->sw1 = (((value) >> 8) & 0x0f); \
>  		((struct txdesc_88e *)(txdesc))->sw0 = ((value) & 0xff); \
>  	} while (0)
> 
> @@ -138,9 +138,9 @@ struct txrpt_ccx_88e {
>  	u8 sw0;
>  };
> 
> -#define txrpt_ccx_sw_88e(txrpt_ccx) ((txrpt_ccx)->sw0 + ((txrpt_ccx)->sw1<<8))
> +#define txrpt_ccx_sw_88e(txrpt_ccx) ((txrpt_ccx)->sw0 + ((txrpt_ccx)->sw1 << 8))
>  #define txrpt_ccx_qtime_88e(txrpt_ccx)			\
> -	((txrpt_ccx)->ccx_qtime0+((txrpt_ccx)->ccx_qtime1<<8))
> +	((txrpt_ccx)->ccx_qtime0+((txrpt_ccx)->ccx_qtime1 << 8))
> 
>  void rtl8188e_fill_fake_txdesc(struct adapter *padapter, u8 *pDesc,
>  			       u32 BufferLen, u8 IsPsPoll, u8 IsBTQosNull);
> --
> 2.20.1
> 



-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
