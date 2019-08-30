Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC91A3AC4
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 17:46:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 20AE187EAE;
	Fri, 30 Aug 2019 15:46:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lkgPbFD5RcRE; Fri, 30 Aug 2019 15:46:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AF7C787EA8;
	Fri, 30 Aug 2019 15:46:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7DE911BF284
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 15:46:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7AF6887E95
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 15:46:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sRseG2X5ro-9 for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 15:46:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0313C87E3E
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 15:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wePmmyRAqzc9E8AvYvRy4CjZhcBEJxH2FmSPiZPoaEw=; b=ACtDIJSRM2EBOX+MHFb+Pg7Gj
 okiQGHIbGoDwFEpUIcFKrJ5P2TzxRrH8kQt1x1ttlmn8Hi6EYwnOS5wxfPX12SyRasM7GrLFcfwGx
 SpmwqgAHfveVdSQRIdU/UNLxWv8nu5nF0S836rOWWjtWiQyyofMPsjTctBlFlFLwk0O+rjXPPnoeG
 0IU3703HDn+vjNLkMF6/eqk5amnwC0IUBIaE9ezBMcoSxbwHmp0lqRizsJo4jiPkejwxITaV14R6V
 VyhLyMS9aa2J98Zbwpo/kX8fZcwV27B+kZWNwBCvhPEgnijY51i27p6dW51LFFz8No1uGrBKNHO6J
 1NLVlItmg==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i3j5z-0005dZ-2P; Fri, 30 Aug 2019 15:45:51 +0000
Date: Fri, 30 Aug 2019 08:45:51 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH v2 2/7] erofs: some marcos are much more readable as a
 function
Message-ID: <20190830154551.GA11571@infradead.org>
References: <20190830030040.10599-1-gaoxiang25@huawei.com>
 <20190830030040.10599-2-gaoxiang25@huawei.com>
 <5b2ecf5cec1a6aa3834e9af41886a7fcb18ae86a.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5b2ecf5cec1a6aa3834e9af41886a7fcb18ae86a.camel@perches.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
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
Cc: devel@driverdev.osuosl.org, Chao Yu <chao@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <yuchao0@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, weidu.du@huawei.com,
 Fang Wei <fangwei1@huawei.com>, linux-erofs@lists.ozlabs.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 29, 2019 at 08:16:27PM -0700, Joe Perches wrote:
> > -		sizeof(__u32) * ((__count) - 1); })
> > +static inline unsigned int erofs_xattr_ibody_size(__le16 d_icount)
> > +{
> > +	unsigned int icount = le16_to_cpu(d_icount);
> > +
> > +	if (!icount)
> > +		return 0;
> > +
> > +	return sizeof(struct erofs_xattr_ibody_header) +
> > +		sizeof(__u32) * (icount - 1);
> 
> Maybe use struct_size()?

Declaring a variable that is only used for struct_size is rather ugly.
But while we are nitpicking: you don't need to byteswap to check for 0,
so the local variable could be avoided.

Also what is that magic -1 for?  Normally we use that for the
deprecated style where a variable size array is declared using
varname[1], but that doesn't seem to be the case for erofs.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
