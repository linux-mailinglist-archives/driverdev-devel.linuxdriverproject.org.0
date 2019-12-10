Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 547FD1191BC
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 21:20:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 498CA87C88;
	Tue, 10 Dec 2019 20:20:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d1FicMop1TdH; Tue, 10 Dec 2019 20:20:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2513387BFE;
	Tue, 10 Dec 2019 20:20:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CDA681BF2B7
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 20:20:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C8B8A204C8
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 20:20:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ak31ebdX496I for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 20:19:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id CBA7A227FC
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 20:19:59 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2385B206EC;
 Tue, 10 Dec 2019 20:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576009199;
 bh=JJ3x1a8mkruSyckx5tJ3DK9j0EPWeio+6KT/A/Sw3UA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xFt5ukAS8+sDg60hqQeLefJkJ6aQseO9KDK4vWd2EQeRg18S5AZ7CHZo+Vjna2AIY
 CYcclTI5J8bUwZ+MXLBIMJoZbuo5EkNhaleTyMjrki0vAkf5O3chbjDlc40xwseWGY
 BFebRMcF5mGMvNBju1GNLBrkGHAdLNI/3Al0U8Bs=
Date: Tue, 10 Dec 2019 21:19:57 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Subject: Re: [PATCH 2/2] staging: octeon-usb: delete the octeon usb host
 controller driver
Message-ID: <20191210201957.GB4070187@kroah.com>
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <20191210091509.3546251-2-gregkh@linuxfoundation.org>
 <20191210193153.GB18225@darkstar.musicnaut.iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210193153.GB18225@darkstar.musicnaut.iki.fi>
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

On Tue, Dec 10, 2019 at 09:31:54PM +0200, Aaro Koskinen wrote:
> Hi,
> 
> On Tue, Dec 10, 2019 at 10:15:09AM +0100, Greg Kroah-Hartman wrote:
> > This driver was merged back in 2013 and shows no progress toward every
> > being merged into the "correct" part of the kernel.
> 
> Do you mean all the patches since 2013 were "no progress"? Thanks.

I have not seen any proposals to get it out of staging at all.  If the
only thing left really is just those two simple TODO lines, then why has
it taken 6 years to do that?

> > The code doesn't even build for anyone unless you have the specific
> > hardware platform selected, so odds are it doesn't even work anymore.
> 
> I used it in production almost a decade with no issues with unpatched
> mainline kernel. All reported issues were fixed. Last kernel I ran
> was v5.3.

Then why has it not been merged out of staging?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
