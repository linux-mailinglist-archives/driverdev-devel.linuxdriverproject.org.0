Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EB71E88D8
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 May 2020 22:24:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C5AE526282;
	Fri, 29 May 2020 20:24:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iUzAqZ8w7-3Q; Fri, 29 May 2020 20:24:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C807B26242;
	Fri, 29 May 2020 20:24:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 506491BF346
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:24:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4C3AD8758B
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:24:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ptF0Ov2JAlVb for <devel@linuxdriverproject.org>;
 Fri, 29 May 2020 20:24:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2AAC587589
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 20:24:14 +0000 (UTC)
Received: from mail-qv1-f41.google.com ([209.85.219.41]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MzyAy-1ilIcM1jTa-00x4Tz for <devel@driverdev.osuosl.org>; Fri, 29 May
 2020 22:24:12 +0200
Received: by mail-qv1-f41.google.com with SMTP id p15so1696470qvr.9
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 13:24:12 -0700 (PDT)
X-Gm-Message-State: AOAM530w4kzu0baojLtx8Qt8CEWSRylmKqTtaVHogVVQ7H8pnHpY1aiL
 IIKAQLG2XzpcNAabhNxr/xre1F851MuUuQ0xfbA=
X-Google-Smtp-Source: ABdhPJx7GHTTCfCGhussY+Eplzfo//0UkInYh6OmR/xMj6EDE6gnVnUEnrdJF8J+cDpIA5731Omdb8TsCeIGZfpOSvY=
X-Received: by 2002:a05:6214:1842:: with SMTP id
 d2mr5946816qvy.197.1590783851109; 
 Fri, 29 May 2020 13:24:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200529200031.4117841-1-arnd@arndb.de>
 <CAKwvOdnND7XFgr7W9PvZAikJB1nKxB4K5N-oP0YrBT74oX_C9g@mail.gmail.com>
In-Reply-To: <CAKwvOdnND7XFgr7W9PvZAikJB1nKxB4K5N-oP0YrBT74oX_C9g@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 29 May 2020 22:23:55 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2UKC=s7re2P+qfxz8eqeC+yCcPGuYKkgji9N_ugdgWhg@mail.gmail.com>
Message-ID: <CAK8P3a2UKC=s7re2P+qfxz8eqeC+yCcPGuYKkgji9N_ugdgWhg@mail.gmail.com>
Subject: Re: [PATCH 1/9] staging: media: atomisp: fix incorrect NULL pointer
 check
To: Nick Desaulniers <ndesaulniers@google.com>
X-Provags-ID: V03:K1:+go3gDWoqTJy18mxdlwbjQ5ONWRVZdm2v3DJWhLkJythYsu99P3
 x2pl3XRgeJqbfEOXmV+5BVeubFOO7tbzJAhin943JmEAGAZllz/2wi4Eussbcex+rSLkkwY
 PgYJRfqqHH16nIMGoQ57q0evVquUNofoh0Zb51d2j67AmOjkU3Q8C45V+O1rkNVeKt0lfyr
 xEqzKoSSuDjMjoTJ8a8hw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZKlYpmiTYIs=:f4QoAFXR+3FCgFpgIT5C4/
 i69z+UTwtwEFqPOIF74hLu6p7H4BlnXMEvddPaYm2IQzOTY/Qj5fwV4/WQOkwEwbyEMd8EAE0
 v+uOAqWkSffNvECTSr2yK+lYWBg4NysKEKEHwuDpJWfAODSmsLyRdNdRgIZ8m9qm8br6M2ATn
 9WPBpmkkq5Vy38ImM+bL3DXEubmvlDog+NCaWal38agAoGD9SMSCEuaA7ZD4BVEms7BlyEAvA
 PDSQATy8rLFnXEbXMI0AwqkS4kdw2XWVOIgwGsxjeXFlS9Wl/ZMiGcKOJlye6ToA5T2SnHuxF
 BNKCIcdxXsgBU7a+CQzrG5Mpox54dSedcHsGheqYZjhCEkJ5pIts3HR41DGM5jSe3ZhciXqcG
 I1A6b0JOXPiCslMKcUFOPCRWzB3QpR2Y48N1GAJTbkqhO/07BZpvpWSVvQ7ztwAXjCkKAq8Cu
 vVK1JwRrvq8wc6zNYTenaAEvwC6JrrCmbKobSyo2WRHgNzInxhW4MV9HC9tAdICtklVos9pdF
 OQVjN6g3lHnHgvo6xmz0avT1/eA7Qg8BQmZ19dByW75KR/A3tkmKq1pavRty/ZfsXqhPyfsNc
 tZLd/+Uu646jS5r0Td0gsuTAw7ZLaoNGAQ8ZhTxpNDc9aPwcTptrDmkLt1dfsgghB8cDrpiiW
 O5LdwuwUaaQn8gQl/BM84vYNQtAWSkPb7bCrs4qnoEcXneeJDXbz+E8ImUp2AP1SNz47DHE0M
 9ePPA+/9MA2jFcFB9s6CgPkyF/J8bJCUtfPzzDd1uGKgq8nPwCIogeym7Ot2ZuuGwKZYD3vmg
 DDD2PmHHWrRbg7wwFwccfhnoT65fYrJuX9ZrOQ1x6UsStOFY+c=
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
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 29, 2020 at 10:04 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> See also Nathan's 7 patch series.
> https://lore.kernel.org/lkml/20200527071150.3381228-1-natechancellor@gmail.com/
>
> Might be some overlap between series?
>

Probably. I really should have checked when I saw the number of warnings.

At least this gives Mauro a chance to double-check the changes and see if
Nathan and I came to different conclusions on any of them.

      Arnd
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
