Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD2AA3A77
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 17:36:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 27A4787EA7;
	Fri, 30 Aug 2019 15:36:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l2fyBPNXzstX; Fri, 30 Aug 2019 15:36:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7B52C87E74;
	Fri, 30 Aug 2019 15:36:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CE1AC1BF284
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 15:36:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CA10F204F4
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 15:36:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i1MzbM3dRfNl for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 15:36:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by silver.osuosl.org (Postfix) with ESMTPS id 4CF4A204F0
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 15:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=93WudhjZ/7xMl3hmNwhgEaX4yRqNBxu9/y9u0PV6xso=; b=NBtdgbKWOzN5GwzwZepTB6VHF
 xu8AdemKZdBmb29lTV5i609Dd4738mggdVIrYC1Z9L91PnBRbIz5ilAXJ8Xk2miyGlm7lBter5Hsl
 JaBPEVCwRADDacBN1at2pJ+u62vBMrcxE6l3QLu7UYytNdL+P1NZAdqAxorWqeEpUfW4/Z5uNQir1
 DB5OpT3k4z6KLIw2vb9Q/6vLncoZA0v9TLWGwG1BPrD+QcoNOpcTHFtuUKWUzTEGiq5ScRT9nhlXO
 C/TQOxogIY7h0Vhh+5GNfUNvkQn/i3B3gUqkUAuVnoNUCedCNBrcDzo/j3wncZMR4ANhCMjtZXjsM
 0ahObHONA==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i3ixA-000162-EL; Fri, 30 Aug 2019 15:36:44 +0000
Date: Fri, 30 Aug 2019 08:36:44 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190830153644.GA30863@infradead.org>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190828170022.GA7873@kroah.com>
 <20190829062340.GB3047@infradead.org>
 <20190829063955.GA30193@kroah.com>
 <20190829094136.GA28643@infradead.org>
 <20190829095019.GA13557@kroah.com>
 <20190829103749.GA13661@infradead.org>
 <20190829111810.GA23393@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829111810.GA23393@kroah.com>
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
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 linux-fsdevel@vger.kernel.org, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 29, 2019 at 01:18:10PM +0200, Greg Kroah-Hartman wrote:
> Hey, that's not nice, erofs isn't a POS.  It could always use more
> review, which the developers asked for numerous times.
> 
> There's nothing different from a filesystem compared to a driver.  If
> its stand-alone, and touches nothing else, all issues with it are
> self-contained and do not bother anyone else in the kernel.  We merge
> drivers all the time that need more work because our review cycles are
> low.  And review cycles for vfs developers are even more scarce than
> driver reviewers.

A lot of the issue that are trivial to pick are really just very basic
issue that don't even require file system know how.  Or in other ways
just a little less lazy developer that looks out for similar code
outside their own little fiefdom.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
