Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7851175C1
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Dec 2019 20:27:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 286C022008;
	Mon,  9 Dec 2019 19:27:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XoKiPolARcdS; Mon,  9 Dec 2019 19:27:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 59AC220794;
	Mon,  9 Dec 2019 19:27:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A970C1BF380
 for <devel@linuxdriverproject.org>; Mon,  9 Dec 2019 19:27:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A665385FA7
 for <devel@linuxdriverproject.org>; Mon,  9 Dec 2019 19:27:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QXx14tCRih8v for <devel@linuxdriverproject.org>;
 Mon,  9 Dec 2019 19:27:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 661FC85FA4
 for <devel@driverdev.osuosl.org>; Mon,  9 Dec 2019 19:27:17 +0000 (UTC)
Received: from mail-qt1-f180.google.com ([209.85.160.180]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1M6DrU-1igcfq20fw-006fWT for <devel@driverdev.osuosl.org>; Mon, 09 Dec
 2019 20:27:14 +0100
Received: by mail-qt1-f180.google.com with SMTP id s8so288263qte.2
 for <devel@driverdev.osuosl.org>; Mon, 09 Dec 2019 11:27:14 -0800 (PST)
X-Gm-Message-State: APjAAAVS02rKRyI5NV7cg6fZhJZJ7iVZWgP8sjUc0VE/Hzc2jQbEd2+J
 3EDW6fvR4XijaFdGGbjfNqSGxzJZpfouHcBcYwA=
X-Google-Smtp-Source: APXvYqw8S7eatu+K64zQ4xgIER2Piv2OR5qIkc9fHY9hfY2/sTUPAuTv7mjAtXGPnDIgDvdsQGZVrBJHzRcDC9wlEio=
X-Received: by 2002:ac8:768d:: with SMTP id g13mr26650326qtr.7.1575919633087; 
 Mon, 09 Dec 2019 11:27:13 -0800 (PST)
MIME-Version: 1.0
References: <20191209151256.2497534-1-arnd@arndb.de>
 <20191209151256.2497534-4-arnd@arndb.de>
 <20191209.102950.2248756181772063368.davem@davemloft.net>
In-Reply-To: <20191209.102950.2248756181772063368.davem@davemloft.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 9 Dec 2019 20:26:56 +0100
X-Gmail-Original-Message-ID: <CAK8P3a25UGV1KS1ufZsyQJk1+9Rp9is0x6eOU7pr5Xf6Z3N2gA@mail.gmail.com>
Message-ID: <CAK8P3a25UGV1KS1ufZsyQJk1+9Rp9is0x6eOU7pr5Xf6Z3N2gA@mail.gmail.com>
Subject: Re: [PATCH 4/4] [RFC] staging/net: move AF_X25 into drivers/staging
To: David Miller <davem@davemloft.net>
X-Provags-ID: V03:K1:00JZaPmFaSgFPD5xsJtbqFP5gnpUDwEs8TdGSD3K6/DAu0vntVD
 qUt21Th4lPoFht2orB5pOpOHqH69qegxLjX+DFBiOqbOmRGyMphV7F0CGACTVPlmtc5nFes
 W5OOG6kZ23kw+8FbZ0Q+26Xq+Z3OxgmgZ0ncl7+RyHhPbQxI9omFCj87ZE/xR62nrwP4KjN
 BMKq/VI6+Wn3nZRXAghlQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:pM0+KcrSBqk=:Sj9eps0Jv3OTqYsRrDdTbo
 DNNFZP4fkG3sEA6WQIxw7LAC1RgJlWidY7kQVXUOC16XO5EwaeJSA6uoNvDWECwvhDw2aYV8V
 h2HtrbDEhVoXyy3TBeaLTi5EXHSkjvtfdOrNddeF8WcqyIVCzzCJVXbwS7wgb71Guee2cIDmi
 EGlfFAtmp+YSOuiU1k1GWoMrfV5MNVEQvHsNltah7Qce151v3j44eKOXQBPewAhsimG6bVkqE
 s8VZHrnCYZj9arXMxUjevra4xgY/NQdN5a8/gwBJjGSDU/c5eq5SBA/RmkVy2Oh/pZ8zl90K3
 6mSEeLCB/9BlcxTnmCWpgJg5Mn4YFU7nJe7+9hLcUuodVnX6I1pAh7iIC8q+J06QCYE5dFFFr
 zpPlMhPBTLg7DkG2XxaGermdWMIxlkGMFuXvaQCnKed7IDO+WNPQYnJhDhCMXFCe/DXRExu2Z
 fCOt1GXkSS+FH77sC1JbfEdciEogpc1mtbD/lJrMx3V/n4ZOz7PvSRP1VifHq0raMHL19Eh1G
 vtLd9NI7a6wjIUpa4m2QuXGg6BGLDk5dXQLRkqjuCsLxePl0DCbcZWno4eOkYxiaH4LW+VB0q
 cKuphaxI/IJYMJzDwlPt4/K1p9CvbOgk8iKl+BS09p5eHX/9j/pcPas9Y0T0X+9VXY67Dsnb3
 ak/A2y25gCd0PE5GAeBPhMa+BXIH8HncbUlGAVF2geJxWitRjfVQ6BAvG6rNY1O6onoB0FUZy
 PeR51iPM2TsZ77+KlFISp3NszxmJdIcmOm20HEfYQCjAvtGLrpjOoCVZZe5Di5K/VnWn12GNw
 Sq2rXB8cJIsAotKE0+rFmBYjBMEZvBZISeFjr0FE8VXwO4l5zxVi4MwSy74/q4Ja82TmU8w2K
 Sgdi9QLPxGvuc8bxQHuw==
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
Cc: driverdevel <devel@driverdev.osuosl.org>, Martin Schiller <ms@dev.tdt.de>,
 linux-x25@vger.kernel.org, gregkh <gregkh@linuxfoundation.org>,
 "R.J.Dunlop" <bob.dunlop@farsite.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kevin Curtis <kevin.curtis@farsite.com>, Eric Biggers <ebiggers@kernel.org>,
 Networking <netdev@vger.kernel.org>, Andrew Hendry <andrew.hendry@gmail.com>,
 Qiang Zhao <qiang.zhao@nxp.com>, khc@pm.waw.pl
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 9, 2019 at 7:29 PM David Miller <davem@davemloft.net> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
> Date: Mon,  9 Dec 2019 16:12:56 +0100
>
> > syzbot keeps finding issues in the X.25 implementation that nobody is
> > interested in fixing.  Given that all the x25 patches of the past years
> > that are not global cleanups tend to fix user-triggered oopses, is it
> > time to just retire the subsystem?
>
> I have a bug fix that I'm currently applying to 'net' right now actually:
>
>         https://patchwork.ozlabs.org/patch/1205973/
>
> So your proposal might be a bit premature.

Ok, makes sense. Looking back in the history, I also see other bugfixes
from the same author.

Adding Martin Schiller to Cc: for a few questions:

- What hardware are you using for X.25?
- Would you be available to be listed in the MAINTAINERS file
  as a contact for net/x25?
- Does your bug fix address the latest issue found by syzbot[1],
  or do you have an idea to fix it if not?

        Arnd

[1] https://lore.kernel.org/netdev/CAK8P3a0LdF+aQ1hnZrVKkNBQaum0WqW1jyR7_Eb+JRiwyHWr6Q@mail.gmail.com/
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
