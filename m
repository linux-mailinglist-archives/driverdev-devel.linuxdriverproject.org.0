Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9365F96F5B
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 04:19:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3B79288665;
	Wed, 21 Aug 2019 02:19:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s06Ttp3f8CoW; Wed, 21 Aug 2019 02:19:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A1A628850C;
	Wed, 21 Aug 2019 02:19:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 872421BF342
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 02:19:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 83D3A8850C
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 02:19:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k9HC-3+H+FVw for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 02:19:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0B6828848F
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 02:19:47 +0000 (UTC)
Received: from localhost (li1825-44.members.linode.com [172.104.248.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C84EE22DA7;
 Wed, 21 Aug 2019 02:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566353986;
 bh=99ObL1cP+jG7BwJuhGr2xRiHMfm0AyVNnY16uyz8mng=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ru6a2+QADULs0wwoFX4YQsebNK/5qd6Kk+kCW16FnuAC9nOB84MNYRAHcouXWGbFA
 jxDDlseEOkfLWKdjTvog2K/cs7Lp3dY0OF8fKx5O3Mim0AfBj86ctChYFeQLuM/7Lu
 fYDzulv0SOkwznjOgALPI+7qG9dTtb1IsoG+OBUU=
Date: Tue, 20 Aug 2019 19:19:42 -0700
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Chao Yu <chao@kernel.org>
Subject: Re: [PATCH 5/6] staging: erofs: detect potential multiref due to
 corrupted images
Message-ID: <20190821021942.GA14087@kroah.com>
References: <20190819080218.GA42231@138>
 <20190819103426.87579-1-gaoxiang25@huawei.com>
 <20190819103426.87579-6-gaoxiang25@huawei.com>
 <f302710e-0c7f-8695-d692-be0c01c431ea@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f302710e-0c7f-8695-d692-be0c01c431ea@kernel.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <yuchao0@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, weidu.du@huawei.com, Fang Wei <fangwei1@huawei.com>,
 linux-fsdevel@vger.kernel.org, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 19, 2019 at 10:57:42PM +0800, Chao Yu wrote:
> On 2019-8-19 18:34, Gao Xiang wrote:
> > As reported by erofs-utils fuzzer, currently, multiref
> > (ondisk deduplication) hasn't been supported for now,
> > we should forbid it properly.
> > 
> > Fixes: 3883a79abd02 ("staging: erofs: introduce VLE decompression support")
> > Cc: <stable@vger.kernel.org> # 4.19+
> > Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
> > ---
> >  drivers/staging/erofs/zdata.c | 16 ++++++++++++++--
> >  1 file changed, 14 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/erofs/zdata.c b/drivers/staging/erofs/zdata.c
> > index aae2f2b8353f..5b6fef5181af 100644
> > --- a/drivers/staging/erofs/zdata.c
> > +++ b/drivers/staging/erofs/zdata.c
> > @@ -816,8 +816,16 @@ static int z_erofs_decompress_pcluster(struct super_block *sb,
> >  			pagenr = z_erofs_onlinepage_index(page);
> >  
> >  		DBG_BUGON(pagenr >= nr_pages);
> > -		DBG_BUGON(pages[pagenr]);
> >  
> > +		/*
> > +		 * currently EROFS doesn't support multiref(dedup),
> > +		 * so here erroring out one multiref page.
> > +		 */
> > +		if (unlikely(pages[pagenr])) {
> > +			DBG_BUGON(1);
> > +			SetPageError(pages[pagenr]);
> > +			z_erofs_onlinepage_endio(pages[pagenr]);
> 
> Should set err meanwhile?

I've skipped this patch in this series for now, and applied the rest.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
