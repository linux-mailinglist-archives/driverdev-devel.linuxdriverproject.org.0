Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 674702290E3
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 08:32:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C811388069;
	Wed, 22 Jul 2020 06:32:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DG2pPK-YPEBX; Wed, 22 Jul 2020 06:32:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A2F6387FED;
	Wed, 22 Jul 2020 06:32:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 738011BF41B
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 06:32:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 669B88829D
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 06:32:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zug-PtEzEa+9 for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 06:32:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EA1A78823A
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 06:32:47 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 25B5920656;
 Wed, 22 Jul 2020 06:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595399567;
 bh=eW/D4FoP8fD7jYSALhO2eZgv6V7O4K7N2KoOdDaEC4I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fXjB54aeaHxHUeKV70tEcXEzZBSObuzjZwK33zY+wQthVAXxqPeYffga+PgDegi1Y
 NxNXcysQsTkvdMnWLX/TGcYMZRGvmM+bKocbGAtb4KxXvAUtqAoAzSmOslhv3WcNsF
 Pt2sQeE5B/vCU08qI4FQ5x+zV8n7TfSTwbXQfnFI=
Date: Wed, 22 Jul 2020 08:32:54 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Rahul Gottipati <rahul.blr97@gmail.com>
Subject: Re: [PATCH] staging: gs_fpgaboot: get bus width input
Message-ID: <20200722063254.GA2715521@kroah.com>
References: <20200721180203.GA16154@rahulg-ThinkPad-T450>
 <20200721180533.GA2570082@kroah.com>
 <20200722062711.GA3300@rahulg-ThinkPad-T450>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200722062711.GA3300@rahulg-ThinkPad-T450>
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
Cc: devel@driverdev.osuosl.org, insop.song@gainspeed.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 22, 2020 at 11:57:11AM +0530, Rahul Gottipati wrote:
> On Tue, Jul 21, 2020 at 08:05:33PM +0200, Greg KH wrote:
> > On Tue, Jul 21, 2020 at 11:32:03PM +0530, Rahul Gottipati wrote:
> > > This adds a module parameter to get the program bus width as an
> > > input rather than hardcoding it, and checks off a TODO item.
> > 
> > Ick, no, module parameters are from the 1990's, please make this dynamic
> > somehow.
> 
> Hi, I'm pretty new to this. Do you have any ideas/suggestions on how to
> do this dynamically?

It all depends on what the paramater is, what it is needed for, and who
would ever need to change it.

So I think it would take a bit of domain-specific knowledge here to
determine that, it's not a general "code cleanup" task.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
