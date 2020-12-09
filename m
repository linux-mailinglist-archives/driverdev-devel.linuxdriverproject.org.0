Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 835672D419D
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Dec 2020 13:01:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4243A8738D;
	Wed,  9 Dec 2020 12:01:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y0lqdkotrQ0w; Wed,  9 Dec 2020 12:01:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1A5EE87419;
	Wed,  9 Dec 2020 12:01:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D7BBD1BF29F
 for <devel@linuxdriverproject.org>; Wed,  9 Dec 2020 12:01:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D45928730D
 for <devel@linuxdriverproject.org>; Wed,  9 Dec 2020 12:01:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VtkrxWCQL7cU for <devel@linuxdriverproject.org>;
 Wed,  9 Dec 2020 12:01:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AA76486FCB
 for <devel@driverdev.osuosl.org>; Wed,  9 Dec 2020 12:01:06 +0000 (UTC)
Date: Wed, 9 Dec 2020 13:02:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1607515266;
 bh=SxUcCOk6EABV426Vv5fQLgQpTaXc7Q0vhKOIeg7/cVo=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=pfoslDmSETsL8y+eBGotK+t74xmX2D24QCVPYznbkYgpPxigNCNOCmmJT99TFtnca
 d/etSQ5pXonj6iqBTNuW8/7KeTrBKMlGvO5DbJB7ILvjO4YICzj8FsEro+A5z3JqDQ
 hJgrqwOjWLaCQNBPihkh59k2KfeXL+2n9uIcnImM=
From: 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>
To: Info <info@ministro.hu>
Subject: Re: [PATCH] Staging: silabs si4455 serial driver
Message-ID: <X9C8zlCMvTev7ELE@kroah.com>
References: <!&!AAAAAAAAAAAuAAAAAAAAAM7AkQxKEJRHh2BgMNSTrQkBAExvbAW64DNBoXXP8CRioZMAAAAzfOEAABAAAAAJUqiRO33GQqGIHffCVyG/AQAAAAA=@ministro.hu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <!&!AAAAAAAAAAAuAAAAAAAAAM7AkQxKEJRHh2BgMNSTrQkBAExvbAW64DNBoXXP8CRioZMAAAAzfOEAABAAAAAJUqiRO33GQqGIHffCVyG/AQAAAAA=@ministro.hu>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 'Rob Herring' <robh+dt@kernel.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Dec 09, 2020 at 12:09:58PM +0100, Info wrote:
> This is a serial port driver for
> Silicon Labs Si4455 Sub-GHz transciver.
> =

> Signed-off-by: J=F3zsef Horv=E1th <info@ministro.hu>

Note, your From: line does not match this line, so I can't take this.

But:

> ---
>  .../bindings/staging/serial/silabs,si4455.txt |   39 +

staging drivers need to be self-contained, so this should be here.  It
needs to be reviewed by the DT maintainers when moving out of staging.

> index 000000000000..aee5c7613b31
> --- /dev/null
> +++ b/drivers/staging/si4455/TODO
> @@ -0,0 +1,3 @@
> +TODO:
> +        - add variable packet length support
> +        - add firmware patching support in case of Si4455-C2A

Why are these a requirement to get it out of staging?  Why go into
staging at all?  Why not go into the 'real' part of the kernel directly?
What is keeping that from happening today?

These look like new features that you can add later, and shouldn't be a
requirement for acceptance into the normal part of the kernel for this
driver.  Why have you not tried doing that first?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
