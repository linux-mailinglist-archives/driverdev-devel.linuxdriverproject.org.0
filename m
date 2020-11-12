Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3362AFC2C
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Nov 2020 02:34:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9F52620448;
	Thu, 12 Nov 2020 01:34:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vv+zM0Ep2-6M; Thu, 12 Nov 2020 01:34:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 66206203DE;
	Thu, 12 Nov 2020 01:34:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 75FB81BF377
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 01:34:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6A6B02038F
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 01:34:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F8rk4VIR3ZJo for <devel@linuxdriverproject.org>;
 Thu, 12 Nov 2020 01:34:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 5E22220012
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 01:34:08 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id s24so4303570ioj.13
 for <devel@driverdev.osuosl.org>; Wed, 11 Nov 2020 17:34:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rbpdEV5oJs5EmTQ4qqBH8SAi38sGGbLtW6CQKc149hs=;
 b=QJHjI8PK16X+WFhTxpfikEQQBKesGLQy41FaqcLf/NYWYbNYkYVVY4hbzUW3/zu83+
 6LTXMHmPce3IvwNpRjh0UUYuL8X2qLjhdPiIxy706lUXRXEcc5pz3fkpGu81jquaTH+9
 sKFgqy3n4wBPlNcT5mJDERmYeN35oyrxsu0A2IODkzQbLooR+w4nqX9mslkCSt5ISpS2
 hAOgwGk6EzZkHldzpAi2aA1iEPC24vJwF3F0I3wnDGCMxZNCiJ+4sYLrw62wSb4ZpKWO
 KLFcdzbICoZltLeOVJSc2VZdHIqo2dbcpMPLoj+e9cmoqk0LKNPsI5f4H+WHK2mpZ1s/
 Z/pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rbpdEV5oJs5EmTQ4qqBH8SAi38sGGbLtW6CQKc149hs=;
 b=PPofksn5HK8eoSkLUvEkZBJKOwj7ibLieRGjXpYzSC31s8cncO2gaHWIsjreWtfsfm
 /fpjhaPgHUjTgNcoPfg9TRw4CRO1+7LSpY13/dOJOgLyDYruCq0glmmXwANTZjoguxRR
 2BDHbdvjMLTCKZQfzhU0/RsitdidLHA2ZD64GkCmRxj59nRnGyRABLrUh7uvLiZSFR+n
 4dkhclVpcaxVz5EOoOOeHS21jIECOad0tEetVJ2r86+EaYURMFCDs+vOosVJZsoSr+K3
 oNq2xPoRebbjMFPZiTGvqsWY5RRCFSRlXBTfxg7b/MfO27U1ZWyhVaZ9MLdAQjDfTUAc
 lY0w==
X-Gm-Message-State: AOAM530BUe1x7FcTw3+DQgKhx/eFXe9YwCAczUw+lNWQ+RIN+n2ptP9E
 EBVt70ubreZPNBhRzranGV5RTPFBeZqR51tva60=
X-Google-Smtp-Source: ABdhPJx9s5i1TWJ7IiZOclN/QEVz3COO+bkdo4SQu9Uhi7hDY6mOuJ+30tEBzttD211kuDsTR9BIV8uhKO5AcbH9RrA=
X-Received: by 2002:a02:a793:: with SMTP id e19mr21883768jaj.45.1605144847713; 
 Wed, 11 Nov 2020 17:34:07 -0800 (PST)
MIME-Version: 1.0
References: <20201111163013.29412-1-sergio.paracuellos@gmail.com>
 <CAJsYDVJtPqd-aPjJZFC76R2fbv1i=tVzRR7S1VFAMzp1QcPbiQ@mail.gmail.com>
In-Reply-To: <CAJsYDVJtPqd-aPjJZFC76R2fbv1i=tVzRR7S1VFAMzp1QcPbiQ@mail.gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Thu, 12 Nov 2020 09:33:56 +0800
Message-ID: <CAJsYDVKWuygjbBErQt1B5XD8Bp06-TdrziBzDdYmMGhU_8X-aA@mail.gmail.com>
Subject: Re: [PATCH 0/7] MIPS: ralink: add CPU clock detection and clock gate
 driver for MT7621
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

On Thu, Nov 12, 2020 at 9:26 AM Chuanhong Guo <gch981213@gmail.com> wrote:
>
> I've already said in previous threads that clock assignment in
> current linux kernel is not trustworthy.
> I've got the clock plan for mt7621 now. (Can't share it, sorry.)
> Most of your clock assumptions above are incorrect.
> I've made a clock driver with gate support a few months ago.[0]
> but I don't have much time to really finish it.
> Maybe you could rework your clock gate driver based on it.
>
> [0] https://github.com/981213/linux/commit/2eca1f045e4c3db18c941135464c0d7422ad8133

hsdma/eth/pio clocks are still missing in mediatek doc and
I just made them up in the driver. Correct clock frequency for
them aren't really important for them to work though.
And another part I didn't finish is checking clock support for
every drivers mt7621 used. Many drivers don't explicitly
enable the clock and may be problematic when kernel
gates unused clocks.

-- 
Regards,
Chuanhong Guo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
