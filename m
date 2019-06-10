Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B816C3AEB9
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 07:49:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 36A228614D;
	Mon, 10 Jun 2019 05:49:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SABmaWZ5v6RL; Mon, 10 Jun 2019 05:49:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0489885C88;
	Mon, 10 Jun 2019 05:49:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 370DA1BF83B
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 05:49:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 30D45203B9
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 05:49:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FDwNCAYZUqBE for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 05:49:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 7F5A0203B7
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 05:49:30 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CA0D820820;
 Mon, 10 Jun 2019 05:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560145770;
 bh=fjiRRpbxLq2qPQtWG06fEsCH3kBCZr5EYWbVtHgja/0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fugCxTYIH3V+theQWGMZxGl62Pbid6Uo522QH9KPxAe0MLoWEkl7iw+My6mtxf3e+
 zmhu0SLEgOilqXl3zt/oueA/Zmd5VepTrNPr1CSntCmzPqSP42JO+v5nKn9/icyOmS
 sCaNSPtSX5BiYKZUSPGhCGqbpHYzlVQHxuXqoyMk=
Date: Mon, 10 Jun 2019 07:49:27 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: core: rtw_mlme_ext.c: Remove unused
 variables
Message-ID: <20190610054927.GA13124@kroah.com>
References: <20190607071123.28193-1-nishkadg.linux@gmail.com>
 <20190609110206.GD30671@kroah.com>
 <74fd5a83-0f60-baae-a65f-bbc0cd9f4ad0@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <74fd5a83-0f60-baae-a65f-bbc0cd9f4ad0@gmail.com>
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
Cc: devel@driverdev.osuosl.org, benniciemanuel78@gmail.com,
 linux-kernel@vger.kernel.org, hardiksingh.k@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 10, 2019 at 10:08:21AM +0530, Nishka Dasgupta wrote:
> On 09/06/19 4:32 PM, Greg KH wrote:
> > On Fri, Jun 07, 2019 at 12:41:23PM +0530, Nishka Dasgupta wrote:
> > > Remove variables that are declared and assigned values but not otherwise
> > > used.
> > > Issue found with Coccinelle.
> > > 
> > > Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> > > ---
> > >   drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 9 ---------
> > >   1 file changed, 9 deletions(-)
> > 
> > You sent me 8 patches for this driver, yet only 2 were ordered in a
> > series.  I have no idea what order to apply these in :(
> > 
> > Please resend them _all_ in a numbered patch series so I have a chance
> > to get this correct.
> 
> Yes, I can do that. Who do I send the patch series to in that case? The
> maintainers list is slightly different for each file, and most of the
> patches in this driver are for different and unrelated files (except, I
> think, the two that I did send as a patch series). Do I combine the
> maintainers lists and send the entire patch series to everyone listed as a
> maintainer for any one of the patches in it?

The maintainer and mailing list is the same for all of the files in a
single driver.  If not, then something is wrong.

And yes, you can combine the list of people if you wish but be sure you
are not just randomly including people who happened to touch the driver
"last".

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
