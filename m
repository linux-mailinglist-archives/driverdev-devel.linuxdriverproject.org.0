Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9641F3826BC
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 May 2021 10:20:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0089940160;
	Mon, 17 May 2021 08:20:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HgtTuaXTERw6; Mon, 17 May 2021 08:20:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EFBD1401F5;
	Mon, 17 May 2021 08:20:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 451931BF354
 for <devel@linuxdriverproject.org>; Mon, 17 May 2021 08:20:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 34C3B60784
 for <devel@linuxdriverproject.org>; Mon, 17 May 2021 08:20:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W_4FZWJS9lOn for <devel@linuxdriverproject.org>;
 Mon, 17 May 2021 08:20:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5FD7E60683
 for <devel@driverdev.osuosl.org>; Mon, 17 May 2021 08:20:04 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8F6BD60C3D;
 Mon, 17 May 2021 08:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1621239604;
 bh=jQEQ7PpbzLvBN7FZBkkzLqlizTBIfqJ/Z60sV9hQdlI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RaGuDfWGUMSDbEUQvxhJL0zEuVPFpjcqDWMtGFn4+pvOgk2azBgCWwfS3Hxhp/+UG
 g51WZN3430KZEO+N9c5rKUZkpeLv4J4thomaAEu/IkQEyIgUSiGVhAO6Bcc3wQbC9K
 SxtsLnOV87xr9eVUtW8Fz1IXAhdbGiENaDSnDOOQ=
Date: Mon, 17 May 2021 10:20:01 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 01/17] staging: add support for NUC WMI LEDs
Message-ID: <YKInMfIXegTUiNdB@kroah.com>
References: <cover.1621161037.git.mchehab+huawei@kernel.org>
 <7cec257fcc6e5789e5620495674e442a727a766f.1621161037.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7cec257fcc6e5789e5620495674e442a727a766f.1621161037.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, linux-staging@lists.linux.dev,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
 mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-leds@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, May 16, 2021 at 12:53:29PM +0200, Mauro Carvalho Chehab wrote:
> Some Intel Next Unit of Computing (NUC) machines have
> software-configured LEDs that can be used to display a
> variety of events:
> 
> 	- Power State
> 	- HDD Activity
> 	- Ethernet
> 	- WiFi
> 	- Power Limit

<snip>

One nit:

> +static void nuc_wmi_remove(struct wmi_device *wdev)
> +{
> +	struct device *dev = &wdev->dev;
> +
> +	dev_info(dev, "NUC WMI driver removed.\n");
> +}

Drivers, when working properly, should be quiet.  No need for noisy
stuff like this, it just slows down booting/loading for everyone.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
