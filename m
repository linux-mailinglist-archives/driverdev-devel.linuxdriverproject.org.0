Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7246B91877
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 19:47:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 17398856C8;
	Sun, 18 Aug 2019 17:47:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SpcWStpGpJ4b; Sun, 18 Aug 2019 17:47:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 008C78558D;
	Sun, 18 Aug 2019 17:47:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AB69A1BF31A
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 17:47:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A7CBF85582
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 17:47:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qyHzqU0To9oQ for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 17:47:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8877F84D3B
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 17:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mD1gjFdZeddiT1lyKp4zbNta586P6sG7Wqwm56zb/+M=; b=cwMKV/Q6FbyRV+Q4pjP4jU6SQ
 bD4hwrBEbAdfkZuMb6Si+KorGu2u+uRQpnLID6Nlv394avOs58QdPY6/7PmFEZX5MiB7b3GKnQDb9
 9XI4JzoHO6cA7VND75mnlARaUv1kYqsP6m8Hx+TowvJbMeSgvnNqaZ2A4eD1Ap461Q5tAiyEfi4Hg
 GYuoB9f/O1dW+wlwuNZsy0BoRMDqHdwthV/4EWgLFroGr8it1xiExbC8zJhzuxwumuo8B7lTACgQ/
 xE+dPGureFbXv5+EPX2+mwRkHxNSqdhShW8dpaQ6JbwmizbGPdwF4TWKC73X9HuHuQn5OpOY+FACS
 KhZd8MclA==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hzPGg-0004ac-SC; Sun, 18 Aug 2019 17:47:02 +0000
Date: Sun, 18 Aug 2019 10:47:02 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Christoph Hellwig <hch@infradead.org>, "Theodore Y. Ts'o" <tytso@mit.edu>,
 Richard Weinberger <richard@nod.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gao Xiang <hsiangkao@aol.com>, Jan Kara <jack@suse.cz>,
 Chao Yu <yuchao0@huawei.com>, Dave Chinner <david@fromorbit.com>,
 David Sterba <dsterba@suse.cz>, Miao Xie <miaoxie@huawei.com>,
 devel <devel@driverdev.osuosl.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Darrick <darrick.wong@oracle.com>,
 Amir Goldstein <amir73il@gmail.com>,
 linux-erofs <linux-erofs@lists.ozlabs.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Jaegeuk Kim <jaegeuk@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 Pavel Machek <pavel@denx.de>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH] erofs: move erofs out of staging
Message-ID: <20190818174702.GA17633@infradead.org>
References: <1405781266.69008.1566116210649.JavaMail.zimbra@nod.at>
 <20190818084521.GA17909@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1133002215.69049.1566119033047.JavaMail.zimbra@nod.at>
 <20190818090949.GA30276@kroah.com>
 <790210571.69061.1566120073465.JavaMail.zimbra@nod.at>
 <20190818151154.GA32157@mit.edu>
 <20190818155812.GB13230@infradead.org>
 <20190818161638.GE1118@sol.localdomain>
 <20190818162201.GA16269@infradead.org>
 <20190818172938.GA14413@sol.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818172938.GA14413@sol.localdomain>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Aug 18, 2019 at 10:29:38AM -0700, Eric Biggers wrote:
> Not sure what you're even disagreeing with, as I *do* expect new filesystems to
> be held to a high standard, and to be written with the assumption that the
> on-disk data may be corrupted or malicious.  We just can't expect the bar to be
> so high (e.g. no bugs) that it's never been attained by *any* filesystem even
> after years/decades of active development.  If the developers were careful, the
> code generally looks robust, and they are willing to address such bugs as they
> are found, realistically that's as good as we can expect to get...

Well, the impression I got from Richards quick look and the reply to it is
that there is very little attempt to validate the ondisk data structure
and there is absolutely no priority to do so.  Which is very different
from there is a bug or two here and there.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
