Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE802AFDB8
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Nov 2020 06:24:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 011A587619;
	Thu, 12 Nov 2020 05:24:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vFZpSt0iciUl; Thu, 12 Nov 2020 05:24:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6C92A87546;
	Thu, 12 Nov 2020 05:24:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C7B101BF857
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 05:23:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C2ABC87546
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 05:23:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kdk8G1acjjaQ for <devel@linuxdriverproject.org>;
 Thu, 12 Nov 2020 05:23:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2270087543
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 05:23:58 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id f16so4449334otl.11
 for <devel@driverdev.osuosl.org>; Wed, 11 Nov 2020 21:23:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NU0FnSXQ52zfzOppTtAfZgow5m+SuejdPqh1x/iQhIo=;
 b=cPsUI/o6jcDroRRF15FPKRzNWt/KUk/CDMBgqp+Sepr12C45no3YzDny+TA3uTQXDX
 xjpSwQcnKxfLjTDGOZtFlnmgs9nmDXv1k1yJVI2PgvuOO4W77RLSiaC4++J3Cbap89rU
 LXozxq7vhFRkQnlZBRtRYQnreuU98uqKspZ6lDsXTzkwTdEMDOkWYlhkkRJSh4n4ZAMt
 n3yq0Sr8C72i8m4Sx0mPmUEnOTNWWk+lNGCILpy2/IGnyVLkAMqvdUH0svCROz73rBLQ
 UdFI4Nit/dBaUbNxQXtHhUUGiBIrPBJnuqFF0bTc+ptDt8mZYs1G5rTgoJNHMx6OtBeC
 CY4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NU0FnSXQ52zfzOppTtAfZgow5m+SuejdPqh1x/iQhIo=;
 b=HPJj+vk6MfAq3ebiPuyHk4yblZecgxpYvXm9ESV4lfW3Q4DcxuJeXBFe81FZfAgeR4
 EitkyelgSHSV5YOnKu00tpZ2rm/qRO1BNQF3xxFdrhX7/JWN8D84rLdsqetdWRQBMYlE
 sfz5on+0Z9DdoQBVTkFOtt+QJCgdNSk6s1y1uJsSvZlMG95Osh7ReRU2m6PD8Y5HZYSW
 octIRq9M9BWAYELPMBj8HSkYRNJGMgEJPn957wWoJGNZgQl8nDk/HG4HxnS5WC1uyZgh
 QG15VFZYJj+Vp/XuOTTrsYinrME0/M++672O55quF+659hvHFtBlvJmyxS3gZpTaW8QZ
 NkwA==
X-Gm-Message-State: AOAM532KPUEdUzL5vpeM5P1mSezezVbN6s200u878eTNf4U6o9AyekPb
 AzOPcagSrkkO77FQd/ji2vFcCzufli9mZ1DqsCo=
X-Google-Smtp-Source: ABdhPJzgCBqL5XPCfRFxa2JBTGNwdjwYjw4dXs6Iin9lcc6LxT6/9ubBVjPvC14EPwoe8wCcM9g7m/ZnXV5uhc7d+Zs=
X-Received: by 2002:a9d:4704:: with SMTP id a4mr19589584otf.236.1605158637343; 
 Wed, 11 Nov 2020 21:23:57 -0800 (PST)
MIME-Version: 1.0
References: <20201111163013.29412-1-sergio.paracuellos@gmail.com>
 <CAJsYDVJtPqd-aPjJZFC76R2fbv1i=tVzRR7S1VFAMzp1QcPbiQ@mail.gmail.com>
 <CAJsYDVKWuygjbBErQt1B5XD8Bp06-TdrziBzDdYmMGhU_8X-aA@mail.gmail.com>
In-Reply-To: <CAJsYDVKWuygjbBErQt1B5XD8Bp06-TdrziBzDdYmMGhU_8X-aA@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Thu, 12 Nov 2020 06:23:46 +0100
Message-ID: <CAMhs-H85RCK=a_y+fVm-oR3hOEfr=rtVcLvX09YH4F65enz3oA@mail.gmail.com>
Subject: Re: [PATCH 0/7] MIPS: ralink: add CPU clock detection and clock gate
 driver for MT7621
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
Cc: Weijie Gao <hackpascal@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>, jiaxun.yang@flygoat.com,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, John Crispin <john@phrozen.org>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On Thu, Nov 12, 2020 at 2:34 AM Chuanhong Guo <gch981213@gmail.com> wrote:
>
> On Thu, Nov 12, 2020 at 9:26 AM Chuanhong Guo <gch981213@gmail.com> wrote:
> >
> > I've already said in previous threads that clock assignment in
> > current linux kernel is not trustworthy.
> > I've got the clock plan for mt7621 now. (Can't share it, sorry.)
> > Most of your clock assumptions above are incorrect.
> > I've made a clock driver with gate support a few months ago.[0]
> > but I don't have much time to really finish it.
> > Maybe you could rework your clock gate driver based on it.
> >
> > [0] https://github.com/981213/linux/commit/2eca1f045e4c3db18c941135464c0d7422ad8133
>
> hsdma/eth/pio clocks are still missing in mediatek doc and
> I just made them up in the driver. Correct clock frequency for
> them aren't really important for them to work though.
> And another part I didn't finish is checking clock support for
> every drivers mt7621 used. Many drivers don't explicitly
> enable the clock and may be problematic when kernel
> gates unused clocks.
>

Well, I think they are not important either. Also, by default gate
register has all the gate bits enabled. When a gate driver is added,
the kernel by default will try to disable those clocks that haven't
been requested. To avoid weird behaviour because of some drivers are
not using properly clocks we have the CLK_IGNORED_UNUSED, which as you
can see is currently being used in my code. Using that all seems to
work as expected as it is now.

> --
> Regards,
> Chuanhong Guo

Best regards,
    Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
