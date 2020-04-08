Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D19C01A2920
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 Apr 2020 21:09:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A4D9124074;
	Wed,  8 Apr 2020 19:09:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TsVdU9CQZ99F; Wed,  8 Apr 2020 19:09:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 088542353A;
	Wed,  8 Apr 2020 19:09:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7E47C1BF296
 for <devel@linuxdriverproject.org>; Wed,  8 Apr 2020 19:09:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 79FD320796
 for <devel@linuxdriverproject.org>; Wed,  8 Apr 2020 19:09:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x-qluIVcL5Lb for <devel@linuxdriverproject.org>;
 Wed,  8 Apr 2020 19:09:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
 by silver.osuosl.org (Postfix) with ESMTPS id 9A17720785
 for <devel@driverdev.osuosl.org>; Wed,  8 Apr 2020 19:09:08 +0000 (UTC)
Received: from mail-qt1-f182.google.com ([209.85.160.182]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1N3KDM-1jD5Dn41Ss-010Mez for <devel@driverdev.osuosl.org>; Wed, 08 Apr
 2020 21:09:06 +0200
Received: by mail-qt1-f182.google.com with SMTP id b10so783601qtt.9
 for <devel@driverdev.osuosl.org>; Wed, 08 Apr 2020 12:09:05 -0700 (PDT)
X-Gm-Message-State: AGi0Pua/yBkk3HOiqAwTPQTp5QsUHYCexg4sL/m8vE7f4uT5snwYJJfQ
 z5axBm7edfRf2Of9/kdgJurTfD0kyiZsPMaNAI0=
X-Google-Smtp-Source: APiQypLVZg9HrJ8HaBMPoIbgmXFLy2wkvpPQbu4xfZqD2UDsW3+2l9wXsJzoILy3lNnN0lCMXpZUMWd32YBEbRrW7/A=
X-Received: by 2002:aed:3b4c:: with SMTP id q12mr8495378qte.18.1586372944700; 
 Wed, 08 Apr 2020 12:09:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200408155325.2077345-1-arnd@arndb.de>
 <3336c3105120d2f90dbc20d47ff98e722a123d5b.camel@collabora.com>
In-Reply-To: <3336c3105120d2f90dbc20d47ff98e722a123d5b.camel@collabora.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 8 Apr 2020 21:08:48 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1K5T2e2kAQMVi=ubPN3v4rYgtb9TaGC6evNXSUc4embQ@mail.gmail.com>
Message-ID: <CAK8P3a1K5T2e2kAQMVi=ubPN3v4rYgtb9TaGC6evNXSUc4embQ@mail.gmail.com>
Subject: Re: [PATCH] media: staging: rkisp1: avoid unused variable warning
To: Ezequiel Garcia <ezequiel@collabora.com>
X-Provags-ID: V03:K1:HXm7thx4nySk383JxWTJFvg2uEZpeCTQICDKli1xP8GxsvO8yK6
 XaR86MzUeaJBJwcZTzuejdPzXqYIG/KZd5nSLOLDb19lcRPwQy1jrEOS/4B+5NKX/voiJtB
 Pl87pM5SgVrNp/RbvdLJWC0I5+zJv1B/8Af6Nb43/G4azmzmwHDBUKMWxm4V4WK4tqSiKNI
 tq9EsinWrYGtuyhxSd3jg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:y68znJV2qSQ=:EKWHqbu4vjmXo5R3N6Udj8
 4gwAbIXSq2Zbnka77EY4FQ04lyflonEVUL6YfqTu55ADLWdfU77TMcqbXsIu81Ac5X04PONnd
 FMFUwZ+U0EyudCoHwt9I2h/F/NqAH12CzKL9kaxDr/r+LtXALlCalXtaBp2G8YQKDSjuRiJRn
 AU9mJVkkI7tZPsc1wInaOWy2GOjYoUsZMwS9TccP0z+bFMI41mEym3q22y+TPnaXlqI9x9zax
 ASRS3Y2Y+f/mhaL0YbJMsarGRfEoRc521jmx04WXDZ8EOmylv4gbb8pzOS7qrMgEACWNnzKMf
 nsIcHtk88V9ErnsH7zd+E/pouFMJiA+FMA3z64odYkaJP43FXcKzOJFLjuqSTgN0HDGSau1vY
 Aduzpsf9FQcyl6mWOomdixWjGehnv0B66DMzHeJHCFUEkNa+/N1HBjEkgnyrbCv4ttqWqbSj7
 rPfkOTQvd6sP8z2LH1i14Q1C0vnp4MLnHWiplESyli+oLYuMqwS7qCfv75ZpRZUkVrvgV+dln
 e8DHq7j0IGl72QxX5hdw/Vgi93HCFeLQDTqbrdho23RbQrMi0QkPBukCyrKgs0WXcmnNa1FFv
 f2I4PA6lBbqGNwTYzrbnTMmYs7CcOUrBaLlgZ8pzELNlg1apW0fhPJ+3rgDLIsN+xIWRi0wXp
 4gqglpLZf2WIvQEodjO4TQ7UF1Mp9zcDpyEIBWe2lq0F1DqmZ+J4Jz7aFoJ06DpK3wwI8GtZE
 FTc8/Him1MkXQ3/IGeaETNC6ui6q3W/mzw8Qw8lg79TBxOZbEa5E/K6iu0g9bNslX6v8dynU1
 /Xflhj45k4d+xruErZASe6rCW27yC/lAClrZzokSf/D/hhJPj0=
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
 Eddie Cai <eddie.cai.linux@gmail.com>, Jacob Chen <cc@rock-chips.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Jacob Chen <jacob2.chen@rock-chips.com>,
 Jeffy Chen <jeffy.chen@rock-chips.com>, Yichong Zhong <zyc@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Allon Huang <allon.huang@rock-chips.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Apr 8, 2020 at 7:56 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> On Wed, 2020-04-08 at 17:52 +0200, Arnd Bergmann wrote:
> > When compile-testing with CONFIG_OF disabled, we get a warning
> > about an unused variable, and about inconsistent Kconfig dependencies:
> >
> > WARNING: unmet direct dependencies detected for PHY_ROCKCHIP_DPHY_RX0
> >   Depends on [n]: STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=m] && (ARCH_ROCKCHIP [=n] || COMPILE_TEST [=y]) && OF [=n]
> >   Selected by [m]:
> >   - VIDEO_ROCKCHIP_ISP1 [=m] && STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=m] && VIDEO_V4L2 [=m] && VIDEO_V4L2_SUBDEV_API [=y] &&
> > (ARCH_ROCKCHIP [=n] || COMPILE_TEST [=y])
> >
> > drivers/staging/media/rkisp1/rkisp1-dev.c: In function 'rkisp1_probe':
> > drivers/staging/media/rkisp1/rkisp1-dev.c:457:22: error: unused variable 'node' [-Werror=unused-variable]
> >   457 |  struct device_node *node = pdev->dev.of_node;
> >
> > Simply open-coding the pointer dereference in the only place
> > the variable is used avoids the warning in all configurations,
> > so we can allow compile-testing as well.
> >
>
> Hello Arnd,
>
> Thanks for your patch.
>
> I believe this is already fixed here:
>
> https://patchwork.linuxtv.org/patch/62774/
> https://patchwork.linuxtv.org/patch/62775/

Ok, sorry for the duplicate. I only tested on mainline from a few days ago,
so I must have missed it getting merged in the meantime.

    Arnd
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
