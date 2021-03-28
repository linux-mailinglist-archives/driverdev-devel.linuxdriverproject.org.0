Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C38E34BA55
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Mar 2021 03:18:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A6E4040205;
	Sun, 28 Mar 2021 01:18:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kT29O4wHvb3u; Sun, 28 Mar 2021 01:18:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F00F640184;
	Sun, 28 Mar 2021 01:18:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 05E801BF982
 for <devel@linuxdriverproject.org>; Sun, 28 Mar 2021 01:18:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0129B83942
 for <devel@linuxdriverproject.org>; Sun, 28 Mar 2021 01:18:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pLhjCSyNWavH for <devel@linuxdriverproject.org>;
 Sun, 28 Mar 2021 01:18:09 +0000 (UTC)
X-Greylist: delayed 00:28:16 by SQLgrey-1.8.0
Received: from mail001.nap.gsic.titech.ac.jp (mail001.nap.gsic.titech.ac.jp
 [131.112.13.101])
 by smtp1.osuosl.org (Postfix) with SMTP id 6D0C483938
 for <devel@driverdev.osuosl.org>; Sun, 28 Mar 2021 01:18:09 +0000 (UTC)
Received: from 172.22.40.203
 by mail001.nap.gsic.titech.ac.jp with Mail2000 ESMTP Server
 V7.00(21086:0:AUTH_RELAY)
 (envelope-from <matsumoto.r.aa@m.titech.ac.jp>);
 Sun, 28 Mar 2021 09:49:00 +0900 (JST)
Received: from mail003.nap.gsic.titech.ac.jp (mail003.nap.gsic.titech.ac.jp
 [131.112.13.103])
 by drweb06.nap.gsic.titech.ac.jp (Postfix) with SMTP id 0D5B2EF;
 Sun, 28 Mar 2021 09:49:00 +0900 (JST)
Received: from 153.240.174.134
 by mail003.nap.gsic.titech.ac.jp with Mail2000 ESMTPA Server
 V7.00(2588:0:AUTH_LOGIN)
 (envelope-from <matsumoto.r.aa@m.titech.ac.jp>);
 Sun, 28 Mar 2021 09:48:59 +0900 (JST)
Date: Sun, 28 Mar 2021 09:48:59 +0900 (JST)
Message-Id: <20210328.094859.1841483083721098229.ryutaroh@ict.e.titech.ac.jp>
To: stefan.wahren@i2se.com
Subject: Re: Sound issues with the 5.10.x kernel (alsa)
From: Ryutaroh Matsumoto <ryutaroh@ict.e.titech.ac.jp>
In-Reply-To: <b0be09a0-5ec3-b716-4b77-1dde43719273@i2se.com>
References: <3165951.nLcn7dHqa8@bagend>
 <b0be09a0-5ec3-b716-4b77-1dde43719273@i2se.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
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
 978025@bugs.debian.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, didi.debian@cknow.org,
 985928@bugs.debian.org, maxime@cerno.tech
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi all,

From: Stefan Wahren <stefan.wahren@i2se.com>
Subject: Re: Sound issues with the 5.10.x kernel (alsa)
Date: Mon, 8 Feb 2021 13:22:56 +0100
>> This is basically me forwarding the bug I reported on Debian's BTS:
>> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=978025
>> TL;DR: I have a RPi 3B+ running pure Debian Bullseye arm64 (~from 
>> raspi.debian.net), named rpi-mpd, connected via HDMI cable to my AV Receiver.
> can you please confirm that the bcm2835-audio driver causing the issues?

I think the root cause of this issue is that both vc4.ko and snd_bcm2835.ko
try to provide ALSA sinks to HDMI audio outputs from RPi.
Why do the two drivers provide the same functionality for the same device?
It seems nonsense.
There must be some coordination between vc4.ko and snd_bcm2835.ko
on who provides ALSA sinks of RPi HDMI output.

The non-coordination that both drivers provide different ALSA sinks of the same
device already causes another symptom as
http://lists.infradead.org/pipermail/linux-rpi-kernel/2021-March/008077.html

Best regards, Ryutaroh Matsumoto
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
