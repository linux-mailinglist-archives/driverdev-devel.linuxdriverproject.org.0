Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 819653A4F7
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Jun 2019 13:02:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 862418754B;
	Sun,  9 Jun 2019 11:02:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5+D0VsKTuSOm; Sun,  9 Jun 2019 11:02:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D888E87541;
	Sun,  9 Jun 2019 11:02:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 288131BF3B8
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 11:02:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2580D848D5
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 11:02:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pR4eZY73L3nM for <devel@linuxdriverproject.org>;
 Sun,  9 Jun 2019 11:02:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F190F847E5
 for <devel@driverdev.osuosl.org>; Sun,  9 Jun 2019 11:02:08 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5134F2083D;
 Sun,  9 Jun 2019 11:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560078128;
 bh=Fl13B7AdxLKVh/jbYNRAUmggrojZf3/Gq+JViMfyvs0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hfGvUDo0m8USk6NvX4WDbIG/zePnZQvHIUxCBOUJy458mkD14q3vhfQipQeErhKYZ
 7KNqMdHWdEwUFAKqAgUIgTkt/y0pMCwhn6T9Mul1Pa+vuEfd96sUuuUJSyw9cqv4nJ
 SKUXGNUkJxs4fZPSXli/UoNAdluU+2NbioUMArSI=
Date: Sun, 9 Jun 2019 13:02:06 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: core: rtw_mlme_ext.c: Remove unused
 variables
Message-ID: <20190609110206.GD30671@kroah.com>
References: <20190607071123.28193-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607071123.28193-1-nishkadg.linux@gmail.com>
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

On Fri, Jun 07, 2019 at 12:41:23PM +0530, Nishka Dasgupta wrote:
> Remove variables that are declared and assigned values but not otherwise
> used.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 9 ---------
>  1 file changed, 9 deletions(-)

You sent me 8 patches for this driver, yet only 2 were ordered in a
series.  I have no idea what order to apply these in :(

Please resend them _all_ in a numbered patch series so I have a chance
to get this correct.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
