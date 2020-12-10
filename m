Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A53C12D5AFC
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Dec 2020 13:54:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BDC1187383;
	Thu, 10 Dec 2020 12:54:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xMhAPmJeIqP1; Thu, 10 Dec 2020 12:54:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9AABC87336;
	Thu, 10 Dec 2020 12:54:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0660C1BF31C
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 12:54:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 02F1C872EE
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 12:54:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ru-cFBKT-A6P for <devel@linuxdriverproject.org>;
 Thu, 10 Dec 2020 12:54:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 918A1872E7
 for <devel@driverdev.osuosl.org>; Thu, 10 Dec 2020 12:54:21 +0000 (UTC)
Date: Thu, 10 Dec 2020 13:55:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1607604861;
 bh=KcwKvGKRWej3wjBdyOKtL4xEYVhJHIpgdWBDVoUDJec=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=0HyDI+NfW5JFwV4agXDxW+ZshOKLzuJrth8kpM+GcKPtWs/sn6mlh9CxUIxyQxGex
 FCk9vKUS8G4zIHhGkGvZCeQ9uSiPs3Jwzk3d9Wmwy8V1SuTwlKdkJmpHIsYHsR1m1F
 Zh56903Z5j/2D9CIyjoyi2DsfMV/JR1Guim+orKc=
From: 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>
To: =?iso-8859-1?Q?J=F3zsef_Horv=E1th?= <info@ministro.hu>
Subject: Re: [PATCH] Staging: silabs si4455 serial driver
Message-ID: <X9IayHu9E1HbnvJt@kroah.com>
References: <20201210122001.GA31758@dincontrollerdev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210122001.GA31758@dincontrollerdev>
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

On Thu, Dec 10, 2020 at 12:20:10PM +0000, J=F3zsef Horv=E1th wrote:
> I send this again, because my original mail content was corrupted.
> =

> This is a serial port driver for
> Silicon Labs Si4455 Sub-GHz transciver.
> =

> Signed-off-by: J=F3zsef Horv=E1th <info@ministro.hu>
> ---
>  .../bindings/staging/serial/silabs,si4455.txt |   39 +
>  drivers/staging/Kconfig                       |    2 +
>  drivers/staging/Makefile                      |    1 +
>  drivers/staging/si4455/Kconfig                |    8 +
>  drivers/staging/si4455/Makefile               |    2 +
>  drivers/staging/si4455/TODO                   |    3 +
>  drivers/staging/si4455/si4455.c               | 1465 +++++++++++++++++

I said I wasn't going to take this into drivers/staging/ so why is this
still here?

confused,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
