Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF3131CC04
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 15:36:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BAFEE86F98;
	Tue, 16 Feb 2021 14:36:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id THXuzqLUPQEB; Tue, 16 Feb 2021 14:36:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4B51386EC8;
	Tue, 16 Feb 2021 14:36:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ECB561BF5E0
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 14:36:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E8D2C86821
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 14:36:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RbowDi1uNIZ8 for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 14:36:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5DF21867CD
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 14:36:34 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D8E9064DF5;
 Tue, 16 Feb 2021 14:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1613486194;
 bh=sjVIVcPSfd+mytOr8zCuOoRVii4+CL2lGaL/Tfw4EfU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jF5NJt5t3lyIVg68iPR//foJXr+Vu9WHkfjCd/HXK4Y+Ly+W4Xu6FoP1zMLoZsKh6
 3WdpswypA7S94nH4FQyBnhFvi9GofzpxszbUE+gFp3b+SaoSRz7AIRaL0IPt73aeFO
 /Ez+VIMkyQmgmZ1ZodKVV2tdzt26EGSlQNpmdJwy4+TJ+//f93ems+VvxIRM+JsK6E
 G6Qvv3HgiTqPs1GMx52gs/YMAWUBPnuOLxb+TBo4BwHbL4KOgtnxn0O10jFDqPFucK
 TcXEPRXWuFCfw5f192M+YFzwYFToioRhdLkdYvTen0AIPG7mBdo5shSjEpOSwe29KR
 rK6ebx6MP57tw==
Date: Tue, 16 Feb 2021 15:36:24 +0100
From: Robert Richter <rric@kernel.org>
To: Kumar Kartikeya Dwivedi <memxor@gmail.com>
Subject: Re: [PATCH 06/13] staging: octeon: Switch from strlcpy to strscpy
Message-ID: <YCvYaGSPg4HGnCqC@rric.localdomain>
References: <20210131172838.146706-1-memxor@gmail.com>
 <20210131172838.146706-7-memxor@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210131172838.146706-7-memxor@gmail.com>
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
Cc: linux-fbdev@vger.kernel.org, Jon Nettleton <jon.nettleton@gmail.com>,
 Mark Greer <mgreer@animalcreek.com>, Marc Dietrich <marvin24@gmx.de>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Thomas Gleixner <tglx@linutronix.de>,
 ac100@lists.launchpad.net, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Florian Fainelli <f.fainelli@gmail.com>, Daniel Drake <dsd@laptop.org>,
 Jens Frederich <jfrederich@gmail.com>, Viresh Kumar <vireshk@kernel.org>,
 Vaibhav Agarwal <vaibhav.sr@gmail.com>, Johan Hovold <johan@kernel.org>,
 Ian Abbott <abbotti@mev.co.uk>, Al Viro <viro@zeniv.linux.org.uk>,
 linux-tegra@vger.kernel.org, William Cohen <wcohen@redhat.com>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Alex Elder <elder@kernel.org>, Teddy Wang <teddy.wang@siliconmotion.com>,
 greybus-dev@lists.linaro.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>, Mike Rapoport <rppt@kernel.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 31.01.21 22:58:27, Kumar Kartikeya Dwivedi wrote:
> strlcpy is marked as deprecated in Documentation/process/deprecated.rst,
> and there is no functional difference when the caller expects truncation
> (when not checking the return value). strscpy is relatively better as it
> also avoids scanning the whole source string.
> 
> This silences the related checkpatch warnings from:
> 5dbdb2d87c29 ("checkpatch: prefer strscpy to strlcpy")
> 
> Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> ---
>  drivers/staging/octeon/ethernet-mdio.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Reviewed-by: Robert Richter <rric@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
