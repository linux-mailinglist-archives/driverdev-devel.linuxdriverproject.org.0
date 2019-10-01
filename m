Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EE6C2D6B
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Oct 2019 08:20:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F141F22176;
	Tue,  1 Oct 2019 06:20:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HeXOrD-3y7Jr; Tue,  1 Oct 2019 06:20:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 64BA82210F;
	Tue,  1 Oct 2019 06:20:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 944541BF27F
 for <devel@linuxdriverproject.org>; Tue,  1 Oct 2019 06:20:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 911FC85FC9
 for <devel@linuxdriverproject.org>; Tue,  1 Oct 2019 06:20:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ECxXfPv2w8-y for <devel@linuxdriverproject.org>;
 Tue,  1 Oct 2019 06:20:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B8E8C85FA7
 for <devel@driverdev.osuosl.org>; Tue,  1 Oct 2019 06:20:14 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 09DFE215EA;
 Tue,  1 Oct 2019 06:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569910814;
 bh=vXsqJvVNHhs9ZLzXUR1PZKtGxKt4GdylKtpsRhqclB8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gQhyxeiiM9kQZQeLrGdrnM24rMMNdsbUE2UcM9ci+O0iNNM4tFXO7YuERuYqwpWNu
 PaNP5Tn9aWuT2SyDKepYAi0F9iFiyiMos10IycVHhUqdOwFREFTLzqHjUdj/n6beYJ
 IzLjIQy04a+kfDv2LX1kxuFC3n8BoFBK9Xa5cVjc=
Date: Tue, 1 Oct 2019 08:20:12 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Okash Khawaja <okash.khawaja@gmail.com>
Subject: Re: [PATCH] staging: speakup: document sysfs attributes
Message-ID: <20191001062012.GA2836150@kroah.com>
References: <20190921102214.2983-1-okash.khawaja@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190921102214.2983-1-okash.khawaja@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, Kirk Reiser <kirk@reisers.ca>,
 Gregory Nowak <greg@gregn.net>, John Covici <covici@ccs.covici.com>,
 speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Chris Brannon <chris@the-brannons.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Sep 21, 2019 at 11:22:14AM +0100, Okash Khawaja wrote:
> Speakup exposes a set of sysfs attributes under
> /sys/accessibility/speakup/ for user-space to interact with and
> configure speakup's kernel modules. This patch describes those
> attributes. Some attributes either lack a description or contain
> incomplete description. They are marked wit TODO.
> 
> Authored-by: Gregory Nowak <greg@gregn.net>
> Submitted-by: Okash Khawaja <okash.khawaja@gmail.com>

I just realized by neither of these are valid signed-off-by lines, so I
can't take it :(

Please resend this and sign-off on it properly, as documented in the
kernel documentation files.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
