Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12392308743
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 10:12:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B3F4487493;
	Fri, 29 Jan 2021 09:12:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mIUkh9QSDZAW; Fri, 29 Jan 2021 09:12:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4607A8733C;
	Fri, 29 Jan 2021 09:12:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 845A71BF59E
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 09:12:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8122A863DC
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 09:12:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KVIrFGp9gBLj for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 09:12:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6D223863D9
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 09:12:14 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6BEA564E0B;
 Fri, 29 Jan 2021 09:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611911534;
 bh=sDa07CcTmuvh6fFsHUJo11UEJc+IuqySVsCH5pe+DEE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QfxpVK1H8fZYiumW0I4/yxb9EYAFuQWsja8IdLB9yZnXrJrGCIWd4JU4MVbzSyvQc
 nC9kyry5IG4J9utSJpOwfJZDoVazQaYmunbZEQ/8EPcKz4Y0/4lP4PhmhKdBD0SuOt
 zPVU1wz4A5Mrw00DABaLGGm8GHHUCtnYzMxpIGvY=
Date: Fri, 29 Jan 2021 10:12:11 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kumar Kartikeya Dwivedi <memxor@gmail.com>
Subject: Re: [PATCH] staging: qlge/qlge_ethtool.c: strlcpy -> strscpy
Message-ID: <YBPRa5+rx52RqQtx@kroah.com>
References: <20210129064522.97548-1-memxor@gmail.com>
 <YBPBoajKXbKhI7ji@kroah.com>
 <20210129082155.2ob4kokjdjbutdqm@apollo>
 <YBPMnCqlxSDs84qF@kroah.com>
 <20210129090833.o3sdo7drhd4un53z@apollo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210129090833.o3sdo7drhd4un53z@apollo>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 Manish Chopra <manishc@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jan 29, 2021 at 02:38:33PM +0530, Kumar Kartikeya Dwivedi wrote:
> On 0129, Greg Kroah-Hartman wrote:
> > On Fri, Jan 29, 2021 at 01:51:55PM +0530, Kumar Kartikeya Dwivedi wrote:
> > > [Forgot to reply-all]
> > > 
> > > On 0129, Greg Kroah-Hartman wrote:
> > > > On Fri, Jan 29, 2021 at 12:15:23PM +0530, Kumar Kartikeya Dwivedi wrote:
> > > > > Fixes checkpatch warnings for usage of strlcpy.
> > > > 
> > > > What warning would that be?
> > > > 
> > > 
> > > 5dbdb2d87c294401a22e6a6002f08ebc9fbea38b
> > > 
> > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=5dbdb2d87c294401a22e6a6002f08ebc9fbea38b
> > 
> > Hint, in the future, write the above as: 5dbdb2d87c29 ("checkpatch:
> > prefer strscpy to strlcpy").  The documentation has examples of how to
> > do this easily.
> > 
> > And yes, I know that checkpatch says that, but I need to know how you
> > know this is the correct change.
> > 
> > > > And if we could just search/replace for this, why hasn't that already
> > > > happened for the whole tree?
> > > >
> > > 
> > > I think that's because it is hard to tell whether truncation is expected at the
> > > call site or not, so each change needs to be audited manually (to check the
> > > return value or not). In cases where it's just a safe strcpy, strscpy is a
> > > relatively better choice (due to not reading the entire source string).
> > 
> > Did you do that auditing?  I need to know that you did and that this is
> > fine, or that maybe, this isn't needed at all?  All of that information
> > needs to go in the changelog.
> 
> Yes, because it's copying the source strings to fixed size buffers in
> ethtool_drvinfo, so truncation would be fine here (as it's the driver name and
> other identity related stuff).

So there is no need to make this change, or it is required to make this
change?  I can't tell from your response here.

> Should I send a v2 with the reason?

I've already rejected the first one as being incomplete :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
