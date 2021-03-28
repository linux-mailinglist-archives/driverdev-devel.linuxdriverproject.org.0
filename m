Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DA234BFBF
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Mar 2021 01:18:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7E6AB400D4;
	Sun, 28 Mar 2021 23:17:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ilk_LA1LZS6b; Sun, 28 Mar 2021 23:17:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DFD2E400C1;
	Sun, 28 Mar 2021 23:17:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 146DE1BF86D
 for <devel@linuxdriverproject.org>; Sun, 28 Mar 2021 23:17:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F144382FE7
 for <devel@linuxdriverproject.org>; Sun, 28 Mar 2021 23:17:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dp8GS1tb6Y2Q for <devel@linuxdriverproject.org>;
 Sun, 28 Mar 2021 23:17:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail003.nap.gsic.titech.ac.jp (mail003.nap.gsic.titech.ac.jp
 [131.112.13.103])
 by smtp1.osuosl.org (Postfix) with SMTP id 3A73782CA5
 for <devel@driverdev.osuosl.org>; Sun, 28 Mar 2021 23:17:44 +0000 (UTC)
Received: from 172.22.40.204
 by mail003.nap.gsic.titech.ac.jp with Mail2000 ESMTP Server
 V7.00(2579:0:AUTH_RELAY)
 (envelope-from <matsumoto.r.aa@m.titech.ac.jp>);
 Mon, 29 Mar 2021 08:17:37 +0900 (JST)
Received: from mail003.nap.gsic.titech.ac.jp (mail003.nap.gsic.titech.ac.jp
 [131.112.13.103])
 by drweb07.nap.gsic.titech.ac.jp (Postfix) with SMTP id A4BF645F1;
 Mon, 29 Mar 2021 08:17:37 +0900 (JST)
Received: from 153.240.174.134
 by mail003.nap.gsic.titech.ac.jp with Mail2000 ESMTPA Server
 V7.00(2581:3:AUTH_LOGIN)
 (envelope-from <matsumoto.r.aa@m.titech.ac.jp>);
 Mon, 29 Mar 2021 08:17:37 +0900 (JST)
Date: Mon, 29 Mar 2021 08:17:36 +0900 (JST)
Message-Id: <20210329.081736.2246581528075225457.ryutaroh@ict.e.titech.ac.jp>
To: stefan.wahren@i2se.com
Subject: Re: Sound issues with the 5.10.x kernel (alsa)
From: Ryutaroh Matsumoto <ryutaroh@ict.e.titech.ac.jp>
In-Reply-To: <20210329.081325.1881666155034010044.ryutaroh@ict.e.titech.ac.jp>
References: <20210328.145813.741944498213582966.ryutaroh@ict.e.titech.ac.jp>
 <7a123105-8c2e-e831-9466-3d8afc96aa8e@i2se.com>
 <20210329.081325.1881666155034010044.ryutaroh@ict.e.titech.ac.jp>
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

>> i assume you set this option in the config.txt? This shouldn't have any
>> affect for the mainline kernel / DT.
> I am aware of that...

I include my config.txt on RPi4B for reference...
arm_64bit=1
enable_uart=1
upstream_kernel=1
kernel=vmlinuz-5.10.0-5-rt-arm64
initramfs initrd.img-5.10.0-5-rt-arm64
disable_fw_kms_setup=1
disable_overscan=1
hdmi_enable_4kp60=1

Best regards, Ryutaroh Matsumoto
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
