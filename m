Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE22A382BF5
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 May 2021 14:20:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 812A3404D9;
	Mon, 17 May 2021 12:20:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VYEsfxFMxkwI; Mon, 17 May 2021 12:19:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABA7D404CB;
	Mon, 17 May 2021 12:19:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C4BE31BF2A5
 for <devel@linuxdriverproject.org>; Mon, 17 May 2021 12:19:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B3875402D9
 for <devel@linuxdriverproject.org>; Mon, 17 May 2021 12:19:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AfSuLNVc-U1k for <devel@linuxdriverproject.org>;
 Mon, 17 May 2021 12:19:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 274894016B
 for <devel@driverdev.osuosl.org>; Mon, 17 May 2021 12:19:41 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3EBF361241;
 Mon, 17 May 2021 12:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621253980;
 bh=+dtwhtQMQDTNx7oQDH89iXtYmlwmei6zujh7Rnhnlww=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=glbVOIuOGEeefXMAjIxA0s9l6qVnSHjwjIFaA5Hmv1TS8mJ4gdrDAirnESwKap/+A
 AzgRttFn7Blas6mKyrhs/PMy0triHIIOh0lU83HeLhUXQYGGl+6QPqAAZLTho4UNgc
 TsQgm5lzz7du2534Ozvis2KhRlvMtLNQ+E0z99shujZbH7AEUms3Mo2+IjU7JBvXMi
 eGh+vRuPqb146yhtedL9QxT9LZw+M2VN2/VmpJfu4DxSCXEbfqroXf7S6fFkbPjdUl
 /up/HF5NOin+jOs63/s3Fo7IZy5PlAbWmLq69A/Ado8GF23L/TpD3MLcXYvnI2PbiI
 51pobsdjDX3hQ==
Date: Mon, 17 May 2021 14:19:35 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH 17/17] staging: nuc-led: update the TODOs
Message-ID: <20210517141935.4a7cb905@coco.lan>
In-Reply-To: <20210517080527.GA18642@amd>
References: <cover.1621161037.git.mchehab+huawei@kernel.org>
 <f23fed6a89f66564f5af52f241016a4b9823ce04.1621161037.git.mchehab+huawei@kernel.org>
 <20210516182149.GA3666@localhost>
 <20210517083001.7688acd7@coco.lan> <20210517080527.GA18642@amd>
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
 linux-kernel@vger.kernel.org, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-leds@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Mon, 17 May 2021 10:05:27 +0200
Pavel Machek <pavel@ucw.cz> escreveu:

> No. Take a look at triggers; for example hdd monitor should look very
> much like existing disk trigger.

Hmm... after looking at triggers, I'm not sure if this is the right
interface, nor if we're talking about the same thing.

See, at least the way ledtrig-disk.c uses it, two drivers are triggering 
the LED based on software events:

	drivers/ata/libata-core.c:      ledtrig_disk_activity(!!(qc->tf.flags & ATA_TFLAG_WRITE));
	drivers/ide/ide-disk.c: ledtrig_disk_activity(rq_data_dir(rq) == WRITE);

This is not how the NUC LEDs are work. On NUC, the hardware itself 
triggers the event and/or blinks the LED(*).

(*) By default, blink is enabled only when the device is suspended
    or it is hibernating.

There's no need to do any software emulation.

The API is meant to just program the hardware (and/or the firmware) 
for it to do the behavior expected by the user.

So, for instance, setting the indicator event that will trigger the
LED is done by sending a WMI message for this GUID object:
8C5DA44C-CDC3-46b3-8619-4E26D34390B7 (somewhat similar to using
the way ACPI works, but WMI is a different firmware interface).

The method at the WMI API which sets the LED indicator is this one:

	0x05 message (Set an Indicator option for the LED type)

Such method receives two parameters. The first one is the LED 
number, which can be:

	0 - Power button LED
	1 - HDD LED
	2 - Skull LED
	3 - Eyes LED
	4 - Front LED 1
	5 - Front LED 1
	6 - Front LED 1

The second one tells which hardware event will trigger the LED:

=====	==============	=======================================================
Value	Indicator type	Meaning
=====	==============	=======================================================
0	Power State	Shows if the device is powered and what power level
			it is (e. g. if the device is suspended or not, and
			on which kind of suspended level).
1	HDD Activity	Indicates if the LED is measuring the hard disk (or
			SDD) activity.
2	Ethernet	Indicates the activity Ethernet adapter(s)
3	WiFi		Indicates if WiFi is enabled
4	Software	Doesn't indicate any hardware level. Instead, the LED
			status is controlled via software.
5	Power Limit	Changes the LED color when the computer is throttling
			its power limits.
6	Disable		The LED was disabled (either by BIOS or via WMI).
=====	==============	=======================================================

There is an example at page 7 of the datasheet:

	https://raw.githubusercontent.com/nomego/intel_nuc_led/master/specs/INTEL_WMI_LED_0.64.pdf

Where it shows what happens if the WMI message is filled with:

	<0x05>  <0x00>  <0x01>

On such example, it changes the behavior of the button named "Power button" 
to change it to monitor the disk activity, instead of monitoring if the
device is powered on or not.

Such setting is even persistent after rebooting, and the event is
hardware/firmware triggered.

So, IMO, it would only makes sense to use something else from the LED
class if are there a way for the sysfs nodes to dynamically be shown/hidden
when the indicator changes.

At least on my eyes, that doesn't seem to be what triggers do.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
