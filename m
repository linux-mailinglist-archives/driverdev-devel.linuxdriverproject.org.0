Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D5B119295
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 21:59:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 35BE087C8A;
	Tue, 10 Dec 2019 20:59:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AvDUzQZ95GIL; Tue, 10 Dec 2019 20:59:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 108ED87ABA;
	Tue, 10 Dec 2019 20:59:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F8401BF20D
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 20:59:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2C3D8868C5
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 20:59:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wq6FGBDczF_b for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 20:59:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 05C6F84EF0
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 20:59:07 +0000 (UTC)
Received: from mail-qv1-f46.google.com ([209.85.219.46]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1M9ntb-1iblmu1PBF-005qnJ for <devel@driverdev.osuosl.org>; Tue, 10 Dec
 2019 21:59:05 +0100
Received: by mail-qv1-f46.google.com with SMTP id d17so4798895qvs.2
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 12:59:04 -0800 (PST)
X-Gm-Message-State: APjAAAVENSaehmw0aTaM1UM1GNQr1QTUOqj5w+anvHeiwLKiQ12AyE9k
 3OlMjhF8jpYyiQZYFmvUdfUsJXR1BquhOrRenR4=
X-Google-Smtp-Source: APXvYqxpaP4eHtfb0T1AafOuFFfZMxdK72/d9eCePNosbyemaiai5Ww7g6ZIkMFUlJlmnLpkyxwi/16JxNs8ZYi0oFM=
X-Received: by 2002:a0c:ead1:: with SMTP id y17mr29359318qvp.210.1576011543816; 
 Tue, 10 Dec 2019 12:59:03 -0800 (PST)
MIME-Version: 1.0
References: <20191209151114.2410762-1-arnd@arndb.de>
 <20191210091905.GA3547805@kroah.com>
In-Reply-To: <20191210091905.GA3547805@kroah.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 10 Dec 2019 21:58:47 +0100
X-Gmail-Original-Message-ID: <CAK8P3a21ubUOvKKFYPbC7tqg0wPjBi7iR7ZZP0xTbvvt6=PiEw@mail.gmail.com>
Message-ID: <CAK8P3a21ubUOvKKFYPbC7tqg0wPjBi7iR7ZZP0xTbvvt6=PiEw@mail.gmail.com>
Subject: Re: [PATCH 1/2] staging: remove isdn capi drivers
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Provags-ID: V03:K1:ZuuvJvTJltINdCsmjTkFKxz9gDGWGVoXdFVQUVRXQW3VzcYUlDV
 /4t6eCIYUsG8wMKilM6GVAMmTlDuDED/D41XRf5B8x59rYuytls9uoeH2Rl8hTpjqfw0UbT
 vvxl5XmSG0Sb7wVWN2LJ2MT1l5sD3DnTgQ+xezea4/d9IIBb5VPMtXwmAxBLxl8zDl77aCo
 zEYSVwYf9vdjG+p7wRi1w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:eSJ3N0RUzB0=:fVVoMMTYTLZr7+9ZOFmsaA
 bBk+8ks1sqlHroHUVi1jrb7Ve9sr6D2URv48W9uTcrQyRv0S0v827lX+ik0RVdKAwGvrqWlHR
 UO3VxdzBwh9UQUimS6Gv9CJ7rfQ07t+RLLXBaMnqkR4miy0BPNcb+ftWsiT6lf29i1FvS8uAS
 oeDr77wvrQfQ3eWBcbDcqnNbULOQ+5irAX5ywwUBKHq04ZDVc1bfMCK63XYD+ZCqE4myU3zkH
 PdxEoyhzgEEGjLmQc0Iw6MNw/pcoE90QbZfGJ/lyfskHD4TcPPrMBS0CZ9QqwZEdjOJ15YU0f
 2OGX8hODVa0YWs2pEJF148qqUjtv+jZxGvd1MH9YIn+b+NM/CEC0Ph0s/G3Zln8EhxVfS+fB5
 cI0NrzDNcSQtk4lR/svezGo+0kMMJh64MPh+uyySmGzhnADyY8eq+kUl7NtPR1I4QqupkiXp/
 Kx3gb2c9LkgkhQ17cyrgDtQYjyc7n7IPUwgZzyXJkzVjTgPkWY78jH1lHL3L3cDq3fSJe+2ZO
 AvWvXRvz3/msEtHLWTyLhry3tdrqUbEW/hdf/t9Kt3tfFG/lEU1a4gWMairInjPtE94IKhhL4
 ov85FkrzTfQ04NYD4jabJJmBNKy4DgU9P5c0IAH1teUPUMxwlBKgBj4ia2xYKida7OAxqxF1A
 MKoIXO+22fbMrn1N6P7kvsOF/OUJfgwPmw2YUiz2d36gAma4hOKxOiVi9M3e2v8eQDiRdnZBF
 3v9U2qstbe+C/LlPSR2aKNr3IOogpYiY5m4Wk8BEawO00bqqWCiHyEDR/9B+1us+Qfu9OGLtK
 c/nUDO5/fMwVpEzVQV73k5Ev+Ckep+fnb9weK9QPZQo4fs5X8kmQATQ/XxJRx7vnZrLHqdIH8
 DZLQ9cRYbIeyYUKeg0rw==
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
Cc: driverdevel <devel@driverdev.osuosl.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Networking <netdev@vger.kernel.org>,
 Marcel Holtmann <marcel@holtmann.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bluez mailing list <linux-bluetooth@vger.kernel.org>,
 isdn4linux@listserv.isdn4linux.de, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 10, 2019 at 10:19 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Mon, Dec 09, 2019 at 04:11:13PM +0100, Arnd Bergmann wrote:
> > As described in drivers/staging/isdn/TODO, the drivers are all
> > assumed to be unmaintained and unused now, with gigaset being the
> > last one to stop being maintained after Paul Bolle lost access
> > to an ISDN network.
> >
> > The CAPI subsystem remains for now, as it is still required by
> > bluetooth/cmtp.
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >  Documentation/ioctl/ioctl-number.rst        |    1 -
>
> This file is not in 5.5-rc1, what tree did you make this against?

This was against v5.4, sending a rebased version now.

      Arnd
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
