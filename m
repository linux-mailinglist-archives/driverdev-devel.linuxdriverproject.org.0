Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2457CE1549
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Oct 2019 11:07:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D6D8C8638E;
	Wed, 23 Oct 2019 09:07:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2FHYpwzZpO5G; Wed, 23 Oct 2019 09:07:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D2F1A862FC;
	Wed, 23 Oct 2019 09:07:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C52581BF5B5
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 09:07:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C2572862FC
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 09:07:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pnfo3FSveHgq for <devel@linuxdriverproject.org>;
 Wed, 23 Oct 2019 09:07:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp122.ord1d.emailsrvr.com (smtp122.ord1d.emailsrvr.com
 [184.106.54.122])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 09D09862E4
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 09:07:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1571821643;
 bh=evRO7seMrvDvO+KFOLaqik2PBghLNKezlXn4gdXjNCs=;
 h=Subject:To:From:Date:From;
 b=JsFt4YeAz1Pyo4qGFDuIL6sqJLAfaMxuUIa1O88PmBo0mCtlatJsF03eyzPE3WGcy
 ffvxsEOeMJ6MZtHkhOG8iJX8aYbbRG5axGvWnJOtquMh/Nn+8NElgnc2lKHsxVI41e
 S0V1FsabmGukHnB1G5bULgQ4slx1TWP9kI0ahY4g=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp16.relay.ord1d.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id C1E39400A9; 
 Wed, 23 Oct 2019 05:07:22 -0400 (EDT)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.173] (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher AES128-SHA) by 0.0.0.0:465 (trex/5.7.12);
 Wed, 23 Oct 2019 05:07:23 -0400
Subject: Re: [PATCH -next] staging: comedi: remove unused variable
 'route_table_size'
To: YueHaibing <yuehaibing@huawei.com>, hsweeten@visionengravers.com,
 gregkh@linuxfoundation.org
References: <20191023075206.33088-1-yuehaibing@huawei.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <516d7146-fe16-6d8e-9812-038280c256df@mev.co.uk>
Date: Wed, 23 Oct 2019 10:07:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191023075206.33088-1-yuehaibing@huawei.com>
Content-Language: en-GB
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 23/10/2019 08:52, YueHaibing wrote:
> drivers/staging/comedi/drivers/ni_routes.c:52:21: warning:
>   route_table_size defined but not used [-Wunused-const-variable=]
> 
> It is never used since introduction.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>   drivers/staging/comedi/drivers/ni_routes.c | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/ni_routes.c b/drivers/staging/comedi/drivers/ni_routes.c
> index eb61494..673d732 100644
> --- a/drivers/staging/comedi/drivers/ni_routes.c
> +++ b/drivers/staging/comedi/drivers/ni_routes.c
> @@ -49,8 +49,6 @@
>   /* Helper for accessing data. */
>   #define RVi(table, src, dest)	((table)[(dest) * NI_NUM_NAMES + (src)])
>   
> -static const size_t route_table_size = NI_NUM_NAMES * NI_NUM_NAMES;
> -
>   /*
>    * Find the proper route_values and ni_device_routes tables for this particular
>    * device.
> 

Looks good, thanks!

Reviewed-by: Ian Abbott <abbotti@mev.co.uk>

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
