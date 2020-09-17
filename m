Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 97CFB26D326
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 07:31:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E9F6A86F8E;
	Thu, 17 Sep 2020 05:31:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n4sxFlMY4uhc; Thu, 17 Sep 2020 05:31:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BDBAC86F73;
	Thu, 17 Sep 2020 05:31:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8751A1BF852
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 05:31:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 81320877F2
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 05:31:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bov2FU41yFHM for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 05:31:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from out30-131.freemail.mail.aliyun.com
 (out30-131.freemail.mail.aliyun.com [115.124.30.131])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1789787663
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 05:31:19 +0000 (UTC)
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R871e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04357;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=10; SR=0;
 TI=SMTPD_---0U9BclBt_1600320673; 
Received: from B-455UMD6M-2027.local(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0U9BclBt_1600320673) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 17 Sep 2020 13:31:14 +0800
Subject: Re: [PATCH v1] atomisp:pci/runtime/queue: modify the return error
 value
To: Xiaoliang Pang <dawning.pang@gmail.com>, mchehab@kernel.org,
 sakari.ailus@linux.intel.com, gregkh@linuxfoundation.org
References: <20200917034451.20897-1-dawning.pang@gmail.com>
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Message-ID: <75262d3f-eeb6-5531-a93d-85376236774a@linux.alibaba.com>
Date: Thu, 17 Sep 2020 13:31:13 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <20200917034451.20897-1-dawning.pang@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 alexander.deucher@amd.com, evan.quan@amd.com, christian.koenig@amd.com,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LGTM.

Reviewed-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>

On 9/17/20 11:44 AM, Xiaoliang Pang wrote:
> modify the return error value is -EDOM
> 
> Fixes: 2cac05dee6e30("drm/amd/powerplay: add the hw manager for vega12 (v4)")
> Cc: Evan Quan <evan.quan@amd.com>
> Signed-off-by: Xiaoliang Pang <dawning.pang@gmail.com>
> ---
>   .../staging/media/atomisp/pci/runtime/queue/src/queue_access.c  | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/runtime/queue/src/queue_access.c b/drivers/staging/media/atomisp/pci/runtime/queue/src/queue_access.c
> index fdca743c4ab7..424e7a15a389 100644
> --- a/drivers/staging/media/atomisp/pci/runtime/queue/src/queue_access.c
> +++ b/drivers/staging/media/atomisp/pci/runtime/queue/src/queue_access.c
> @@ -44,7 +44,7 @@ int ia_css_queue_load(
>   				   the value as zero. This causes division by 0
>   				   exception as the size is used in a modular
>   				   division operation. */
> -				return EDOM;
> +				return -EDOM;
>   			}
>   		}
>   
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
