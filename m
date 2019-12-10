Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B6917118A30
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 14:52:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C7DA8865E0;
	Tue, 10 Dec 2019 13:52:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6HGT2Q5rOofy; Tue, 10 Dec 2019 13:52:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A1BD6868A8;
	Tue, 10 Dec 2019 13:52:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 14CD91BF32A
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 13:52:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 10B8B20481
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 13:52:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p13BpvZo6WH9 for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 13:52:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
 by silver.osuosl.org (Postfix) with ESMTPS id 03D6B1FC7D
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 13:52:00 +0000 (UTC)
Received: from mail-qk1-f181.google.com ([209.85.222.181]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N0X4e-1hr88o0QA0-00wTDt for <devel@driverdev.osuosl.org>; Tue, 10 Dec
 2019 14:51:58 +0100
Received: by mail-qk1-f181.google.com with SMTP id d71so8470561qkc.0
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 05:51:57 -0800 (PST)
X-Gm-Message-State: APjAAAWnZ5BHYcEdZ545xaqktqL16LN3xvZiGBk3Oh3rmRNlmy5qjs9Y
 YPyYlbK7t3Qt053uBdLRF5NO1wrKcsjvXw2oKlQ=
X-Google-Smtp-Source: APXvYqz1Z3VQu14cGEdTS+3kitLufbAweTvgDCzRW5yW3aAgYx2ftuSqfnUE/zEYTVWiCkmMkithW+OYv0awWz30bIU=
X-Received: by 2002:a37:b283:: with SMTP id
 b125mr26419602qkf.352.1575985916448; 
 Tue, 10 Dec 2019 05:51:56 -0800 (PST)
MIME-Version: 1.0
References: <20191209151256.2497534-1-arnd@arndb.de>
 <20191209151256.2497534-4-arnd@arndb.de>
 <20191209.102950.2248756181772063368.davem@davemloft.net>
 <CAK8P3a25UGV1KS1ufZsyQJk1+9Rp9is0x6eOU7pr5Xf6Z3N2gA@mail.gmail.com>
 <407acd92c92c3ba04578da89b1a0f191@dev.tdt.de>
In-Reply-To: <407acd92c92c3ba04578da89b1a0f191@dev.tdt.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 10 Dec 2019 14:51:39 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0X7fYFTHTQbNB56tcnAxwM9HvrLWwDkH49bGKbqSByMw@mail.gmail.com>
Message-ID: <CAK8P3a0X7fYFTHTQbNB56tcnAxwM9HvrLWwDkH49bGKbqSByMw@mail.gmail.com>
Subject: Re: [PATCH 4/4] [RFC] staging/net: move AF_X25 into drivers/staging
To: Martin Schiller <ms@dev.tdt.de>
X-Provags-ID: V03:K1:9Hi8jhfWkPf8Sht7qe1M0uKZgnmyoA3O0khECWbzXNA9sbIVyx6
 IGBRjp4ncApU51k4D09VaghaPXVxzGwoAuyATl9YZnbDFRP0vOhUwjpBj4Her5s7D0yLESw
 OS679JsLL6yBGf7vacgY6zpj6Dz82Qcm/CC7827GHJCsR9HMcHkwbVyiesQVURrGJ26MrDv
 7x+Wm2bH2RY8zToh3epfw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:a/71yQLkV7E=:biMJVb1U25P7110uUxXVtE
 f+QkpC7SiJFXOq4/twVspXpUf3uLxH4aB6wPfPNXC6ADQkPMbtsNnwcirCDZsb8RFMqK71g89
 m+aIrFs6rl2ay6g0vkCcQwj4KQMoqetxOiOhhfco+7ik3m+CQ+ZKlzBbMeIo5tF/lfNLANbZ0
 UCox50Zftenlrrd9BfFbIH5L2ycd5sJy3zVH3jWocgQn+K3G4Q6TXgsh0E9tjm4UN1+sRLPDv
 rnUuEK5wehfwTB4kwR2VYibjWWOAhxLRc9DaUYaTxS/4W3ALMZJMDc8xNDzI+WR6KyfNO48ES
 mzoZgF0sMt3klkUoZRqp4Jgy2N40EmTwAeLH3PqI+7mN9icMYuINyyFAPngGrO/rsx+0lGXaM
 Uy2VXO6EGc5e56vIUZMpdUWdMjNgS0c0Z1SnVQD7Xo8NSyAwn0fJ3OAY83K7hGasCrsdg/eVt
 mx1S5O7Yk1zfQT9vR2lXlA8Ozm8uw4+TneAsatITjsQiD7EKIQrswy1mXd35sQTeJu/UVKiRy
 ise6Q+EYOlj7hKm76CM7vKO0JRz49i3wEU/nm2r0wGaLSTEALaLwD9kYFCvSzeiZmtaEUr/E5
 fFv3qTY55a79PoYIpY3uZnNX0GOnaQSXzfiXZSfHjSADn4hV+Z1tZpXaaPxEbUU6cAkdGQMa3
 vCRp8OIFivoMC09R5qC5g2FMBcis4YuHd8+cVGbE9Jw2yCFexlzC3c01S2W+RQW/Vs5DMmOdE
 PYKJbvw7p/m18XvL6Sj4+g9yJIrPSkZb4Lqxn0BZuc7SS/HCqG9ZZjtScrBT7bOFWQyOeTcCX
 I8gDKs7aFXqVpSJBm9UYaO0RkYrf34Ir5n7eHZG7NxPLYr10isVuwS/Q2FCCwHwT95XguQfuu
 01mabOtXxqAiIdhpBDtw==
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
Cc: driverdevel <devel@driverdev.osuosl.org>, linux-x25@vger.kernel.org,
 gregkh <gregkh@linuxfoundation.org>, "R.J.Dunlop" <bob.dunlop@farsite.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kevin Curtis <kevin.curtis@farsite.com>, Eric Biggers <ebiggers@kernel.org>,
 Networking <netdev@vger.kernel.org>, Andrew Hendry <andrew.hendry@gmail.com>,
 Qiang Zhao <qiang.zhao@nxp.com>, David Miller <davem@davemloft.net>,
 khc@pm.waw.pl
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 10, 2019 at 9:59 AM Martin Schiller <ms@dev.tdt.de> wrote:
> On 2019-12-09 20:26, Arnd Bergmann wrote:
> > On Mon, Dec 9, 2019 at 7:29 PM David Miller <davem@davemloft.net>
> > wrote:
> >>
> >> From: Arnd Bergmann <arnd@arndb.de>
> >> Date: Mon,  9 Dec 2019 16:12:56 +0100
> >>
> >> > syzbot keeps finding issues in the X.25 implementation that nobody is
> >> > interested in fixing.  Given that all the x25 patches of the past years
> >> > that are not global cleanups tend to fix user-triggered oopses, is it
> >> > time to just retire the subsystem?
> >>
> >> I have a bug fix that I'm currently applying to 'net' right now
> >> actually:
> >>
> >>         https://patchwork.ozlabs.org/patch/1205973/
> >>
> >> So your proposal might be a bit premature.
> >
> > Ok, makes sense. Looking back in the history, I also see other bugfixes
> > from the same author.
> >
> > Adding Martin Schiller to Cc: for a few questions:
> >
> > - What hardware are you using for X.25?
>
> I would say that X.25 is (at least in Germany) not dead yet. For
> example, it is still used in the railway network of the Deutsche Bahn AG
> in many different areas. [1]
>
> We deliver products for this and use the Linux X.25 stack with some
> bugfixes and extensions that I would like to get upstream.

Right, when I looked for possible users, I found several examples
where X.25 is still relevant, my impression was just that none of those
were using the mainline Linux network stack.

Thank you for clarifying that.

> As hardware/interfaces we use X.21bis/G.703 adapters, which are
> connected via
> HDLC_X25 and LAPB. Also for this there are extensions and bugfixes,
> which I  would like to include in the kernel.

> > - Would you be available to be listed in the MAINTAINERS file
> >   as a contact for net/x25?
>
> Yes, you can add me to the MAINTAINERS file.
> I have only limited time, but I will try to follow all requests
> concerning this subsystem.

Great! I don't expect there to be a lot of work, but it definitely helps
to have someone who can look at the occasional build failure or
code cleanup patch.

If this works for everyone, I'd submit the following patch:

commit b63caa9a8d86a5bfc64052bf9aab9b22181120fd (HEAD)
Author: Arnd Bergmann <arnd@arndb.de>
Date:   Tue Dec 10 14:28:39 2019 +0100

    MAINTAINERS: add new X.25 maintainer

    Martin Schiller is using the Linux X.25 stack on top of HDLC and
    X.21 networks. He agreed to be listed as a maintainer to take
    care of odd fixes.

    Add him as the primary contact for net/x25 and net/lapb, as well
    as a reviewer for drivers/net/wan, which contains the HDLC code.

    Cc: Martin Schiller <ms@dev.tdt.de>
    Cc: Andrew Hendry <andrew.hendry@gmail.com>
    Cc: Krzysztof Halasa <khc@pm.waw.pl>
    Link: https://lore.kernel.org/netdev/407acd92c92c3ba04578da89b1a0f191@dev.tdt.de/
    Signed-off-by: Arnd Bergmann <arnd@arndb.de>

diff --git a/MAINTAINERS b/MAINTAINERS
index 8e58410a799a..00b624b96103 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6889,6 +6889,7 @@ F:        Documentation/i2c/muxes/i2c-mux-gpio.rst

 GENERIC HDLC (WAN) DRIVERS
 M:     Krzysztof Halasa <khc@pm.waw.pl>
+R:     Martin Schiller <ms@dev.tdt.de>
 W:     http://www.kernel.org/pub/linux/utils/net/hdlc/
 S:     Maintained
 F:     drivers/net/wan/c101.c
@@ -9255,13 +9256,6 @@ S:       Maintained
 F:     arch/mips/lantiq
 F:     drivers/soc/lantiq

-LAPB module
-L:     linux-x25@vger.kernel.org
-S:     Orphan
-F:     Documentation/networking/lapb-module.txt
-F:     include/*/lapb.h
-F:     net/lapb/
-
 LASI 53c700 driver for PARISC
 M:     "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>
 L:     linux-scsi@vger.kernel.org
@@ -17911,11 +17905,16 @@ S:    Maintained
 N:     axp[128]

 X.25 NETWORK LAYER
+M:     Martin Schiller <ms@dev.tdt.de>
 M:     Andrew Hendry <andrew.hendry@gmail.com>
 L:     linux-x25@vger.kernel.org
 S:     Odd Fixes
 F:     Documentation/networking/x25*
+F:     Documentation/networking/lapb-module.txt
+F:     include/linux/lapb.h
 F:     include/net/x25*
+F:     include/uapi/linux/x25.h
+F:     net/lapb/
 F:     net/x25/

 X86 ARCHITECTURE (32-BIT AND 64-BIT)

-----
> > - Does your bug fix address the latest issue found by syzbot[1],
> >   or do you have an idea to fix it if not?
>
> I don't have a direct solution for the concrete problem mentioned above,
> but at
> first sight I would say that the commit 95d6ebd53c79 ("net/x25: fix
> use-after-free in x25_device_event()") holds the wrong lock
> (&x25_list_lock).
> Shouldn't this be the lock &x25_neigh_list_lock as in x25_get_neigh(),
> where x25_neigh_hold() is called?

After looking at it again, my best guess is something else:
x25_wait_for_connection_establishment() calls release_sock()/lock_sock()
while waiting. At this point, a concurrent x25_connect() can
overwrite the x25->neighbour variable, which needs to be checked
again before calling x25_neigh_put().

      Arnd
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
