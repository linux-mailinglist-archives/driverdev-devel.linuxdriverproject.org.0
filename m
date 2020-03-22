Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D11C018E76F
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Mar 2020 08:58:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7F051889D0;
	Sun, 22 Mar 2020 07:58:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DUeVaUQaXLJu; Sun, 22 Mar 2020 07:58:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB49788856;
	Sun, 22 Mar 2020 07:58:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 015571BF3BC
 for <devel@linuxdriverproject.org>; Sun, 22 Mar 2020 07:58:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ED690203D5
 for <devel@linuxdriverproject.org>; Sun, 22 Mar 2020 07:58:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KVGA36-Etz0j for <devel@linuxdriverproject.org>;
 Sun, 22 Mar 2020 07:58:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 641FF203D6
 for <devel@driverdev.osuosl.org>; Sun, 22 Mar 2020 07:58:53 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 990FB206F8;
 Sun, 22 Mar 2020 07:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584863933;
 bh=eWjdMSV3Xt1zzPnKPS1H2YP8+k8sOMZZteG9XBHhj7U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bVGZ7shbaQ5BLOwPtynGKZyTw/ZRjcMkgWzPSoWdH5CweCwAr1Ax55WFQBS2Z3+Ij
 2vQwzICdeKtApLnSiY0U2MlWvW/OE+s78vRX7N6izBB7HsCDBnyGX8w2bU+UVYhY3i
 UvtJx37pR3IP/JZq1tY2UPmsj0ICqWwOeiyTYrGM=
Date: Sun, 22 Mar 2020 08:58:50 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Qiujun Huang <anenbupt@gmail.com>
Subject: Re: WARNING in hwahc_probe
Message-ID: <20200322075850.GA68214@kroah.com>
References: <0000000000001a033405a15e3acb@google.com>
 <CADG63jBdvJMAem7_VF3GbCUSXGRuFrrv6_GqFc=KcKkxcNebCA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADG63jBdvJMAem7_VF3GbCUSXGRuFrrv6_GqFc=KcKkxcNebCA@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, tranmanphong@gmail.com, andreyknvl@google.com,
 linux-usb@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org,
 syzbot <syzbot+df767d588771697b0433@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Mar 22, 2020 at 03:53:44PM +0800, Qiujun Huang wrote:
> The return value of snprintf is longer than expected if the string is
> truncated. Bytes need to be checked here.
> 
> diff --git a/drivers/staging/wusbcore/host/hwa-hc.c
> b/drivers/staging/wusbcore/host/hwa-hc.c
> index 8d959e9..1475a48 100644
> --- a/drivers/staging/wusbcore/host/hwa-hc.c
> +++ b/drivers/staging/wusbcore/host/hwa-hc.c

This file is no longer in the linux-next tree and will be deleted in the
next kernel release.

Also, no one has this hardware so there's no real security issue here at
all.

And finally, you forgot a signed-off-by line on your patch :(

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
