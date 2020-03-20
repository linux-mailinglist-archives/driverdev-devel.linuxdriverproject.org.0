Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAA218D2E4
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 16:29:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6AE702575D;
	Fri, 20 Mar 2020 15:29:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K2OMoITvXqw9; Fri, 20 Mar 2020 15:29:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 39D6025279;
	Fri, 20 Mar 2020 15:29:11 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 697471BF32C
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 15:29:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 63DE7207EF
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 15:29:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XV9ZTlN5U4PH
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 15:29:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by silver.osuosl.org (Postfix) with ESMTPS id C7473203E9
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 15:29:07 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id 39so6347860otu.3
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 08:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+gkz5rEreY2pce7+u0hxsxbHZUdmHD0hE2cyaP33Kwk=;
 b=kxtHwSlDwXflgCsXBg4ioajDwgHdCGik1rZ5jzGy3TxrEIv2PCpvn7vcEghyCV4q9C
 UzPRWPPH4BNIlK03iRkO2LtEyQIst1SRKng7IrQ11ZzuaMroCym/m2h7wcwtZqn+Tdtl
 3Gt6KQ88pmSzqXc4QrZ7VPRrjomyNLYIjwis6qIrTLiOLtvSrFB4tUvTxbCL6V88ZrVZ
 kGgvVwWrRlmJPtSgQ+D9J4HUt2JlqPgTXeJF4TIUumZto49eRAG+m9AB4SqNkP/gIfkz
 LIkgzkfGT1iibwCqKtHNYspm+ylqURM2WpGleewYQsICFsdoe31TgYdpRpLONM1CK8Vd
 2SBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+gkz5rEreY2pce7+u0hxsxbHZUdmHD0hE2cyaP33Kwk=;
 b=gYKUd5T3lfD8VlB1w+GTXMZki1gx8sYuf0cGujjfXfTkUJ35aP6GjuooetF3F0e/93
 xWtJuMinED0D1rvwCSoQxVVhbNzv5k5iGa68DZMmPFfA3SbHNC0ZOm63w246SBgJY9ba
 4VFBEwsp8NzWfkyjT9zVgXOkqNIPL0vp+M22qzEq2lLmy5eMeRSa1cFIIdkpmCUFGTA7
 npLceCb/EE8lxfYzRu9gIP4SJNZuj92TFjH1U/uY6CS5JNKDYy+t3kw0AE2QUkwuUNOm
 ZPV7ybEpJgnL1eOGnBnPyvidJXS6yBDw7V/yaO8J27fjm4l0SeVlSJxWeJo4zuB+JKU5
 +A3Q==
X-Gm-Message-State: ANhLgQ3guS/2yDaHHXE6Su6OBtiF3/G9GKy98qYY8LRzwaKJk9rjafkc
 cX99oatZ8qjhYoCMs92s6Egei8PFFLII+3dIlzU=
X-Google-Smtp-Source: ADFU+vu8RRhOoENXLF58m7WC0QfKPG5GxjlJ6TmK7KEV0zgUy9f1p0XyeuHxZN68/hERcmA6OQaY3TiB1LUMGvUwhSA=
X-Received: by 2002:a05:6830:1498:: with SMTP id
 s24mr6957750otq.242.1584718146114; 
 Fri, 20 Mar 2020 08:29:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200313200913.24321-1-sergio.paracuellos@gmail.com>
 <20200313200913.24321-6-sergio.paracuellos@gmail.com>
 <CAJsYDVKgx419P9f-Y7DaETejwaHwdbnT8+g-Uk4NoKB0qgqPKA@mail.gmail.com>
In-Reply-To: <CAJsYDVKgx419P9f-Y7DaETejwaHwdbnT8+g-Uk4NoKB0qgqPKA@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 20 Mar 2020 16:28:54 +0100
Message-ID: <CAMhs-H9-F+6QwD_LFihUk31mHn1B72LxR+i=AXgCFP0ESyjxKA@mail.gmail.com>
Subject: Re: [PATCH v4 5/6] staging: mt7621-pci: release gpios after pci
 initialization
To: Chuanhong Guo <gch981213@gmail.com>
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
Cc: ryder.lee@mediatek.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org, weijie.gao@mediatek.com,
 Greg Ungerer <gerg@kernel.org>, NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Chuanhong,

On Fri, Mar 20, 2020 at 3:59 PM Chuanhong Guo <gch981213@gmail.com> wrote:
>
> Hi!
>
> On Sat, Mar 14, 2020 at 4:10 AM Sergio Paracuellos
> <sergio.paracuellos@gmail.com> wrote:
> >
> > R3G's LEDs fail to initialize because one of them uses GPIO8
>
> A gpio can't be used as pcie reset and led simultaneously.
>

Obviously it can't. That was the reason for the release :)

> > Hence, release the GPIO resources after PCIe initialization
> > and properly release also in driver error path.
>
> This pin conflict comes from incorrectly occupying pins that are not
> used by pcie,
> and should be fixed by not occupying those pins in the first place.
> Releasing all
> gpios isn't the proper way to go.

So, you are saying we just have to get gpio for the pin 19 and forget
about the others?

>
> --
> Regards,
> Chuanhong Guo

Best regards,
    Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
