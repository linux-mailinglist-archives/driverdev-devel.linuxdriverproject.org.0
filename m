Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6804D97E3
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 18:51:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 95933883D8;
	Wed, 16 Oct 2019 16:51:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k5eH2Kc2pvrw; Wed, 16 Oct 2019 16:51:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0BA06883C0;
	Wed, 16 Oct 2019 16:51:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1A3481BF30E
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 16:51:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 13D28877DF
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 16:51:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id htots99Tcvzl for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 16:51:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DBF14877D1
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 16:50:08 +0000 (UTC)
Received: from localhost (li1825-44.members.linode.com [172.104.248.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 131FF2168B;
 Wed, 16 Oct 2019 16:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571244608;
 bh=sqgHreqTi1i3Tx4fYKNWwFE1NCar570i6YUyioSamHs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y3KxXTSgx0HNgc35dznykNn4WPs1cwbSSyV+Q1ROXqEcuEFScltR+kjzdA2h+9Axi
 cqWgql0vuRPvZUZ6PEIJ0aoWK9dsazJYz5R58UeQSGUJDGnCXZMvwzb6qIn1mu+jVc
 NRC+CMy1wZpIRpf2cY0QchC8+5TcfEdz7W4AF528=
Date: Wed, 16 Oct 2019 09:50:01 -0700
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali.rohar@gmail.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20191016165001.GA639209@kroah.com>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190829205631.uhz6jdboneej3j3c@pali>
 <184209.1567120696@turing-police> <20190829233506.GT5281@sasha-vm>
 <20190830075647.wvhrx4asnkrfkkwk@pali>
 <20191016140353.4hrncxa5wkx47oau@pali>
 <20191016143113.GS31224@sasha-vm>
 <20191016160349.pwghlg566hh2o7id@pali>
 <20191016162211.GA505532@kroah.com>
 <20191016163231.dgvurzdqcifunw35@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016163231.dgvurzdqcifunw35@pali>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Christoph Hellwig <hch@infradead.org>, linux-kernel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 16, 2019 at 06:32:31PM +0200, Pali Roh=E1r wrote:
> On Wednesday 16 October 2019 09:22:11 Greg Kroah-Hartman wrote:
> > On Wed, Oct 16, 2019 at 06:03:49PM +0200, Pali Roh=E1r wrote:
> > > > Can I assume you will be implementing TexFAT support once the spec =
is
> > > > available?
> > > =

> > > I cannot promise that I would implement something which I do not know
> > > how is working... It depends on how complicated TexFAT is and also how
> > > future exfat support in kernel would look like.
> > > =

> > > But I'm interesting in implementing it.
> > =

> > What devices need TexFAT?  I thought it the old devices that used it are
> > long obsolete and gone.  How is this feature going to be tested/used?
> =

> Hi Greg! Per 3.1.16 of exFAT specification [1], TexFAT extension is the
> only way how to use more FAT tables, like in FAT32 (where you normally
> have two FATs). Secondary FAT table can be used e.g. for redundancy or
> data recovery. For FAT32 volumes, e.g. fsck.fat uses secondary FAT table
> when first one is corrupted.
> =

> Usage of just one FAT table in exFAT is just step backward from FAT32 as
> secondary FAT table is sometimes the only way how to recover broken FAT
> fs. So I do not think that exFAT is for old devices, but rather
> non-exFAT is for old devices. Modern filesystems have journal or other
> technique to do (fast|some) recovery, exFAT has nothing.
> =

> And how is this feature going to be used? That depends on specification.
> =

> [1] - https://docs.microsoft.com/en-us/windows/win32/fileio/exfat-specifi=
cation#3116-numberoffats-field

Ok, but given that the "only" os that can read/write the TexFAT
extension is WinCE, and that os is obsolete these days, it might be hard
to find images to test/validate against :)

But hey, I'll take the patch if you write it, no objection!

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
