Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B88BC13BFFB
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 13:17:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A880E87A2F;
	Wed, 15 Jan 2020 12:17:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ygrqr5mOpS9Z; Wed, 15 Jan 2020 12:17:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 316EF85133;
	Wed, 15 Jan 2020 12:17:23 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D6DB1BF5A0
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 12:17:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 72C0186156
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 12:17:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id grIVgdpHffEh
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 12:17:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 918E3860D6
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 12:17:15 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DFC2A207FF;
 Wed, 15 Jan 2020 12:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579090635;
 bh=ofiMWlcHU09CQO9ej6CxZqmPCZM7jx1JLvIWPrn14Y0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F1enwaLs2RJk/XcZC9s+nljrg8KjPoT4GhAbOrSPf5bg+z+l5MU19uQWdeOSYLtXd
 viAZ4jLVeOM14ft3pQXoWZKsX3jOZJlG5uFL+fGG1mnnSyYT/ShQr3r2D6lOiP+F5N
 3SpGaq3yMY5SXZLSxMFhvJHJ8qkbmOMpA0iMfWAI=
Date: Wed, 15 Jan 2020 13:17:12 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH RFC v3 4/9] staging: most: move interface dev to private
 section
Message-ID: <20200115121712.GA3394319@kroah.com>
References: <1579017478-3339-1-git-send-email-christian.gromm@microchip.com>
 <1579017478-3339-5-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579017478-3339-5-git-send-email-christian.gromm@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jan 14, 2020 at 04:57:53PM +0100, Christian Gromm wrote:
> This patch moves the struct device of the interface structure to its
> private section, because only the core should access it directly. For
> other entities an API is provided.

This feels "wrong".

Shouldn't the struct device in this structure be the thing that is
handling the reference counting and sysfs integration for this
structure?  To put it as a "pointer" in a private section of the
structure feels like it is now backwards.

What is this helping with?  Who was messing with the device structure
here that needed to not mess with it?

It's good that you are now releasing the memory for the device structure
properly, but this still feels really wrong.  What is keeping the
lifetime of this structure now that the device is removed from it?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
