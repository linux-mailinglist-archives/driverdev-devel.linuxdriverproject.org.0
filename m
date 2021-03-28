Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BAC34BFBB
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Mar 2021 01:13:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C884606D3;
	Sun, 28 Mar 2021 23:13:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5A3IKKHU_97w; Sun, 28 Mar 2021 23:13:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC5026058D;
	Sun, 28 Mar 2021 23:13:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9B6361BF86D
 for <devel@linuxdriverproject.org>; Sun, 28 Mar 2021 23:13:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8517D83947
 for <devel@linuxdriverproject.org>; Sun, 28 Mar 2021 23:13:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iDX1Cmgyx6_Q for <devel@linuxdriverproject.org>;
 Sun, 28 Mar 2021 23:13:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail003.nap.gsic.titech.ac.jp (mail003.nap.gsic.titech.ac.jp
 [131.112.13.103])
 by smtp1.osuosl.org (Postfix) with SMTP id 22C8883870
 for <devel@driverdev.osuosl.org>; Sun, 28 Mar 2021 23:13:40 +0000 (UTC)
Received: from 172.22.40.203
 by mail003.nap.gsic.titech.ac.jp with Mail2000 ESMTP Server
 V7.00(2586:1:AUTH_RELAY)
 (envelope-from <matsumoto.r.aa@m.titech.ac.jp>);
 Mon, 29 Mar 2021 08:13:26 +0900 (JST)
Received: from mail001.nap.gsic.titech.ac.jp (mail001.nap.gsic.titech.ac.jp
 [131.112.13.101])
 by drweb06.nap.gsic.titech.ac.jp (Postfix) with SMTP id C8864EF;
 Mon, 29 Mar 2021 08:13:26 +0900 (JST)
Received: from 153.240.174.134
 by mail001.nap.gsic.titech.ac.jp with Mail2000 ESMTPA Server
 V7.00(21112:0:AUTH_LOGIN)
 (envelope-from <matsumoto.r.aa@m.titech.ac.jp>);
 Mon, 29 Mar 2021 08:13:26 +0900 (JST)
Date: Mon, 29 Mar 2021 08:13:25 +0900 (JST)
Message-Id: <20210329.081325.1881666155034010044.ryutaroh@ict.e.titech.ac.jp>
To: stefan.wahren@i2se.com
Subject: Re: Sound issues with the 5.10.x kernel (alsa)
From: Ryutaroh Matsumoto <ryutaroh@ict.e.titech.ac.jp>
In-Reply-To: <7a123105-8c2e-e831-9466-3d8afc96aa8e@i2se.com>
References: <20210328.094859.1841483083721098229.ryutaroh@ict.e.titech.ac.jp>
 <20210328.145813.741944498213582966.ryutaroh@ict.e.titech.ac.jp>
 <7a123105-8c2e-e831-9466-3d8afc96aa8e@i2se.com>
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

Hi Stefan, thank you for your response.

> i assume you set this option in the config.txt? This shouldn't have any
> affect for the mainline kernel / DT.

I am aware of that...
I did "snd_bcm2835 enable_hdmi=0" in /etc/modules.
"modinfo snd_bcm2835" shows as below. Doesn't it indicate snd_bcm2835 having
an option enable_hdmi???

It seems that the contention of grabbing HDMI audio output between vc4.ko
and snd_bcm2835.ko can be addressed if snd_bcm2835.ko honors the
option enable_hdmi with its default =0, but currently enable_hdmi seems
having no effect in behavior of snd_bcm2835...

# modinfo snd_bcm2835
filename:       /lib/modules/5.10.0-5-rt-arm64/kernel/drivers/staging/vc04_services/bcm2835-audio/snd-bcm2835.ko
alias:          platform:bcm2835_audio
license:        GPL
description:    Alsa driver for BCM2835 chip
author:         Dom Cobley
depends:        snd-pcm,vchiq,snd
staging:        Y
intree:         Y
name:           snd_bcm2835
vermagic:       5.10.0-5-rt-arm64 SMP preempt_rt mod_unload modversions aarch64
sig_id:         PKCS#7
signer:         Debian Secure Boot CA
sig_key:        4B:6E:F5:AB:CA:66:98:25:17:8E:05:2C:84:66:7C:CB:C0:53:1F:8C
sig_hashalgo:   sha256
signature:      omitted, too long.
parm:           force_bulk:Force use of vchiq bulk for audio (bool)
parm:           enable_hdmi:Enables HDMI virtual audio device (bool)
parm:           enable_headphones:Enables Headphones virtual audio device (bool)
parm:           enable_compat_alsa:Enables ALSA compatibility virtual audio device (bool)
parm:           num_channels:Number of audio channels (default: 8) (int)

Best regards, Ryutaroh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
