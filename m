Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E8F18D31A
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 16:39:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 95C9B25492;
	Fri, 20 Mar 2020 15:39:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7vfk7Her6FM9; Fri, 20 Mar 2020 15:39:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B2F3F203D4;
	Fri, 20 Mar 2020 15:39:49 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D477E1BF32C
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 15:39:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D167187E71
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 15:39:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xDUOCPlv4YIY
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 15:39:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3B6438780A
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 15:39:47 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id 39so6386242otu.3
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 08:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QbqSGOh5/NFa3Za+FjvfXUSMZ4jSARk0oVUWq6LUBOY=;
 b=D0mNp8l868ihuWHdQmdOnS0eayekkibhNVoFN4ilZ7js3UPfswBYYzT5/QHYloxjg9
 KtE5IbOqXuLgLgTd+OYhxoZsa1FVsGbu1rKaHk2QuTgDuVv3q4kd2E2CBVCoyYxGiGyF
 iCrpFjtdcStxsxxn8df4qHIu8igXpvBc1kYwHSN+YI4326Us6ubFpwUKmRTVapK4WChM
 QC/+OsXFR9NPGlNQn7dqedryG7lBsS3+q0QdxMDoGAb2/651aak60hfsA0JysFg4KyWT
 pu/ezs6KCcyMTkeM19YB/S6almXVhSCfbV+Cc0N2Ix77edrIQ1SDieRIIjsZInw91hPG
 Nzog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QbqSGOh5/NFa3Za+FjvfXUSMZ4jSARk0oVUWq6LUBOY=;
 b=TGW/FABpOg78Etbvxuvl3P274wjgBkijzsfhn6XbnMNxWtd0pQR4wJGBhUW9vurSWI
 vKL4swvT7YriqDMse0JzVfgc36ayuRWsrcg7y/nbqC3ufKQVgAK3R+6YdjBp55EEFWZG
 kvByIQEF8OpS7eGNRLKGR5Yy/h4TiDUrBHxl0ncqF0fLOEwhD9WQnOPNlec6voKkto++
 Z7nRUVsGDf2sc59/I900pP3NmtDAyEfp62ctpFUsdpmBQhrdAOq2aSbfFcSuQ9ANixcu
 y8j9a+rY6gF/S3JfCgaQBP/RtEJF49rUmex1QeOl56peBwnZEERuDJH7fMU4ghtEbB++
 DDkQ==
X-Gm-Message-State: ANhLgQ1qzOvVGlQSkcb2BqCla6iLeX3DVxLk8TJLB1AkNGP0fysS381t
 QVPaNn048KLJhDe61aKUWP/xfVg6hfqsG29gzVw=
X-Google-Smtp-Source: ADFU+vsPUG3GazU56cYvVTEgwaM39RClUloOAqJP0qghyP06zNR2ucblomKHpbnJ7WSNCDMXaMAckrITrfiqL99O7zY=
X-Received: by 2002:a05:6830:1e25:: with SMTP id
 t5mr6983448otr.70.1584718786466; 
 Fri, 20 Mar 2020 08:39:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200313200913.24321-1-sergio.paracuellos@gmail.com>
 <20200313200913.24321-6-sergio.paracuellos@gmail.com>
 <CAJsYDVKgx419P9f-Y7DaETejwaHwdbnT8+g-Uk4NoKB0qgqPKA@mail.gmail.com>
 <CAMhs-H9-F+6QwD_LFihUk31mHn1B72LxR+i=AXgCFP0ESyjxKA@mail.gmail.com>
In-Reply-To: <CAMhs-H9-F+6QwD_LFihUk31mHn1B72LxR+i=AXgCFP0ESyjxKA@mail.gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Fri, 20 Mar 2020 23:39:35 +0800
Message-ID: <CAJsYDV+O9TY2uDHrFU5+RxEsurowMH4uskkdkGnfQb9cxTk76g@mail.gmail.com>
Subject: Re: [PATCH v4 5/6] staging: mt7621-pci: release gpios after pci
 initialization
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
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

Hi!

On Fri, Mar 20, 2020 at 11:29 PM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
> > This pin conflict comes from incorrectly occupying pins that are not
> > used by pcie,
> > and should be fixed by not occupying those pins in the first place.
> > Releasing all
> > gpios isn't the proper way to go.
>
> So, you are saying we just have to get gpio for the pin 19 and forget
> about the others?

Not really "forget about the others". We should use only gpio19
in mt7621.dtsi and others should be added to device dts if it's
actually needed. e.g. if pcie cards can't be detected on a specific
board without gpio7 and/or gpio8, override gpio-resets in dts of
that board.

-- 
Regards,
Chuanhong Guo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
