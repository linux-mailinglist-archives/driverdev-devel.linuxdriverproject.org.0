Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6A5A152B
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 11:51:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4F1D581F0F;
	Thu, 29 Aug 2019 09:51:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kl7wQT7xRHiu; Thu, 29 Aug 2019 09:51:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7834B88C4B;
	Thu, 29 Aug 2019 09:51:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E8171BF489
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 09:51:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0B22088C4B
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 09:51:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MmTaMzLbIrpP for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 09:51:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 93ABF881A8
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 09:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pM3wcAf7FIhzSl23I8rKYxtK3wexClX83D/gf9S1f5A=; b=IbneeKsWWuv4rxcM7lu8P5kA3
 doWzWkPrytBw/fszPm6xltgjTmTxL4JXhdnei6neL6afPwn9u60oKqq+j0LjxxyddOwzpI28yfX7z
 YqIOQk84pk3uiqKVHzitq1akCD1IhMzCmu/1Wlk0RbbBXe4jzjkDMDZ6K2domNXpvnEd/9SzBrhEy
 t4wPrN7JIs9cchyRrF8OQhxCd7qpHZcytVM+R4hsegY+/Ffs4w9XIzXznAsrcjlu8qZaKJOhaQfiX
 ZqnrA75QFzXsVcmfAYWUA/wxSpx7mPFqUZZLI6S7P5Yz5v6zJOSHgM4P2kghVVte5ohsYB48nqa5d
 1aXJs9T6g==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i3H5I-0005Pa-Tv; Thu, 29 Aug 2019 09:51:16 +0000
Date: Thu, 29 Aug 2019 02:51:16 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190829095116.GA20598@infradead.org>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190828170022.GA7873@kroah.com>
 <20190829062340.GB3047@infradead.org>
 <20190829070149.GA155353@architecture4>
 <20190829082409.GA83154@architecture4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829082409.GA83154@architecture4>
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
Cc: devel@driverdev.osuosl.org, Sasha Levin <alexander.levin@microsoft.com>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Eric Biggers <ebiggers@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, yuchao0@huawei.com,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Zefan Li <lizefan@huawei.com>, linux-fsdevel@vger.kernel.org,
 "Theodore Y. Ts'o" <tytso@mit.edu>, miaoxie@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 29, 2019 at 04:24:09PM +0800, Gao Xiang wrote:
> It seems I misunderstood your idea, sorry about that... EROFS
> properly uses vfs interfaces (e.g. we also considered RCU symlink
> lookup path at the very beginning of our design as Al said [1],
> except for mount interface as Al mentioned [2] (thanks him for
> taking some time on it), it was used for our debugging use),
> and it didn't cause any extra burden to vfs or other subsystems.

It would still have been a lot less effort for everyone without
the idiotic staging detour.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
