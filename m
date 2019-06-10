Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2A33AF97
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 09:25:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3C75D854DB;
	Mon, 10 Jun 2019 07:25:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oxZMaRSGaOz0; Mon, 10 Jun 2019 07:25:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE24D85108;
	Mon, 10 Jun 2019 07:25:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5E1C11BF410
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:25:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5ACE720111
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:25:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QbLQHdHAm40c for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 07:25:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 5D8772010E
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 07:25:25 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 997A7207E0;
 Mon, 10 Jun 2019 07:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560151525;
 bh=wu4ufzhepp5a61PnVAmbtYOPDerdxY/PIVog+ksjNtg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ffnUIqbY5OY7dIM1A+KJOm1E+oFvKHKlywaEu+ZoAhlavVbft5swhILTYUxkhc41u
 /j8ZodhhA7uRmIFiAN/tVJGsX9n93Dyo5JxKnlNcvojLViW1jU1KILJGB1Ogz/OBS6
 R0bZelg/GdFwzPi8AzBaCiccVKgfQI3DmGszkaXY=
Date: Mon, 10 Jun 2019 09:25:21 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: core: rtw_mlme_ext.c: Remove unused
 variables
Message-ID: <20190610072521.GA20470@kroah.com>
References: <20190607071123.28193-1-nishkadg.linux@gmail.com>
 <20190609110206.GD30671@kroah.com>
 <74fd5a83-0f60-baae-a65f-bbc0cd9f4ad0@gmail.com>
 <20190610054927.GA13124@kroah.com>
 <7554e171-360f-f0a8-5742-9a60e4a1cc2d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7554e171-360f-f0a8-5742-9a60e4a1cc2d@gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: devel@driverdev.osuosl.org, hardiksingh.k@gmail.com,
 linux-kernel@vger.kernel.org, benniciemanuel78@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 10, 2019 at 12:44:05PM +0530, Nishka Dasgupta wrote:
> On 10/06/19 11:19 AM, Greg KH wrote:
> > On Mon, Jun 10, 2019 at 10:08:21AM +0530, Nishka Dasgupta wrote:
> > > On 09/06/19 4:32 PM, Greg KH wrote:
> > > > On Fri, Jun 07, 2019 at 12:41:23PM +0530, Nishka Dasgupta wrote:
> > > > > Remove variables that are declared and assigned values but not otherwise
> > > > > used.
> > > > > Issue found with Coccinelle.
> > > > > 
> > > > > Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> > > > > ---
> > > > >    drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 9 ---------
> > > > >    1 file changed, 9 deletions(-)
> > > > 
> > > > You sent me 8 patches for this driver, yet only 2 were ordered in a
> > > > series.  I have no idea what order to apply these in :(
> > > > 
> > > > Please resend them _all_ in a numbered patch series so I have a chance
> > > > to get this correct.
> > > 
> > > Yes, I can do that. Who do I send the patch series to in that case? The
> > > maintainers list is slightly different for each file, and most of the
> > > patches in this driver are for different and unrelated files (except, I
> > > think, the two that I did send as a patch series). Do I combine the
> > > maintainers lists and send the entire patch series to everyone listed as a
> > > maintainer for any one of the patches in it?
> > 
> > The maintainer and mailing list is the same for all of the files in a
> > single driver.  If not, then something is wrong.
> 
> I'm using get_maintainers.pl with no arguments, and for rtl8723bs, I am
> getting a lot of different mailing lists.
> E.g
> For core/rtw_ieee80211.c, I'm getting the following list:
> Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Michael Straube <straube.linux@gmail.com>
> Andy Shevchenko <andy.shevchenko@gmail.com>
> Hardik Singh Rathore <hardiksingh.k@gmail.com>
> Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> Nishka Dasgupta <nishkadg.linux@gmail.com>
> devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
> linux-kernel@vger.kernel.org (open list)
> 
> Which is not the same as for core/rtw_mlme_ext.c (the current patch).
> 
> > And yes, you can combine the list of people if you wish but be sure you
> > are not just randomly including people who happened to touch the driver
> > "last".
> 
> Okay, I'll combine then. But is there any metric I should be using to filter
> the output of get_maintainer.pl? Currently I'm running it with no arguments
> and just adding everyone.

Look at the "role" that each person has.  Here is the output of
get_maintainer.pl when I run it on the first file above:

$ ./scripts/get_maintainer.pl --file drivers/staging/rtl8723bs/core/rtw_ieee80211.c
Greg Kroah-Hartman <gregkh@linuxfoundation.org> (supporter:STAGING SUBSYSTEM,commit_signer:16/16=100%)
Michael Straube <straube.linux@gmail.com> (commit_signer:14/16=88%,authored:14/16=88%,added_lines:43/59=73%,removed_lines:114/130=88%)
Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com> (commit_signer:1/16=6%,authored:1/16=6%,added_lines:3/59=5%)
Hardik Singh Rathore <hardiksingh.k@gmail.com> (commit_signer:1/16=6%,authored:1/16=6%,added_lines:13/59=22%,removed_lines:13/130=10%)
Andy Shevchenko <andy.shevchenko@gmail.com> (commit_signer:1/16=6%)
devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
linux-kernel@vger.kernel.org (open list)


That shows that "Greg Kroah-Hartman" is a reviewer for this subsystem,
Michael and Payal and Hardik and Andy have all submitted patches
"recently", and then devel@ is the mailing list for the patches to be
sent to.

So, just include the maintainer and the mailing list and you will be
fine.  No need to bother lkml with staging patches, nor the people who
last sent cleanup patches.

hope this helps,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
