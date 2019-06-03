Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FAF32F6D
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 14:20:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 00DF285D3D;
	Mon,  3 Jun 2019 12:20:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N5gQmp6CrREl; Mon,  3 Jun 2019 12:20:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9485285C92;
	Mon,  3 Jun 2019 12:20:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 42C821BF4E6
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 12:20:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3B629220DA
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 12:20:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jHd9RC1329XA for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 12:20:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 9E51F220D0
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 12:20:27 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0205F25F14;
 Mon,  3 Jun 2019 12:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559564427;
 bh=y1TILt/ffTUz1M9+mg0l1iL1FFJ1tJ7setoQfWG0gvs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WynB5YHHwyNsvoYa11HNktiCpQXWJdscE3gqCnOHo81W7TiPNIo7ok5i1D1AhQxSR
 YNlnvPzsk+9VJTNDepe7PYDt4frz6rEEDpf1JjSdzUwahehbw3MPDX7VPXL7v5mPKW
 ZL6ts49z76fWUSCexyzdcEtpfFH96GdR4vnqAsdA=
Date: Mon, 3 Jun 2019 14:20:25 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] staging: rtl8712: Remove function alloc_network
Message-ID: <20190603122025.GA23379@kroah.com>
References: <20190530210141.30221-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530210141.30221-1-nishkadg.linux@gmail.com>
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
Cc: florian.c.schilhabel@googlemail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, yangx92@hotmail.com, colin.king@canonical.com,
 larry.finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 31, 2019 at 02:31:41AM +0530, Nishka Dasgupta wrote:
> Remove function alloc_network as it does nothing except call
> _r8712_alloc_network. Further, to maintain consistency with
> the names of other functions, rename _r8712_alloc_network as
> r8712_alloc_network.
> Also change the corresponding calls to either function
> accordingly.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_cmd.c  | 2 +-
>  drivers/staging/rtl8712/rtl871x_mlme.c | 9 ++-------
>  drivers/staging/rtl8712/rtl871x_mlme.h | 2 +-
>  3 files changed, 4 insertions(+), 9 deletions(-)

Does not apply to my tree :(

When sending multiple patches for the same driver/file, always make a
patch series so I know what order to apply them in.  Otherwise I guess
and usually guess wrong, like I did here...

Please fix up and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
