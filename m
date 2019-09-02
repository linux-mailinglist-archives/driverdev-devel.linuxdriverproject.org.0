Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 04597A569A
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 14:47:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B9F1985FB6;
	Mon,  2 Sep 2019 12:47:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xkin8i26NdYl; Mon,  2 Sep 2019 12:47:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 919B385EC1;
	Mon,  2 Sep 2019 12:47:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A00471BF359
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:47:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9D25087D6E
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:47:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ur0rgUZlRQ+I for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 12:47:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5266387812
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 12:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lbUBQKgUDKPWb0RcIaYnoeNg0UvfzO7NgYVDACBffsE=; b=lhhhD47csSfZu68It2L5tINLt
 17W6y9t9pkSzoknsICEdFrT/qOji3pNE8RECrQchEr41cPbKf5RQsflQse9RyCxUlI47EBjKeEX4I
 l2rktPQdIPFQak1TMStJSEoIzfZ+tDtO/eReMV1lyPgF2bGtOJzeD+SHayMqBAQxSBw8UrsW7xEl9
 ZI6g2LEbKSjJlf5IC93Hz9DfowybXWR2pO9x5l7XYvXXmCME6Yumpg/MKMbu8lYYyAPOGlVTUM2lz
 4Z5LxY99DB7+b3p3WuQBr8DosrDjPliSvclmzL5OrrUwTpQNicLRU0GoZ5ze4PFIbg+uC4h16+9Eq
 LTBkhiI4w==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i4lk9-0002Y1-1W; Mon, 02 Sep 2019 12:47:37 +0000
Date: Mon, 2 Sep 2019 05:47:37 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH 07/21] erofs: use erofs_inode naming
Message-ID: <20190902124737.GB8369@infradead.org>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190901055130.30572-1-hsiangkao@aol.com>
 <20190901055130.30572-8-hsiangkao@aol.com>
 <20190902121021.GG15931@infradead.org>
 <20190902121306.GA2664@architecture4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902121306.GA2664@architecture4>
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
Cc: devel@driverdev.osuosl.org, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Christoph Hellwig <hch@infradead.org>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, Chao Yu <chao@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 02, 2019 at 08:13:06PM +0800, Gao Xiang wrote:
> Hi Christoph,
> 
> On Mon, Sep 02, 2019 at 05:10:21AM -0700, Christoph Hellwig wrote:
> > >  {
> > > -	struct erofs_vnode *vi = ptr;
> > > -
> > > -	inode_init_once(&vi->vfs_inode);
> > > +	inode_init_once(&((struct erofs_inode *)ptr)->vfs_inode);
> > 
> > Why doesn't this use EROFS_I?  This looks a little odd.
> 
> Thanks for your reply and suggestion...
> EROFS_I seems the revert direction ---> inode to erofs_inode
> here we need "erofs_inode" to inode...
> 
> Am I missing something?.... Hope not....

No, you are not.  But the cast still looks odd.  Why not:

	struct erofs_inode *ei = ptr;

	inode_init_once(&ei->vfs_inode);
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
