Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2299911A53A
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 08:42:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5C60D21FAC;
	Wed, 11 Dec 2019 07:42:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BWRey0ArB3MI; Wed, 11 Dec 2019 07:42:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E25FA204F0;
	Wed, 11 Dec 2019 07:42:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED2171BF3C3
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 07:42:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E5FF8204D6
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 07:42:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YIZTnzVNJ1YP for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 07:42:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 47A24204CC
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 07:42:21 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 881EB208C3;
 Wed, 11 Dec 2019 07:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576050141;
 bh=hjwHRYg8sPYAGDfSGrnlcMrFRv1F4fdjjCVCcQ5+a1M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YpRaJ89jUMVRa6IpaYcn6qin1ZSI494HkfhCJYBls/yNzHmpiJLg3eXHWeFjPbnY9
 OJSUt1Jtbeb0q26EcErkVu4DdetqYR8EyYmWfXug6VBVUCwtCPmiAG6d5Yr8S+MjaZ
 qTBEnr/Bc6Y7eCmruD2bDi8IpyP/w+/ELamaV/hU=
Date: Wed, 11 Dec 2019 08:42:18 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Subject: Re: [PATCH 2/2] staging: octeon-usb: delete the octeon usb host
 controller driver
Message-ID: <20191211074218.GB398293@kroah.com>
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <20191210091509.3546251-2-gregkh@linuxfoundation.org>
 <20191210193153.GB18225@darkstar.musicnaut.iki.fi>
 <20191210201957.GB4070187@kroah.com>
 <20191210212744.GD18225@darkstar.musicnaut.iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210212744.GD18225@darkstar.musicnaut.iki.fi>
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
Cc: devel@driverdev.osuosl.org, Sumit Pundir <pundirsumit11@gmail.com>,
 linux-kernel@vger.kernel.org, David Daney <ddaney.cavm@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>,
 Laura Lazzati <laura.lazzati.15@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 10, 2019 at 11:27:44PM +0200, Aaro Koskinen wrote:
> On Tue, Dec 10, 2019 at 09:19:57PM +0100, Greg Kroah-Hartman wrote:
> > On Tue, Dec 10, 2019 at 09:31:54PM +0200, Aaro Koskinen wrote:
> > > Hi,
> > > 
> > > On Tue, Dec 10, 2019 at 10:15:09AM +0100, Greg Kroah-Hartman wrote:
> > > > This driver was merged back in 2013 and shows no progress toward every
> > > > being merged into the "correct" part of the kernel.
> > > 
> > > Do you mean all the patches since 2013 were "no progress"? Thanks.
> > 
> > I have not seen any proposals to get it out of staging at all.  If the
> > only thing left really is just those two simple TODO lines, then why has
> > it taken 6 years to do that?
> 
> Do you mean you did not see the below thread when I asked for help;
> it was a kind of propsal, no? Also things take time when you are just a
> hobbyist reverse engineering undocumented hardware that you also run in
> production. Yes, I'm slow, but the starting point wasn't also a very good.
> 
> https://marc.info/?t=155839354700002&r=1&w=2

I have the short-term memory of a squirrel, remember I get 1000 emails a
day to deal with.

That thread was from back in May, the instructions on what was needed to
be done is quite simple, so there should not have been a multi-month
delay from then until now.  What happened?

> I don't mind you deleting the driver, and if you think that "no progress"
> is true then I'm very sorry for all those commits/noise.

Don't be sorry, you have fixed it up to make it ready to be merged
properly.  But yes, there is no progress being made now, so it should
either be dropped or merged properly.

If you don't have the time now to do it, that's fine, the revert to get
the code back just takes one single git command when you, or someone
else, can get the chance to do it.

Don't take it personally, this is about to happen to almost all of the
staging drivers that have been languishing around :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
