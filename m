Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A16190E24
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Mar 2020 13:53:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 41E28880DC;
	Tue, 24 Mar 2020 12:53:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IxELbN8olQQe; Tue, 24 Mar 2020 12:53:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2022487D5D;
	Tue, 24 Mar 2020 12:53:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 525931BF280
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 12:53:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4D16E868C7
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 12:53:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5umlxqWh3fgi for <devel@linuxdriverproject.org>;
 Tue, 24 Mar 2020 12:52:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net
 [217.70.183.199])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A5388868BE
 for <devel@driverdev.osuosl.org>; Tue, 24 Mar 2020 12:52:58 +0000 (UTC)
X-Originating-IP: 83.155.44.161
Received: from classic (mon69-7-83-155-44-161.fbx.proxad.net [83.155.44.161])
 (Authenticated sender: hadess@hadess.net)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id DF15EFF806;
 Tue, 24 Mar 2020 12:52:53 +0000 (UTC)
Message-ID: <6eaebae26615eaefa30817456d8d2b49bd12a5fc.camel@hadess.net>
Subject: Re: [PATCH resend 3] staging: rtl8188eu: Add rtw_led_enable module
 parameter
From: Bastien Nocera <hadess@hadess.net>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue, 24 Mar 2020 13:52:53 +0100
In-Reply-To: <20200324124845.GB2401396@kroah.com>
References: <97d2ef68a6bcb7d1ece978eef6315e95732ca39d.camel@hadess.net>
 <20200324113840.GA2322042@kroah.com>
 <7aa74127978a73359ae95cd193bb3092d4536118.camel@hadess.net>
 <20200324123229.GD2348009@kroah.com>
 <9e67f1dd615b810e1725b13003fbb5d9000cd7c0.camel@hadess.net>
 <20200324124845.GB2401396@kroah.com>
User-Agent: Evolution 3.36.0 (3.36.0-1.fc32) 
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
Cc: devel@driverdev.osuosl.org, linux-wireless@vger.kernel.org,
 Kalle Valo <kvalo@codeaurora.org>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2020-03-24 at 13:48 +0100, Greg Kroah-Hartman wrote:
> 
<snip>
> Huh?  Why not fix this properly, as that's the only way this driver
> is
> ever going to be fixed up correctly and get out of staging at all.

Because, unfortunately, I have limited free time.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
