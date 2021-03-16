Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC5833D304
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 12:29:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3B916F5E7;
	Tue, 16 Mar 2021 11:29:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PpkAVc3WPopX; Tue, 16 Mar 2021 11:29:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F15C66074E;
	Tue, 16 Mar 2021 11:29:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 30B381BF3C8
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 11:29:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1ED8444BE3
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 11:29:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xH4e5Nzq2wHW for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 11:29:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C6D0D44AFC
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 11:29:03 +0000 (UTC)
IronPort-SDR: +VK/WtpEboGnsojRzAr5hssQpfk9jgVDLP6YmjBx0fCTV/1zKgEnum9ztfciddiVOzDr+Sg6zI
 Qb5uVzhZ78AQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9924"; a="188600857"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="188600857"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 04:29:03 -0700
IronPort-SDR: rU0cdm0KON0LGWPyAtiNF90Ez+rLD7hoRZU/DnajYX4Ldn8a4NgoyrTFW2dKeBVDEtghHoyaay
 9o5s54ypAwcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="411018912"
Received: from ipu5-build.bj.intel.com (HELO [10.238.232.196])
 ([10.238.232.196])
 by orsmga007.jf.intel.com with ESMTP; 16 Mar 2021 04:29:00 -0700
Subject: Re: [PATCH v2 1/2] media: staging/intel-ipu3: Fix memory leak in
 imu_fmt
To: Ricardo Ribalda <ribalda@chromium.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Bingbu Cao <bingbu.cao@intel.com>, Tianshu Qiu <tian.shu.qiu@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnd Bergmann <arnd@arndb.de>, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <20210315123406.1523607-1-ribalda@chromium.org>
From: Bingbu Cao <bingbu.cao@linux.intel.com>
Message-ID: <34c90095-bcbf-5530-786a-e709cc493fa9@linux.intel.com>
Date: Tue, 16 Mar 2021 19:27:56 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210315123406.1523607-1-ribalda@chromium.org>
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi, Ricardo

Thanks for your patch.
It looks fine for me, do you mind squash 2 patchsets into 1 commit?

On 3/15/21 8:34 PM, Ricardo Ribalda wrote:
> We are losing the reference to an allocated memory if try. Change the
> order of the check to avoid that.
> 
> Cc: stable@vger.kernel.org
> Fixes: 6d5f26f2e045 ("media: staging/intel-ipu3-v4l: reduce kernel stack usage")
> Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> ---
>  drivers/staging/media/ipu3/ipu3-v4l2.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/media/ipu3/ipu3-v4l2.c b/drivers/staging/media/ipu3/ipu3-v4l2.c
> index 60aa02eb7d2a..35a74d99322f 100644
> --- a/drivers/staging/media/ipu3/ipu3-v4l2.c
> +++ b/drivers/staging/media/ipu3/ipu3-v4l2.c
> @@ -693,6 +693,13 @@ static int imgu_fmt(struct imgu_device *imgu, unsigned int pipe, int node,
>  		if (inode == IMGU_NODE_STAT_3A || inode == IMGU_NODE_PARAMS)
>  			continue;
>  
> +		/* CSS expects some format on OUT queue */
> +		if (i != IPU3_CSS_QUEUE_OUT &&
> +		    !imgu_pipe->nodes[inode].enabled) {
> +			fmts[i] = NULL;
> +			continue;
> +		}
> +
>  		if (try) {
>  			fmts[i] = kmemdup(&imgu_pipe->nodes[inode].vdev_fmt.fmt.pix_mp,
>  					  sizeof(struct v4l2_pix_format_mplane),
> @@ -705,10 +712,6 @@ static int imgu_fmt(struct imgu_device *imgu, unsigned int pipe, int node,
>  			fmts[i] = &imgu_pipe->nodes[inode].vdev_fmt.fmt.pix_mp;
>  		}
>  
> -		/* CSS expects some format on OUT queue */
> -		if (i != IPU3_CSS_QUEUE_OUT &&
> -		    !imgu_pipe->nodes[inode].enabled)
> -			fmts[i] = NULL;
>  	}
>  
>  	if (!try) {
> 

-- 
Best regards,
Bingbu Cao
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
