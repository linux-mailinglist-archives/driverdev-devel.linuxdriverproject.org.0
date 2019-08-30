Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C774A3B0A
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 17:53:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B28E687F02;
	Fri, 30 Aug 2019 15:53:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ch0T514zUIoo; Fri, 30 Aug 2019 15:53:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 625E787EDD;
	Fri, 30 Aug 2019 15:53:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EADEC1BF284
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 15:53:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E7EA4873CB
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 15:53:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j7MbBASVhbRR for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 15:53:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DAFB2873B5
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 15:53:16 +0000 (UTC)
Received: from DGGEMM403-HUB.china.huawei.com (unknown [172.30.72.53])
 by Forcepoint Email with ESMTP id 35A7FA282F3B47C6C9FA;
 Fri, 30 Aug 2019 23:53:12 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM403-HUB.china.huawei.com (10.3.20.211) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 30 Aug 2019 23:53:11 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Fri, 30 Aug 2019 23:53:11 +0800
Date: Fri, 30 Aug 2019 23:52:23 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v2 2/7] erofs: some marcos are much more readable as a
 function
Message-ID: <20190830155223.GA69026@architecture4>
References: <20190830030040.10599-1-gaoxiang25@huawei.com>
 <20190830030040.10599-2-gaoxiang25@huawei.com>
 <5b2ecf5cec1a6aa3834e9af41886a7fcb18ae86a.camel@perches.com>
 <20190830154551.GA11571@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830154551.GA11571@infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme712-chm.china.huawei.com (10.1.199.108) To
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
Cc: devel@driverdev.osuosl.org, Chao Yu <chao@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <yuchao0@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 weidu.du@huawei.com, Fang Wei <fangwei1@huawei.com>,
 Joe Perches <joe@perches.com>, linux-erofs@lists.ozlabs.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christoph,

On Fri, Aug 30, 2019 at 08:45:51AM -0700, Christoph Hellwig wrote:
> On Thu, Aug 29, 2019 at 08:16:27PM -0700, Joe Perches wrote:
> > > -		sizeof(__u32) * ((__count) - 1); })
> > > +static inline unsigned int erofs_xattr_ibody_size(__le16 d_icount)
> > > +{
> > > +	unsigned int icount = le16_to_cpu(d_icount);
> > > +
> > > +	if (!icount)
> > > +		return 0;
> > > +
> > > +	return sizeof(struct erofs_xattr_ibody_header) +
> > > +		sizeof(__u32) * (icount - 1);
> > 
> > Maybe use struct_size()?
> 
> Declaring a variable that is only used for struct_size is rather ugly.
> But while we are nitpicking: you don't need to byteswap to check for 0,
> so the local variable could be avoided.
> 
> Also what is that magic -1 for?  Normally we use that for the
> deprecated style where a variable size array is declared using
> varname[1], but that doesn't seem to be the case for erofs.

I have to explain more about this (sorry about my awkward English)
here i_xattr_icount is to represent the size of xattr field of erofs, as follows:
 0 - no xattr at all (no erofs_xattr_ibody_header)
  _______
 | inode |
 |_______|

 1 - a erofs_xattr_ibody_header (12 byte) + 4-byte (shared + inline) xattrs
 2 - a erofs_xattr_ibody_header (12 byte) + 8-byte (shared + inline) xattrs
 ....
 (that is the magic -1 means...)

In order to keep the number continuously, actually the content could be
 an array of shared_xattr_id and
 an inline xattr combination (struct erofs_xattr_entry + name + value)

Thanks,
Gao Xiang

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
