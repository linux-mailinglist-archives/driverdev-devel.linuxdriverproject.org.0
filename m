Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BAF3827E4
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 May 2021 11:12:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8353B402D4;
	Mon, 17 May 2021 09:12:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zVHr6VbvLAnb; Mon, 17 May 2021 09:12:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 07CDA401A4;
	Mon, 17 May 2021 09:12:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3CE2C1BF35B
 for <devel@linuxdriverproject.org>; Mon, 17 May 2021 09:12:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2A34F40452
 for <devel@linuxdriverproject.org>; Mon, 17 May 2021 09:12:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OjhNNFe9E8qF for <devel@linuxdriverproject.org>;
 Mon, 17 May 2021 09:12:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0407C4040E
 for <devel@driverdev.osuosl.org>; Mon, 17 May 2021 09:12:12 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 705A6611C2;
 Mon, 17 May 2021 09:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621242732;
 bh=6b1MoV4rxHMDe9ruMjs6F2HH22lmkZ793GKTShhLsLM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=W9l9gDEdYw6ilWNfdLln0vbHQbjfmdmbaiAgI933zjfgP2fytBPvdC3iUhslXBgez
 kBtFHP7m/g5RKuBpFBExsTHb9lBCelK5NcAwxjoSVgpYJFLRK9//tblJj/fx3M/nmC
 N3oq5VgHmeOfZ6bwlwLOSXsj+dUU8MsZT9ksfoyUHpcFgyx8qZbs72V+IQsp7y8g97
 3uzyoL2fVtwRWpFUwHZUBOT/hFUK2aomcF4bcr2SMd5Y/cEWs6NLZZ9M1UIFf5eqCi
 kjVx2TQ7vXVCXSHVYxNPgkPrsV5cgqiV4Vzx8opvmqumMyQU2D/JYeunbGamgpuEZX
 AQ5tJDWlgOMSA==
Date: Mon, 17 May 2021 11:12:07 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH 17/17] staging: nuc-led: update the TODOs
Message-ID: <20210517111207.023919c8@coco.lan>
In-Reply-To: <20210517105749.3180a59c@coco.lan>
References: <cover.1621161037.git.mchehab+huawei@kernel.org>
 <f23fed6a89f66564f5af52f241016a4b9823ce04.1621161037.git.mchehab+huawei@kernel.org>
 <20210516182149.GA3666@localhost>
 <20210517083001.7688acd7@coco.lan> <20210517080527.GA18642@amd>
 <20210517105749.3180a59c@coco.lan>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-staging@lists.linux.dev, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-leds@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Mon, 17 May 2021 10:57:49 +0200
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> escreveu:

> Em Mon, 17 May 2021 10:05:27 +0200
> Pavel Machek <pavel@ucw.cz> escreveu:

> > No. Take a look at triggers; for example hdd monitor should look very
> > much like existing disk trigger.  

Btw, is there a way to trigger brightness?

When a LED is monitoring the power state, brightness should be
hidden, as, instead of a single brightness parameter, the device
will now have one brightness per different power state, e. g.:

When the LED indicator is measuring *Power State*, the following 
parameters may be available:

    =================================	=======================================
    Parameter				Meaning
    =================================	=======================================
    <power_state>_brightness		Brightness in percent (from 0 to 100)
    <power_state>_blink_behavior	type of blink.
					See :ref:`nuc_blink_behavior`.
    <power_state>_blink_frequency	Blink frequency.
					See :ref:`nuc_blink_behavior`.
    <power_state>_color			LED color
					See :ref:`nuc_color`.
    =================================	=======================================

Where <power_state> is different, depending on the WMI API version:

On version 0.64 (NUC8/9):

    +------------+
    | s0	 |
    +------------+
    | s3	 |
    +------------+
    | s5	 |
    +------------+
    | ready_mode |
    +------------+

Btw, I've no idea what "ready mode" is, as the specs don't explain it.
This particular mode is disabled on my NUC8 device, so I can't test it.

On version 1.0 (NUC10+):

    +------------+
    | s0	 |
    +------------+
    | s3	 |
    +------------+
    | standby	 |
    +------------+

Note: At the specs, "Standby" is actually "Modern Standby". I ended
simplifying it, as just "standby_brightness" sounds good enough.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
