Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1B7A5660
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 14:40:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 925AA86054;
	Mon,  2 Sep 2019 12:40:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vrvHhxf_emBm; Mon,  2 Sep 2019 12:40:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 62CC085FD5;
	Mon,  2 Sep 2019 12:40:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 57AAC1BF359
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:40:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 54BB4863D0
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:40:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yjTHilUe53Kx for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 12:40:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0AFFD863B2
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 12:40:32 +0000 (UTC)
Received: from DGGEMM402-HUB.china.huawei.com (unknown [172.30.72.54])
 by Forcepoint Email with ESMTP id 01EDAA66FCBF3CE4F920;
 Mon,  2 Sep 2019 20:40:31 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM402-HUB.china.huawei.com (10.3.20.210) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 2 Sep 2019 20:40:30 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Mon, 2 Sep 2019 20:40:30 +0800
Date: Mon, 2 Sep 2019 20:39:37 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH 16/21] erofs: kill magic underscores
Message-ID: <20190902123937.GA17916@architecture4>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190901055130.30572-1-hsiangkao@aol.com>
 <20190901055130.30572-17-hsiangkao@aol.com>
 <20190902122627.GN15931@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902122627.GN15931@infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme713-chm.china.huawei.com (10.1.199.109) To
 dggeme762-chm.china.huawei.com (10.3.19.108)
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org, Chao Yu <yuchao0@huawei.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, Chao Yu <chao@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christoph,

On Mon, Sep 02, 2019 at 05:26:27AM -0700, Christoph Hellwig wrote:
> >  
> > -	vi->datamode = __inode_data_mapping(advise);
> > +	vi->datamode = erofs_inode_data_mapping(advise);
> >  
> >  	if (vi->datamode >= EROFS_INODE_LAYOUT_MAX) {
> 
> While you are at it can we aim for some naming consistency here?  The
> inode member is called is called datamode, the helper is called
> inode_data_mapping, and the enum uses layout?  To me data_layout seems
> most descriptive, datamode is probably ok, but mapping seems very
> misleading given that we've already overloaded that terms for multiple
> other uses.

the naming changed for many times...
Initially, it was called "data_mapping_mode", and I think it was too long
(and as you said confusing, since confusing "mapping" meaning, sorry about
my awkward  English) so I simplified some into datamode....

In a word, I will change all data_mapping_mode into datalayout....

> 
> And while we are at naming choices - maybe i_format might be
> a better name for the i_advise field in the on-disk inode?

That is a good idea, I will resend v2 to address it...

> 
> > +	if (erofs_inode_version(advise) == EROFS_INODE_LAYOUT_V2) {
> 
> I still need to wade through the old thread - but didn't you say this
> wasn't really a new vs old version but a compat vs full inode?  Maybe
> the names aren't that suitable either?

Could you kindly give some suggestions for better naming about it?
there are all supported by EROFS... (Actually we only mainly use v1...)

> 
> >  		struct erofs_inode_v2 *v2 = data;
> >  
> >  		vi->inode_isize = sizeof(struct erofs_inode_v2);
> > @@ -58,7 +58,7 @@ static int read_inode(struct inode *inode, void *data)
> >  		/* total blocks for compressed files */
> >  		if (erofs_inode_is_data_compressed(vi->datamode))
> >  			nblks = le32_to_cpu(v2->i_u.compressed_blocks);
> > -	} else if (__inode_version(advise) == EROFS_INODE_LAYOUT_V1) {
> > +	} else if (erofs_inode_version(advise) == EROFS_INODE_LAYOUT_V1) {
> 
> Also a lot of code would use a switch statements to switch for different
> matches on the same value instead of chained if/else if/else if
> statements.

I will change it as well.

> 
> > +#define erofs_bitrange(x, bit, bits) (((x) >> (bit)) & ((1 << (bits)) - 1))
> 
> > +#define erofs_inode_version(advise)	\
> > +	erofs_bitrange(advise, EROFS_I_VERSION_BIT, EROFS_I_VERSION_BITS)
> >  
> > +#define erofs_inode_data_mapping(advise)	\
> > +	erofs_bitrange(advise, EROFS_I_DATA_MAPPING_BIT, \
> > +		       EROFS_I_DATA_MAPPING_BITS)
> 
> All these should probably be inline functions.

Will fix...

Thanks,
Gao Xiang

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
