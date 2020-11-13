Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 817802B1591
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Nov 2020 06:33:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6C98E873A8;
	Fri, 13 Nov 2020 05:33:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9o1lJV8PCfAT; Fri, 13 Nov 2020 05:33:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 284DF8735E;
	Fri, 13 Nov 2020 05:33:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 18E321BF852
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 05:33:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1532C86ADA
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 05:33:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xc47+7F8JEF9 for <devel@linuxdriverproject.org>;
 Fri, 13 Nov 2020 05:33:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B0E1086973
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 05:33:07 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id c80so9231623oib.2
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 21:33:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rzpHxVwtYfPNR5m+0xd40O02SiyxGAAISovudBzR/vE=;
 b=h86+nsdjF93+wDYVtajUVNvY26hefcNO04S+d0kH+aiRUmxn58HcQx5GtgRzTOZZg7
 qtXZbq4JpNzvvjKAnjgzcujlx+yLhKxWysKxVUHdj9hcYpjHiwcYjfITQyblfLCd8BL2
 d2bOfs2FEkwNBZGGGDYwInbsQp8GwLNv+BTmQ7vmL0XGShcy94/3LcblWZu0yr2DAOYm
 CAdnXuF54D7OuqAweTnyGlQhL7UMhXNdlcLjUWtg9CAtMYEqIn97G286HoczEHADNb/+
 Leez1Sjob23y065wvBBKLehx4xhenW1CRkTCIzUZPa5aEFxJZX7x8ZLRUiAQpQiODjwe
 mk9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rzpHxVwtYfPNR5m+0xd40O02SiyxGAAISovudBzR/vE=;
 b=qSyjYY7zunwhe0GQQAOlV3gNhX3MjAdS00z7cFY4x5dceimiMQ02iaJtNXBs1ZQnuO
 ntwj6Ma+WVEWYKwuUIS4dO32iBue1AiSSdpIrGfer78Kc8/QB7p8e83hsBKoAoQiDrYB
 EhCZAmp+NJrDC1eOWfcFKPBlSk7RKfZ9+XBa1wrUMNEQOCwjXVtNmZLXKa+6EmOWfqmz
 8YOIov/StkBm9Mvf+u9CKCgIurxR0FBmlZw3HB2sf/+OqYtCTcis5YQ+0FZ7hz0v5sxr
 9KlN7pDzXQ94bNPMZLJN0wkUXPSlshSwsI0UpBpdzwAvhuTPmxQyxKyo2pIy6OJ09MJz
 +Prg==
X-Gm-Message-State: AOAM532NMlw84F90Z7fcBH6rlq7nS2hQa7az/vpZkaSma+go0q5prV8c
 tmtqppPeGWlgNL/pqlK8pJ9mr+w6lagAl+u+Y6k=
X-Google-Smtp-Source: ABdhPJzvDqnz5H8slcSClxUbBKekqGkSOvIRf7i1k5l9QQ/+KRmv33DpeSYtc0XvtPH09vHjxxEa5wSlnHz8GOQH1sA=
X-Received: by 2002:aca:f407:: with SMTP id s7mr377123oih.23.1605245587028;
 Thu, 12 Nov 2020 21:33:07 -0800 (PST)
MIME-Version: 1.0
References: <20201111163013.29412-1-sergio.paracuellos@gmail.com>
 <CAJsYDVJtPqd-aPjJZFC76R2fbv1i=tVzRR7S1VFAMzp1QcPbiQ@mail.gmail.com>
 <CAJsYDVKWuygjbBErQt1B5XD8Bp06-TdrziBzDdYmMGhU_8X-aA@mail.gmail.com>
 <CAMhs-H85RCK=a_y+fVm-oR3hOEfr=rtVcLvX09YH4F65enz3oA@mail.gmail.com>
 <CAJsYDV+Gm-0HpvE7W8iG=t5JT+whrQjerRUT65eXxv2av9160A@mail.gmail.com>
In-Reply-To: <CAJsYDV+Gm-0HpvE7W8iG=t5JT+whrQjerRUT65eXxv2av9160A@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 13 Nov 2020 06:32:55 +0100
Message-ID: <CAMhs-H_qFpVv3KK5Bc4igrj7VffZSmAAT=sM8PSyY7H0-SV1yg@mail.gmail.com>
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

On Fri, Nov 13, 2020 at 1:40 AM Chuanhong Guo <gch981213@gmail.com> wrote:
>
> On Thu, Nov 12, 2020 at 1:23 PM Sergio Paracuellos
> <sergio.paracuellos@gmail.com> wrote:
> >
> > To avoid weird behaviour because of some drivers are
> > not using properly clocks we have the CLK_IGNORED_UNUSED, which as you
> > can see is currently being used in my code. Using that all seems to
> > work as expected as it is now.
>
> The whole point of having a clock gate driver is to gate unused
> clocks to save (maybe a tiny bit of) power. It's other peripheral
> drivers' fault that it doesn't enable clocks properly and we shouldn't
> just work-around the problem in the clock driver by disallowing auto
> clock gating.
>

Totally agreed with what you are saying here but I don't really think
using the flag is a workaround. It is just a way to ensure no
regressions occurred until all drivers are adapted and also having all
of them enabled is the behaviour. For me adapt the rest of driver code
 should be a different patch set after this driver is properly
finished and mainlined.

> --
> Regards,
> Chuanhong Guo

Best regards,
     Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
