Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A25530DE8B
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Feb 2021 16:46:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A961F852CD;
	Wed,  3 Feb 2021 15:46:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S9-eO804NIWb; Wed,  3 Feb 2021 15:46:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 183478541F;
	Wed,  3 Feb 2021 15:46:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A72371BF842
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 15:46:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A209A8577E
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 15:46:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lsgo7tfWtNEC for <devel@linuxdriverproject.org>;
 Wed,  3 Feb 2021 15:46:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 19E2983CBF
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 15:46:07 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 27E1564F58;
 Wed,  3 Feb 2021 15:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612367166;
 bh=W6x5dspSacqQgQyOQUv22H4KW7lC6mmkCT/ljW1i66Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F8LQ13vfJsQFRgYYDDbeH29SU5YYVP9H2m4ha65cUkLA0YiLKZZLFL1rpEEAiZkBN
 gHiumMxVlBPOkk+4t95ny1U//DLKfPoqVkBfVYwbnTtc/K+s3N2A5SRA/aCfTuh2nq
 BNAGMjfW8LO5Ci23SlGvGD+kvsig/IXKoALgHqso=
Date: Wed, 3 Feb 2021 16:46:04 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ayush <ayush@disroot.org>
Subject: Re: [PATCH] staging: wimax/i2400m: fix coding style issues
Message-ID: <YBrFPCO8ErtI/EEG@kroah.com>
References: <YBqWSO01Bt2rHHv2@kroah.com>
 <20210203114720.263651-1-ayush@disroot.org>
 <c6ba066bcb9c2df4715e76539ccf5f67@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c6ba066bcb9c2df4715e76539ccf5f67@disroot.org>
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
Cc: devel@driverdev.osuosl.org, kuba@kernel.org, arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 03, 2021 at 03:40:06PM +0000, Ayush wrote:
> >
> > - Your patch did many different things all at once, making it difficult
> > to review. All Linux kernel patches need to only do one thing at a
> > time. If you need to do multiple things (such as clean up all coding
> > style issues in a file/driver), do it in a sequence of patches, each
> > one doing only one thing. This will make it easier to review the
> > patches to ensure that they are correct, and to help alleviate any
> > merge issues that larger patches can cause.
> >
> 
> Okay sir, I will break down the patch and send the patch series in v2.
>  
> > - It looks like you did not use your "real" name for the patch on either
> > the Signed-off-by: line, or the From: line (both of which have to
> > match). Please read the kernel file, Documentation/SubmittingPatches
> > for how to do this correctly.
> > 
> 
> Actually my legal name is only "Ayush", I do not have a last name.

Ok, if that is your legal name, that is fine to use, thanks.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
