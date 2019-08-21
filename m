Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAFD97E51
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 17:13:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2BA1220458;
	Wed, 21 Aug 2019 15:13:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8+m0KO-ougUq; Wed, 21 Aug 2019 15:13:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1B13520461;
	Wed, 21 Aug 2019 15:13:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E4F91BF352
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 15:13:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 04FB788253
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 15:13:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8WEerabjqG93 for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 15:13:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C084087EE9
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 15:13:38 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id B0EDB2104C;
 Wed, 21 Aug 2019 11:13:37 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Wed, 21 Aug 2019 11:13:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tobin.cc; h=date
 :from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=UXyep5gmvR7gzJOTpOWksLGbdCj
 w2vu09aQuJ/K1NOc=; b=nbdXa8G4twyAo8+ISYJ66Col/oqbNPt6AVX9SSYbLWi
 uAgVpzJjqkxbKQG67or8LQCT+IPbcLdn0o3xfgdFA9HPCTyZg3rugtLjV4L2ZaXg
 XqvcVOKqHJXR2qQlWcsKdBtQCWFUw/Q5lYfqyk4i4DE4ePTxDTK+QSof2+6+hyP7
 b/VyxgUN7aFVkUAaGgDOL1O4tPmaKyhUcdTOh4b+Bs2n5YmUTvIc0izCvPsmazeJ
 a3S8CIxpKnFQH8SA6HDd+gGal3X0dJuoZKtjO+HMOTMFcDxa6AOrjYIwq8hb0ZI9
 yqcLljMFXOFgyLw4fS1/LS5tBMycYqDOwjLzFmUdbbA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=UXyep5
 gmvR7gzJOTpOWksLGbdCjw2vu09aQuJ/K1NOc=; b=FIjJL6Gl6VLEJEiAyJNGPb
 kW2mq+V+KmKF+EFY5EHxYvMsHlVsJvq53dWdCdvtfL2Eh4wjCV5So9sx/1BrGMap
 tISxO+6XcL+FN4JMLbxH1lCehzf9H8fGJvmNPVtdN61zNw3YRlHAKYwVKabo/rBR
 y1u1SaDZXs1F5iaikSwoF5fSUANzT/m7iuUzY3vtErbJPsM9CFjTRJ7MfY8+sKxH
 qLtMTT0JFg8Dva+7vbWdE9NBVyhHRqbqC+uMIK2lEwVRdnmp5bA/CJtrcC+dr6wX
 fzW1FWM26hkD384cKHf6aRilJ+BzF7UEjZMXuZGvGQZjkWvNVdgvutCFNnxY7psQ
 ==
X-ME-Sender: <xms:oF9dXUSkEp3wmoKgiGcC_-NCiEf8Yaz7E7Hs1XSR8vpvF-Ea-4pdaA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudegfedgkeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 gfrhhlucfvnfffucdludehmdenucfjughrpeffhffvuffkfhggtggujgfofgesthdtredt
 ofervdenucfhrhhomhepfdfvohgsihhnucevrdcujfgrrhguihhnghdfuceomhgvsehtoh
 gsihhnrdgttgeqnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkphepjedtrddu
 ieeirdektddrudelgeenucfrrghrrghmpehmrghilhhfrhhomhepmhgvsehtohgsihhnrd
 gttgenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:oF9dXWXqaRTicXEg7Rivmu0jRibBbbqqORI_nNRcWfozKf6GdFT9RQ>
 <xmx:oF9dXdt7svvQyWlYmVn7uDEWhm9PafN5fBawrZOYea3lrhP-eqHAKg>
 <xmx:oF9dXUuunXXGCREuLqDauNdQ8nT2rlMtk2sJKEpeXIMId0yn5pOhHQ>
 <xmx:oV9dXb8Y1JlYJaa2pMr28JqRZtlvXVatDBAwfCMod5lqhbSm41GA5w>
Received: from localhost (wsip-70-166-80-194.sd.sd.cox.net [70.166.80.194])
 by mail.messagingengine.com (Postfix) with ESMTPA id 81450D6005A;
 Wed, 21 Aug 2019 11:13:36 -0400 (EDT)
Date: Wed, 21 Aug 2019 08:13:35 -0700
From: "Tobin C. Harding" <me@tobin.cc>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH 2/2] staging/erofs: Balanced braces around a few
 conditional statements.
Message-ID: <20190821151241.GF12461@ares>
References: <1566346700-28536-1-git-send-email-caitlynannefinn@gmail.com>
 <1566346700-28536-3-git-send-email-caitlynannefinn@gmail.com>
 <7aaca457a3d3feb951082d0659eec568a908971f.camel@perches.com>
 <20190821023122.GA159802@architecture4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821023122.GA159802@architecture4>
X-Mailer: Mutt 1.9.4 (2018-02-28)
User-Agent: Mutt/1.9.4 (2018-02-28)
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
 Chao Yu <yuchao0@huawei.com>, linux-kernel@vger.kernel.org,
 Joe Perches <joe@perches.com>, linux-erofs@lists.ozlabs.org,
 Caitlyn <caitlynannefinn@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 21, 2019 at 10:31:22AM +0800, Gao Xiang wrote:
> On Tue, Aug 20, 2019 at 07:26:46PM -0700, Joe Perches wrote:
> > On Tue, 2019-08-20 at 20:18 -0400, Caitlyn wrote:
> > > Balanced braces to fix some checkpath warnings in inode.c and
> > > unzip_vle.c
> > []
> > > diff --git a/drivers/staging/erofs/unzip_vle.c b/drivers/staging/erofs/unzip_vle.c
> > []
> > > @@ -915,21 +915,21 @@ static int z_erofs_vle_unzip(struct super_block *sb,
> > >  	mutex_lock(&work->lock);
> > >  	nr_pages = work->nr_pages;
> > >  
> > > -	if (likely(nr_pages <= Z_EROFS_VLE_VMAP_ONSTACK_PAGES))
> > > +	if (likely(nr_pages <= Z_EROFS_VLE_VMAP_ONSTACK_PAGES)) {
> > >  		pages = pages_onstack;
> > > -	else if (nr_pages <= Z_EROFS_VLE_VMAP_GLOBAL_PAGES &&
> > > -		 mutex_trylock(&z_pagemap_global_lock))
> > > +	} else if (nr_pages <= Z_EROFS_VLE_VMAP_GLOBAL_PAGES &&
> > > +		 mutex_trylock(&z_pagemap_global_lock)) {
> > 
> > Extra space after tab
> 
> There is actually balanced braces in linux-next.
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/staging/erofs/zdata.c#n762

Which tree did these changes go in through please Gao?  I believe
Caitlyn was working off of the staging-next branch of Greg's staging
tree.

thanks,
Tobin.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
