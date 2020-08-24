Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC26824F181
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Aug 2020 05:27:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8D80187F48;
	Mon, 24 Aug 2020 03:27:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9VXgY-g51Qf8; Mon, 24 Aug 2020 03:27:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 08E2A87BD9;
	Mon, 24 Aug 2020 03:27:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F3CD61BF97C
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 03:27:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EE79B20489
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 03:27:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XvhcwREejyaW for <devel@linuxdriverproject.org>;
 Mon, 24 Aug 2020 03:27:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 9DB1620470
 for <devel@driverdev.osuosl.org>; Mon, 24 Aug 2020 03:27:11 +0000 (UTC)
IronPort-SDR: GLYTi1r0WWmuiPMV8pZi/uCSCjFid3Ge0ku/KNjDot8tWLfVkg0AZGpCMsWkSxbUsOTaOt8vNK
 gYBnKJdTPb5g==
X-IronPort-AV: E=McAfee;i="6000,8403,9722"; a="143611333"
X-IronPort-AV: E=Sophos;i="5.76,347,1592895600"; d="scan'208";a="143611333"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2020 20:27:10 -0700
IronPort-SDR: K+fZ6JLXSmksjbeNCGf+l7l5S9udUDS7ZP6MfHpEr3qjEgheL81KEtWSpCouTUfT+vCyrPFruo
 DQM/5lLAG3UQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,347,1592895600"; d="scan'208";a="322006007"
Received: from ipu5-build.bj.intel.com (HELO [10.238.232.196])
 ([10.238.232.196])
 by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2020 20:27:07 -0700
Subject: Re: [PATCH] media: staging/intel-ipu3: css: Correctly reset some
 memory
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 sakari.ailus@linux.intel.com, bingbu.cao@intel.com, tian.shu.qiu@intel.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org, yong.zhi@intel.com
References: <20200822131124.157917-1-christophe.jaillet@wanadoo.fr>
From: Bingbu Cao <bingbu.cao@linux.intel.com>
Message-ID: <5ae34514-13dc-671f-35a6-75c0343ddd68@linux.intel.com>
Date: Mon, 24 Aug 2020 11:26:12 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200822131124.157917-1-christophe.jaillet@wanadoo.fr>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Thanks for the patch.

On 8/22/20 9:11 PM, Christophe JAILLET wrote:
> The intent here is to reset the whole 'scaler_coeffs_luma' array, not just
> the first element.
> 
> Fixes: 	e11110a5b744 ("media: staging/intel-ipu3: css: Compute and program ccs")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
>  drivers/staging/media/ipu3/ipu3-css-params.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/ipu3/ipu3-css-params.c b/drivers/staging/media/ipu3/ipu3-css-params.c
> index fbd53d7c097c..e9d6bd9e9332 100644
> --- a/drivers/staging/media/ipu3/ipu3-css-params.c
> +++ b/drivers/staging/media/ipu3/ipu3-css-params.c
> @@ -159,7 +159,7 @@ imgu_css_scaler_calc(u32 input_width, u32 input_height, u32 target_width,
>  
>  	memset(&cfg->scaler_coeffs_chroma, 0,
>  	       sizeof(cfg->scaler_coeffs_chroma));
> -	memset(&cfg->scaler_coeffs_luma, 0, sizeof(*cfg->scaler_coeffs_luma));
> +	memset(&cfg->scaler_coeffs_luma, 0, sizeof(cfg->scaler_coeffs_luma));
>  	do {
>  		phase_step_correction++;
>  
> 
Reviewed-by: Bingbu Cao <bingbu.cao@intel.com>

-- 
Best regards,
Bingbu Cao
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
