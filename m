Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C31311805
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Feb 2021 02:03:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A6A45873E8;
	Sat,  6 Feb 2021 01:03:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x5QdCXaWnzbN; Sat,  6 Feb 2021 01:03:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 32C398700B;
	Sat,  6 Feb 2021 01:03:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BCF271C115D
 for <devel@linuxdriverproject.org>; Sat,  6 Feb 2021 01:03:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AF603203BA
 for <devel@linuxdriverproject.org>; Sat,  6 Feb 2021 01:03:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eLI5HELbJ5xF for <devel@linuxdriverproject.org>;
 Sat,  6 Feb 2021 01:03:08 +0000 (UTC)
X-Greylist: delayed 00:05:54 by SQLgrey-1.7.6
Received: from condef-06.nifty.com (condef-06.nifty.com [202.248.20.71])
 by silver.osuosl.org (Postfix) with ESMTPS id 2FB40203B1
 for <devel@driverdev.osuosl.org>; Sat,  6 Feb 2021 01:03:07 +0000 (UTC)
Received: from conssluserg-01.nifty.com ([10.126.8.80])by condef-06.nifty.com
 with ESMTP id 1160rHJs026675
 for <devel@driverdev.osuosl.org>; Sat, 6 Feb 2021 09:53:17 +0900
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
 [209.85.214.178]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id 1160r64o004671
 for <devel@driverdev.osuosl.org>; Sat, 6 Feb 2021 09:53:06 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 1160r64o004671
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1612572787;
 bh=GPySi5FWUUgt3Nf/zevYzreQ14QCHC7dq4Gj7Iu6PdM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=KzoShgNcKgDb7aRIUtJmJ1rx2FCzGlFX5m421RSg8KaR+ZHU8DcZFfkcqCpImJ9Se
 20oACGiCEzq35ncdGVLdFr6G1HYhyWy3yG5j/x9hhHGP5NxMYVrw8h5YL8Obo6YLgf
 0JL+92QeKSoxYEWm/F+wV2qZUWoO7N4oDG5iKl1+/QwFmgAkEuLBfJn6y9tjzrDebn
 CkTvpcRmcekx+4ZSrH5eVn29+qe268TkYo2LZ43I6TRxiQJVDMNn33AogXk8F6sYKx
 vh58eyX+5U0MuKjD6MMyeih7AS0CJ0J0dJLiYuJsou+U3K8BZAAhnwrtxQ+ZftcYw/
 XzdXCJifY0GFQ==
X-Nifty-SrcIP: [209.85.214.178]
Received: by mail-pl1-f178.google.com with SMTP id d13so4432187plg.0
 for <devel@driverdev.osuosl.org>; Fri, 05 Feb 2021 16:53:06 -0800 (PST)
X-Gm-Message-State: AOAM532+VD9fw1EO/3u3qUdHrh+G09pADSLshABD3pCT/HI+s4N+TG9x
 R+BkafFluNbLYDIILpUrfpwswg9YVkpP64aDjqY=
X-Google-Smtp-Source: ABdhPJy2iadLfW+f/QGkcC2eqfoUOehXlU0LObloB/V5zjeO+YCzFrx6L4Mi1lzQVdV+RNvC/ncuPB1ZZ0t1rSii5I8=
X-Received: by 2002:a17:902:bb87:b029:e1:d1f:2736 with SMTP id
 m7-20020a170902bb87b02900e10d1f2736mr6360693pls.1.1612572786057; Fri, 05 Feb
 2021 16:53:06 -0800 (PST)
MIME-Version: 1.0
References: <1612518255-23052-1-git-send-email-yangyicong@hisilicon.com>
 <1612518255-23052-5-git-send-email-yangyicong@hisilicon.com>
 <YB0VxBrYM3BSoxrc@kroah.com>
In-Reply-To: <YB0VxBrYM3BSoxrc@kroah.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 6 Feb 2021 09:52:28 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQoUZYxswxT9zkq=G_2A4tdkhkedMyQhj8eHkBeqz7+Lw@mail.gmail.com>
Message-ID: <CAK7LNAQoUZYxswxT9zkq=G_2A4tdkhkedMyQhj8eHkBeqz7+Lw@mail.gmail.com>
Subject: Re: [PATCH 4/4] staging: comedi: Use subdir-ccflags-* to inherit
 debug flag
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: linux-hwmon@vger.kernel.org, kw@linux.com, giometti@enneenne.com,
 jdelvare@suse.com, prime.zeng@huawei.com,
 Linux PM mailing list <linux-pm@vger.kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 devel@driverdev.osuosl.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Yicong Yang <yangyicong@hisilicon.com>, linuxarm@openeuler.org,
 Ian Abbott <abbotti@mev.co.uk>, Michal Marek <michal.lkml@markovi.net>,
 Bjorn Helgaas <helgaas@kernel.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 5, 2021 at 6:54 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Fri, Feb 05, 2021 at 05:44:15PM +0800, Yicong Yang wrote:
> > From: Junhao He <hejunhao2@hisilicon.com>
> >
> > Use subdir-ccflags-* instead of ccflags-* to inherit the debug
> > settings from Kconfig when traversing subdirectories.
>
> Again, explain _why_.
>
> Please read the section entitled "The canonical patch format" in the
> kernel file, Documentation/SubmittingPatches for what a proper changelog
> should look like.
>
> thanks,
>
> greg k-h


I think this is a good clean-up,
assuming CONFIG_COMEDI_DEBUG intends to
give the DEBUG flag to all source files
under drivers/staging/comedi/.



-- 
Best Regards
Masahiro Yamada
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
