Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DC60091438
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 04:54:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DFFCE20517;
	Sun, 18 Aug 2019 02:53:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Wpp29ttTEmR; Sun, 18 Aug 2019 02:53:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 06E7120551;
	Sun, 18 Aug 2019 02:53:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0CB4B1BF319
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 02:53:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 040DB877E2
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 02:53:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eHRlfAYHnzkr for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 02:53:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1E24B876C3
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 02:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VufZf6qCH9xcIIdF+ObXMZETkYlQIHbI4jbwUKWJwWk=; b=Bp4v8HCDrXwCR1yaowmeSvvim
 jsQemrQQbCwT9+GMYnLRvkwiyV3cQMWJOlD/IZawDkYN72y6oXS+Ki9WiFyIcSJSN1wIEWMVa7zHb
 Aytw579lQckj7d075U1MrLG4/B1AlWWGu/VRQBeuv3lP5ZsUch5D8uiNkGyrxIvF59m9YEvCiQnII
 lWFnKQWEMTKJTiZe++NeydgRrmcBeDMKa3ZCzFIzLVuaA6zeTsHIRFIoFKqCNUjpFdoADzEo2RdEn
 Hx0yTipxJZm36fdl1dX9ogvKV8+9TkSSDKd1IO1NNkmaNshpIdA/a3DQPe1xSXlmsyfXD0qNRr1Da
 lG22ScPOA==;
Received: from willy by bombadil.infradead.org with local (Exim 4.92 #3 (Red
 Hat Linux)) id 1hzBK7-0006nl-8P; Sun, 18 Aug 2019 02:53:39 +0000
Date: Sat, 17 Aug 2019 19:53:39 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Gao Xiang <hsiangkao@aol.com>
Subject: Re: [PATCH v2] staging: erofs: fix an error handling in
 erofs_readdir()
Message-ID: <20190818025339.GB14592@bombadil.infradead.org>
References: <20190818014835.5874-1-hsiangkao@aol.com>
 <20190818015631.6982-1-hsiangkao@aol.com>
 <20190818022055.GA14592@bombadil.infradead.org>
 <20190818023240.GA7739@hsiangkao-HP-ZHAN-66-Pro-G1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818023240.GA7739@hsiangkao-HP-ZHAN-66-Pro-G1>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
 Richard Weinberger <richard@nod.at>, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <yuchao0@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, Fang Wei <fangwei1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Aug 18, 2019 at 10:32:45AM +0800, Gao Xiang wrote:
> On Sat, Aug 17, 2019 at 07:20:55PM -0700, Matthew Wilcox wrote:
> > On Sun, Aug 18, 2019 at 09:56:31AM +0800, Gao Xiang wrote:
> > > @@ -82,8 +82,12 @@ static int erofs_readdir(struct file *f, struct dir_context *ctx)
> > >  		unsigned int nameoff, maxsize;
> > >  
> > >  		dentry_page = read_mapping_page(mapping, i, NULL);
> > > -		if (IS_ERR(dentry_page))
> > > -			continue;
> > > +		if (IS_ERR(dentry_page)) {
> > > +			errln("fail to readdir of logical block %u of nid %llu",
> > > +			      i, EROFS_V(dir)->nid);
> > > +			err = PTR_ERR(dentry_page);
> > > +			break;
> > 
> > I don't think you want to use the errno that came back from
> > read_mapping_page() (which is, I think, always going to be -EIO).
> > Rather you want -EFSCORRUPTED, at least if I understand the recent
> > patches to ext2/ext4/f2fs/xfs/...
> 
> Thanks for your reply and noticing this. :)
> 
> Yes, as I talked with you about read_mapping_page() in a xfs related
> topic earlier, I think I fully understand what returns here.
> 
> I actually had some concern about that before sending out this patch.
> You know the status is
>    PG_uptodate is not set and PG_error is set here.
> 
> But we cannot know it is actually a disk read error or due to
> corrupted images (due to lack of page flags or some status, and
> I think it could be a waste of page structure space for such
> corrupted image or disk error)...
> 
> And some people also like propagate errors from insiders...
> (and they could argue about err = -EFSCORRUPTED as well..)
> 
> I'd like hear your suggestion about this after my words above?
> still return -EFSCORRUPTED?

I don't think it matters whether it's due to a disk error or a corrupted
image.  We can't read the directory entry, so we should probably return
-EFSCORRUPTED.  Thinking about it some more, read_mapping_page() can
also return -ENOMEM, so it should probably look something like this:

		err = 0;
		if (dentry_page == ERR_PTR(-ENOMEM))
			err = -ENOMEM;
		else if (IS_ERR(dentry_page)) {
			errln("fail to readdir of logical block %u of nid %llu",
			      i, EROFS_V(dir)->nid);
			err = -EFSCORRUPTED;
		}

		if (err)
			break;
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
