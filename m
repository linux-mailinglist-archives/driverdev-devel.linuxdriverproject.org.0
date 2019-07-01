Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4D05C132
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 18:36:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D5E787A1D;
	Mon,  1 Jul 2019 16:36:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4qheRV9EU+4j; Mon,  1 Jul 2019 16:36:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC4B88789D;
	Mon,  1 Jul 2019 16:36:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1AEAA1BF2C9
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 16:36:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 16DB320408
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 16:36:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0trwhdPnCDhU for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 16:36:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp65.iad3b.emailsrvr.com (smtp65.iad3b.emailsrvr.com
 [146.20.161.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 3D346203A8
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 16:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1561999013;
 bh=gzMDCXuA/bxElJ668nYXgAP3lkjlBQnN5Dz2c8cSMIg=;
 h=Subject:To:From:Date:From;
 b=jNqj6+pvoe2Ka5HcwdVa/24U/yjvW+CI9+1yUX7HiPcfFjdg8Q/fASl0tH0bLLRed
 ZwRkSfhCAtptgl+6rWpVTZ/wXvac5xEVtXz07p++GIOi1eZrP1FOOuKxDk1j1n7jkA
 lDPobOkL2PzJDFe67e4k5G6RGZPzQHr1TAKcnn38=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1561999013;
 bh=gzMDCXuA/bxElJ668nYXgAP3lkjlBQnN5Dz2c8cSMIg=;
 h=Subject:To:From:Date:From;
 b=KIJc+10o3ha8ptPxj0aSFPqEojkYxFTXjzDvSiM+mbzxpIwkqec08ofeUlNfRPQ+5
 16vihPW7y/vbVJPuvPeuu4vkOz2OuOApY0K5h7tRg7NFaOEEbM5nsraCH6O/7DEGPE
 ipD6QBoY8IHha4mGgu+HNJjEIhWqDhxNJsHJwizo=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp17.relay.iad3b.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 7665FA0160; 
 Mon,  1 Jul 2019 12:36:52 -0400 (EDT)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.62] (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher AES128-SHA) by 0.0.0.0:465 (trex/5.7.12);
 Mon, 01 Jul 2019 12:36:53 -0400
Subject: Re: [PATCH v2 1/3] staging: comedi: amplc_dio200: Remove function
 clk_sce()
To: Nishka Dasgupta <nishkadg.linux@gmail.com>, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, hsweeten@visionengravers.com
References: <20190701070025.3838-1-nishkadg.linux@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <49f801c0-bc66-c395-8c30-38620cc3f739@mev.co.uk>
Date: Mon, 1 Jul 2019 17:36:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190701070025.3838-1-nishkadg.linux@gmail.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 01/07/2019 08:00, Nishka Dasgupta wrote:
> Remove function clk_sce as all it does is call clk_gat_sce.
> Modify call site of clk_sce to call clk_gat_sce instead.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
> Changes in v2:
> - Edit subject line to include driver name.
> 
>   drivers/staging/comedi/drivers/amplc_dio200_common.c | 8 +-------
>   1 file changed, 1 insertion(+), 7 deletions(-)

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
