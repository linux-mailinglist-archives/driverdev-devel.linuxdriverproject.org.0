Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA77332F35
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 14:09:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E4DA7813FB;
	Mon,  3 Jun 2019 12:09:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T4Dn2Sz7fo5h; Mon,  3 Jun 2019 12:09:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5254585C13;
	Mon,  3 Jun 2019 12:09:10 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2BC271BF4E6
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 12:09:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 26BDC854D8
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 12:09:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NXlnGxU26SFm
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 12:09:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EFA7B854A0
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 12:08:58 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E6A721BE2;
 Mon,  3 Jun 2019 12:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559563738;
 bh=zqHAYK+xmgW7Kb8KiYn+g8uVHZfJpgDnJva1R9N0d9s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lb1mHYuVBHArq51UYEu3+xbeIUNYxDVgUV/RPFfkRkVxHLfxosbewuJ+w2YbrD8mM
 VWBHEGq0UAkf5ao+GESd+aw6RGfiV+eIRKUuplEKbvHxw2g8bD7IgPvmf4LmsHTTrd
 l0TqtO8vvIulKQTJl3aflVNSgfx6iNp+mvEEXHMY=
Date: Mon, 3 Jun 2019 14:08:56 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jeremy Sowden <jeremy@azazel.net>
Subject: Re: [PATCH 1/2] staging: kpc2000: export more device attributes via
 sysfs.
Message-ID: <20190603120856.GA23426@kroah.com>
References: <20190531001156.GA25210@kroah.com>
 <20190531105231.26380-1-jeremy@azazel.net>
 <20190531105231.26380-2-jeremy@azazel.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531105231.26380-2-jeremy@azazel.net>
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

On Fri, May 31, 2019 at 11:52:30AM +0100, Jeremy Sowden wrote:
> Added more read-only device attributes in order to expose all the
> information about the hardware which is available by calling read() or
> ioct() on the misc device associated with it.
> 
> Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
> ---
>  drivers/staging/kpc2000/kpc2000/core.c | 57 ++++++++++++++++++++++++++
>  1 file changed, 57 insertions(+)

This patch does not apply to my tree at all :(

Please rebase your series on my staging-next branch and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
