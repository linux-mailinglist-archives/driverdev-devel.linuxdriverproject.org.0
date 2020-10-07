Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F0D285DA0
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Oct 2020 12:54:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E33BD22E20;
	Wed,  7 Oct 2020 10:54:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8iSs7FC9bP-S; Wed,  7 Oct 2020 10:54:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CC60222D33;
	Wed,  7 Oct 2020 10:54:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 898C91BF314
 for <devel@linuxdriverproject.org>; Wed,  7 Oct 2020 10:54:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 834FB871E9
 for <devel@linuxdriverproject.org>; Wed,  7 Oct 2020 10:54:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n3On-oyGAFxI for <devel@linuxdriverproject.org>;
 Wed,  7 Oct 2020 10:54:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 04A31871D5
 for <devel@driverdev.osuosl.org>; Wed,  7 Oct 2020 10:54:30 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0DAC4212CC;
 Wed,  7 Oct 2020 10:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602068069;
 bh=wOytTXNCU8gtZ+ntCxQtyM7YOuGQFzHEkacmPvyiVVk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hBQtrv+04atIlx+6BcY4bd16tOCql3kl/BA+KjY/+fm2rBldCMlR7fAGLcRD4W6vN
 qhLpvXe5uMerVjjfMWrzrXuwYZzSunvxF+41BlVFnBozqFjp1oIkSx6dfxyqwYPnJP
 reqxG4DrtcZeO8eYZSwdOq0zCw7YZ6LpwouKpBZ0=
Date: Wed, 7 Oct 2020 12:55:13 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 0/7] wfx: move out from the staging area
Message-ID: <20201007105513.GA1078344@kroah.com>
References: <20201007101943.749898-1-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201007101943.749898-1-Jerome.Pouiller@silabs.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 07, 2020 at 12:19:36PM +0200, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> I think the wfx driver is now mature enough to be accepted in the
> drivers/net/wireless directory.
> =

> There is still one item on the TODO list. It is an idea to improve the ra=
te
> control in some particular cases[1]. However, the current performances of=
 the
> driver seem to satisfy everyone. In add, the suggested change is large en=
ough.
> So, I would prefer to implement it only if it really solves an issue. I t=
hink it
> is not an obstacle to move the driver out of the staging area.
> =

> In order to comply with the last rules for the DT bindings, I have conver=
ted the
> documentation to yaml. I am moderately happy with the result. Especially,=
 for
> the description of the binding. Any comments are welcome.
> =

> The series also update the copyrights dates of the files. I don't know ex=
actly
> how this kind of changes should be sent. It's a bit weird to change all t=
he
> copyrights in one commit, but I do not see any better way.
> =

> I also include a few fixes I have found these last weeks.
> =

> [1] https://lore.kernel.org/lkml/3099559.gv3Q75KnN1@pc-42

I'll take the first 6 patches here, the last one you should work with
the wireless maintainers to get reviewed.

Maybe that might want to wait until after 5.10-rc1 is out, with all of
these changes in it, making it an easier move.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
