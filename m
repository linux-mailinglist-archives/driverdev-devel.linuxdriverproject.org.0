Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4FB1D52A5
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 May 2020 16:55:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1F2C7860ED;
	Fri, 15 May 2020 14:55:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HOKbNv75JQ1F; Fri, 15 May 2020 14:55:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 177DC85608;
	Fri, 15 May 2020 14:55:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E88C21BF27C
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 14:55:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E472585567
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 14:55:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id byoCOuP5yXm2 for <devel@linuxdriverproject.org>;
 Fri, 15 May 2020 14:55:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kocurkovo.cz (mail.kocurkovo.cz [185.8.236.170])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8714C85045
 for <devel@driverdev.osuosl.org>; Fri, 15 May 2020 14:55:42 +0000 (UTC)
Received: by mail.kocurkovo.cz (Postfix, from userid 1000)
 id 78F5818CB; Fri, 15 May 2020 16:55:38 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.kocurkovo.cz 78F5818CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kocurkovo.cz;
 s=mail; t=1589554538;
 bh=pDkXalda7bV0b2weLUQ604K7SfSCx5HTnM8p3DPSRY8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Vi/1DPnb/yS/pv4FXIMYNIM2Ezna9PHr5bxhd4jfRcaJWgVlZrQJzB6CI4QlnoD37
 F58jBUqi5S/i/pz3Wv23A6qXHRRh/ZmQUzBRkWeaJcVj5YktChvTCeapq1nicbdF3b
 WhGIRwKN1eFN3jzQZytEKmlqjjiuInJMYw+bFd98=
Date: Fri, 15 May 2020 16:55:38 +0200
From: Matej Dujava <mdujava@kocurkovo.cz>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v3 2/2] staging: vt6655: vt6656: change order of makefile
 variable definitions
Message-ID: <20200515145538.GA28808@new.kocurkovo.cz>
Mail-Followup-To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Forest Bond <forest@alittletooquiet.net>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <1589397351-24655-1-git-send-email-mdujava@kocurkovo.cz>
 <1589397351-24655-3-git-send-email-mdujava@kocurkovo.cz>
 <20200515134859.GA2112248@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515134859.GA2112248@kroah.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
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
Cc: devel@driverdev.osuosl.org, Forest Bond <forest@alittletooquiet.net>,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 15, 2020 at 03:48:59PM +0200, Greg Kroah-Hartman wrote:
>I still fail to understand the need for this patch at all.  It doesn't
>clean anything up, nor change anything.  There is no rule that this has
>to be in one order or the other, and in fact, I like the order that the
>files currently have :)
>
>thanks,
>
>greg k-h

Most of makefiles has pattern that `obj-${}` is before `driver-y` lines.
If this is not something that was intentional, then this patch is not
adding any value indeed.

Few examples that give me that impression:

./gnss/Makefile-# SPDX-License-Identifier: GPL-2.0
./gnss/Makefile-#
./gnss/Makefile-# Makefile for the GNSS subsystem.
./gnss/Makefile-#
./gnss/Makefile-
./gnss/Makefile:obj-$(CONFIG_GNSS)          += gnss.o
./gnss/Makefile-gnss-y := core.o
./gnss/Makefile-
./gnss/Makefile:obj-$(CONFIG_GNSS_SERIAL)       += gnss-serial.o
./gnss/Makefile-gnss-serial-y := serial.o
--snip end--

./.../go7007/Makefile-# SPDX-License-Identifier: GPL-2.0
./.../go7007/Makefile:obj-$(CONFIG_VIDEO_GO7007) += go7007.o
./.../go7007/Makefile:obj-$(CONFIG_VIDEO_GO7007_USB) += go7007-usb.o
./.../go7007/Makefile:obj-$(CONFIG_VIDEO_GO7007_LOADER) += go7007-loader.o
./.../go7007/Makefile:obj-$(CONFIG_VIDEO_GO7007_USB_S2250_BOARD) += s2250.o
./.../go7007/Makefile-
./.../go7007/Makefile-go7007-y := go7007-v4l2.o go7007-driver.o go7007-i2c.
./.../go7007/Makefile-        snd-go7007.o
./.../go7007/Makefile-
./.../go7007/Makefile-s2250-y := s2250-board.o
--snip end--

Thanks,
Matej
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
