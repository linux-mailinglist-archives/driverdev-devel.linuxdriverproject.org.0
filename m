Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 787C934BB3A
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Mar 2021 07:59:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76B19605BF;
	Sun, 28 Mar 2021 05:59:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HnZpCka9tjfF; Sun, 28 Mar 2021 05:58:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0AF2605C3;
	Sun, 28 Mar 2021 05:58:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D22AF1BF4E2
 for <devel@linuxdriverproject.org>; Sun, 28 Mar 2021 05:58:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 22749400A7
 for <devel@linuxdriverproject.org>; Sun, 28 Mar 2021 05:58:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jJcvgDzyJ3ZG for <devel@linuxdriverproject.org>;
 Sun, 28 Mar 2021 05:58:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail001.nap.gsic.titech.ac.jp (mail001.nap.gsic.titech.ac.jp
 [131.112.13.101])
 by smtp4.osuosl.org (Postfix) with SMTP id 4230140364
 for <devel@driverdev.osuosl.org>; Sun, 28 Mar 2021 05:58:45 +0000 (UTC)
Received: from 172.22.40.203
 by mail001.nap.gsic.titech.ac.jp with Mail2000 ESMTP Server
 V7.00(21086:0:AUTH_RELAY)
 (envelope-from <matsumoto.r.aa@m.titech.ac.jp>);
 Sun, 28 Mar 2021 14:58:17 +0900 (JST)
Received: from mail001.nap.gsic.titech.ac.jp (mail001.nap.gsic.titech.ac.jp
 [131.112.13.101])
 by drweb06.nap.gsic.titech.ac.jp (Postfix) with SMTP id B8925F0;
 Sun, 28 Mar 2021 14:58:17 +0900 (JST)
Received: from 153.240.174.134
 by mail001.nap.gsic.titech.ac.jp with Mail2000 ESMTPA Server
 V7.00(21081:0:AUTH_LOGIN)
 (envelope-from <matsumoto.r.aa@m.titech.ac.jp>);
 Sun, 28 Mar 2021 14:58:15 +0900 (JST)
Date: Sun, 28 Mar 2021 14:58:13 +0900 (JST)
Message-Id: <20210328.145813.741944498213582966.ryutaroh@ict.e.titech.ac.jp>
To: stefan.wahren@i2se.com
Subject: Re: Sound issues with the 5.10.x kernel (alsa)
From: Ryutaroh Matsumoto <ryutaroh@ict.e.titech.ac.jp>
In-Reply-To: <20210328.094859.1841483083721098229.ryutaroh@ict.e.titech.ac.jp>
References: <3165951.nLcn7dHqa8@bagend>
 <b0be09a0-5ec3-b716-4b77-1dde43719273@i2se.com>
 <20210328.094859.1841483083721098229.ryutaroh@ict.e.titech.ac.jp>
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
 linux-rpi-kernel@lists.infradead.org, 985928@bugs.debian.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> I think the root cause of this issue is that both vc4.ko and snd_bcm2835.ko
> try to provide ALSA sinks to HDMI audio outputs from RPi.
> Why do the two drivers provide the same functionality for the same device?
> It seems nonsense.
> There must be some coordination between vc4.ko and snd_bcm2835.ko
> on who provides ALSA sinks of RPi HDMI output.

Giving "enable_hdmi=0" to snd_bcm2835.ko does not improve the situation,
while module_blacklisting snd_bcm2835 suppresses all the symptoms reported.
snd_bcm2835.ko in 5.10.24 seems having a bug ignoring "enable_hdmi=0".

Best regards, Ryutaroh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
