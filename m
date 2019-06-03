Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0750F32F40
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 14:12:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1C80922193;
	Mon,  3 Jun 2019 12:12:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IbkdMKJqzzi7; Mon,  3 Jun 2019 12:12:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CD4E7220DF;
	Mon,  3 Jun 2019 12:12:12 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 83FE51BF4E6
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 12:12:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7F13185BC8
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 12:12:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SPUPB4fQOEIg
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 12:12:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F117A85B81
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 12:12:09 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 509F625613;
 Mon,  3 Jun 2019 12:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559563929;
 bh=meyqJAQHNgh+799PPSQdiLoI/MOf6jSMIcoE58M44Io=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sBtQU/+LYMPDXfH+UCV1lgjc45nc+zC8vj052P+0XC1P3LazAk7X7QXBeJGy4zgce
 MfzNRWqKlM183IdOYUDaix+tAY6HDO/EsDEJfwSGKZ3H8am7PNT2mFuauhYidIJu+R
 wyzSOs9dOXQpZK5nE2gd9+LqAfdoqL6vj66eWwHU=
Date: Mon, 3 Jun 2019 14:12:07 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jeremy Sowden <jeremy@azazel.net>
Subject: Re: [PATCH 1/2] staging: kpc2000: export more device attributes via
 sysfs.
Message-ID: <20190603121207.GA7982@kroah.com>
References: <20190531001156.GA25210@kroah.com>
 <20190531105231.26380-1-jeremy@azazel.net>
 <20190531105231.26380-2-jeremy@azazel.net>
 <20190603120856.GA23426@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603120856.GA23426@kroah.com>
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
Cc: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>,
 Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 03, 2019 at 02:08:56PM +0200, Greg KH wrote:
> On Fri, May 31, 2019 at 11:52:30AM +0100, Jeremy Sowden wrote:
> > Added more read-only device attributes in order to expose all the
> > information about the hardware which is available by calling read() or
> > ioct() on the misc device associated with it.
> > 
> > Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
> > ---
> >  drivers/staging/kpc2000/kpc2000/core.c | 57 ++++++++++++++++++++++++++
> >  1 file changed, 57 insertions(+)
> 
> This patch does not apply to my tree at all :(
> 
> Please rebase your series on my staging-next branch and resend.

Oops, nope, I was on the wrong tree and branch when I tried to apply
this, my fault.  I've queued it up now, sorry for the noise.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
