Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E59927BD
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 16:57:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 46F4785F78;
	Mon, 19 Aug 2019 14:57:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rvJKBv5KNucs; Mon, 19 Aug 2019 14:57:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 09D9685F61;
	Mon, 19 Aug 2019 14:57:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 53DD11BF36B
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 14:57:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5084F84B36
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 14:57:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R8TQ3n34mnbB for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 14:57:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9B92C84AFB
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 14:57:47 +0000 (UTC)
Received: from [192.168.0.101] (unknown [180.111.132.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 435172082A;
 Mon, 19 Aug 2019 14:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566226667;
 bh=iRcx/O1rt67I+bSqDqzSPYqUMMvn9C25iDR30t7jQdk=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=PTKQOnEO344zI2hda1QYiTrhurpmTkc+j7HQEkCB7cel1Ed+7sbtRI6wLlV2SdIcj
 DmyH5g3WB7ab7jLg0Mg/yfnldrIcKSk6xzEplSDfCWMmmyW4l3OnWRZndCXyn2k7su
 7Uwqj2wfqwti8gePVk9dVTzUTCDl8kJwCF85YU/o=
Subject: Re: [PATCH 5/6] staging: erofs: detect potential multiref due to
 corrupted images
To: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-fsdevel@vger.kernel.org
References: <20190819080218.GA42231@138>
 <20190819103426.87579-1-gaoxiang25@huawei.com>
 <20190819103426.87579-6-gaoxiang25@huawei.com>
From: Chao Yu <chao@kernel.org>
Message-ID: <f302710e-0c7f-8695-d692-be0c01c431ea@kernel.org>
Date: Mon, 19 Aug 2019 22:57:42 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190819103426.87579-6-gaoxiang25@huawei.com>
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
Cc: linux-erofs@lists.ozlabs.org, LKML <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, weidu.du@huawei.com, Fang Wei <fangwei1@huawei.com>,
 Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019-8-19 18:34, Gao Xiang wrote:
> As reported by erofs-utils fuzzer, currently, multiref
> (ondisk deduplication) hasn't been supported for now,
> we should forbid it properly.
> 
> Fixes: 3883a79abd02 ("staging: erofs: introduce VLE decompression support")
> Cc: <stable@vger.kernel.org> # 4.19+
> Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
> ---
>  drivers/staging/erofs/zdata.c | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/erofs/zdata.c b/drivers/staging/erofs/zdata.c
> index aae2f2b8353f..5b6fef5181af 100644
> --- a/drivers/staging/erofs/zdata.c
> +++ b/drivers/staging/erofs/zdata.c
> @@ -816,8 +816,16 @@ static int z_erofs_decompress_pcluster(struct super_block *sb,
>  			pagenr = z_erofs_onlinepage_index(page);
>  
>  		DBG_BUGON(pagenr >= nr_pages);
> -		DBG_BUGON(pages[pagenr]);
>  
> +		/*
> +		 * currently EROFS doesn't support multiref(dedup),
> +		 * so here erroring out one multiref page.
> +		 */
> +		if (unlikely(pages[pagenr])) {
> +			DBG_BUGON(1);
> +			SetPageError(pages[pagenr]);
> +			z_erofs_onlinepage_endio(pages[pagenr]);

Should set err meanwhile?

> +		}
>  		pages[pagenr] = page;
>  	}
>  	z_erofs_pagevec_ctor_exit(&ctor, true);
> @@ -849,7 +857,11 @@ static int z_erofs_decompress_pcluster(struct super_block *sb,
>  			pagenr = z_erofs_onlinepage_index(page);
>  
>  			DBG_BUGON(pagenr >= nr_pages);
> -			DBG_BUGON(pages[pagenr]);
> +			if (unlikely(pages[pagenr])) {
> +				DBG_BUGON(1);
> +				SetPageError(pages[pagenr]);
> +				z_erofs_onlinepage_endio(pages[pagenr]);
> +			}
>  			pages[pagenr] = page;
>  
>  			overlapped = true;
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
