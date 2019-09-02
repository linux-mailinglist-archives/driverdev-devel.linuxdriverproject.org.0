Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 193A3A55E5
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 14:26:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3349685FF3;
	Mon,  2 Sep 2019 12:26:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G7WCXfQLe7cp; Mon,  2 Sep 2019 12:26:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EC25885FB6;
	Mon,  2 Sep 2019 12:26:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CC6AB1BF359
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:26:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C746385FBA
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:26:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 02Gepg0lUl6Z for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 12:26:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AF48485FB6
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 12:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=svUkB0dxi2TuM3Fl0ZlJgO11nAP1/canIdeXNo7nLhk=; b=qLGt2hfPD/A3ccp43tsVxEP+x
 jUUBvQ2XSyyvgDYe6TrtxZgmxG16PIqrFXwYQD0yu1nwGhSCRVMgr+BdkXiKj/jUe/2dQ5P7VV3pB
 mpwJArbHQTIKn0n527nkd8xUQJNtgNtVG8et41zGsCgOkMzEOlCzz45lNssyF4O0wqmBgl6Ukn6n/
 8ofbDkQMFNYqoFQnvcgy+ixWOpyh3PXymSyceVE8mrA4rAByp/dH+mwABAy8SkQ5g83bFmoNvqLB1
 XOC0h+5IQadmsREIEoQJIxKs+Dac3mR4wbOu6xrUwlc8scnfiePGNF1jWbmmkDViTqxZwhaFQrhQG
 w8IvWePTA==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i4lPf-00042m-Hk; Mon, 02 Sep 2019 12:26:27 +0000
Date: Mon, 2 Sep 2019 05:26:27 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Gao Xiang <hsiangkao@aol.com>
Subject: Re: [PATCH 16/21] erofs: kill magic underscores
Message-ID: <20190902122627.GN15931@infradead.org>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190901055130.30572-1-hsiangkao@aol.com>
 <20190901055130.30572-17-hsiangkao@aol.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190901055130.30572-17-hsiangkao@aol.com>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chao Yu <yuchao0@huawei.com>,
 Christoph Hellwig <hch@infradead.org>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

>  
> -	vi->datamode = __inode_data_mapping(advise);
> +	vi->datamode = erofs_inode_data_mapping(advise);
>  
>  	if (vi->datamode >= EROFS_INODE_LAYOUT_MAX) {

While you are at it can we aim for some naming consistency here?  The
inode member is called is called datamode, the helper is called
inode_data_mapping, and the enum uses layout?  To me data_layout seems
most descriptive, datamode is probably ok, but mapping seems very
misleading given that we've already overloaded that terms for multiple
other uses.

And while we are at naming choices - maybe i_format might be
a better name for the i_advise field in the on-disk inode?

> +	if (erofs_inode_version(advise) == EROFS_INODE_LAYOUT_V2) {

I still need to wade through the old thread - but didn't you say this
wasn't really a new vs old version but a compat vs full inode?  Maybe
the names aren't that suitable either?

>  		struct erofs_inode_v2 *v2 = data;
>  
>  		vi->inode_isize = sizeof(struct erofs_inode_v2);
> @@ -58,7 +58,7 @@ static int read_inode(struct inode *inode, void *data)
>  		/* total blocks for compressed files */
>  		if (erofs_inode_is_data_compressed(vi->datamode))
>  			nblks = le32_to_cpu(v2->i_u.compressed_blocks);
> -	} else if (__inode_version(advise) == EROFS_INODE_LAYOUT_V1) {
> +	} else if (erofs_inode_version(advise) == EROFS_INODE_LAYOUT_V1) {

Also a lot of code would use a switch statements to switch for different
matches on the same value instead of chained if/else if/else if
statements.

> +#define erofs_bitrange(x, bit, bits) (((x) >> (bit)) & ((1 << (bits)) - 1))

> +#define erofs_inode_version(advise)	\
> +	erofs_bitrange(advise, EROFS_I_VERSION_BIT, EROFS_I_VERSION_BITS)
>  
> +#define erofs_inode_data_mapping(advise)	\
> +	erofs_bitrange(advise, EROFS_I_DATA_MAPPING_BIT, \
> +		       EROFS_I_DATA_MAPPING_BITS)

All these should probably be inline functions.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
