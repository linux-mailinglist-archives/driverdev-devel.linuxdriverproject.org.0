Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 767A3A3CB3
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 18:55:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 66CDB87515;
	Fri, 30 Aug 2019 16:55:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HSJx9U89MZ9P; Fri, 30 Aug 2019 16:55:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 95755874F4;
	Fri, 30 Aug 2019 16:55:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B40441BF844
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 16:55:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B02A987F51
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 16:55:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QLsgqnnpEqaW for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 16:55:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2D41E87F40
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 16:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5tlZ2AJFJvBfkQ9+HB/A14V0Nr0ngU+sXRXPgXv+PBY=; b=h3Hti2HJW1XQj8WFYW5QPnxq3
 IFR5kBbNPZGUfJLZgkmP05rpU8kdnbpvD+FGCox/WaA3veCbBUk14Fo8QDppOCOnKanexpTcCpiIC
 sE6OdPzOcn3dr2hQ3CHqWtqGye3D73Fhvq0Q17vVPtbBGqh/n5zn/4vnANjKz08CE7A/cFoQUGoK+
 QAYOlb7eXFJYXO9Z2QKijMU6akEztn+q/Y5JPZP/3q07D2/M04Fi6WwQDEhKWs29h7U3KXFx3H23K
 us6o/usVO3kjrh5OHnBglnCka42lTRpqePeoTQmgPzOXE/Zj/25p3KVTeSiYirbxV1MnU40j6IPKo
 dF4fbKs+g==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i3kBR-00045V-TF; Fri, 30 Aug 2019 16:55:33 +0000
Date: Fri, 30 Aug 2019 09:55:33 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH v8 20/24] erofs: introduce generic decompression backend
Message-ID: <20190830165533.GA10909@infradead.org>
References: <20190815044155.88483-1-gaoxiang25@huawei.com>
 <20190815044155.88483-21-gaoxiang25@huawei.com>
 <20190830163534.GA29603@infradead.org>
 <20190830165217.GB107220@architecture4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830165217.GB107220@architecture4>
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
Cc: Jan Kara <jack@suse.cz>, Chao Yu <yuchao0@huawei.com>,
 Dave Chinner <david@fromorbit.com>, David Sterba <dsterba@suse.cz>,
 Miao Xie <miaoxie@huawei.com>, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Richard Weinberger <richard@nod.at>, Christoph Hellwig <hch@infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Amir Goldstein <amir73il@gmail.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Guifu <bluce.liguifu@huawei.com>,
 Fang Wei <fangwei1@huawei.com>, Pavel Machek <pavel@denx.de>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Aug 31, 2019 at 12:52:17AM +0800, Gao Xiang wrote:
> Hi Christoph,
> 
> On Fri, Aug 30, 2019 at 09:35:34AM -0700, Christoph Hellwig wrote:
> > On Thu, Aug 15, 2019 at 12:41:51PM +0800, Gao Xiang wrote:
> > > +static bool use_vmap;
> > > +module_param(use_vmap, bool, 0444);
> > > +MODULE_PARM_DESC(use_vmap, "Use vmap() instead of vm_map_ram() (default 0)");
> > 
> > And how would anyone know which to pick?
> 
> It has significant FIO benchmark difference on sequential read least on arm64...
> I have no idea whether all platform vm_map_ram() behaves better than vmap(),
> so I leave an option for users here...

vm_map_ram is supposed to generally behave better.  So if it doesn't
please report that that to the arch maintainer and linux-mm so that
they can look into the issue.  Having user make choices of deep down
kernel internals is just a horrible interface.

Please talk to maintainers of other bits of the kernel if you see issues
and / or need enhancements.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
