Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8BA1CC314
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 May 2020 19:11:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D15B884F5;
	Sat,  9 May 2020 17:11:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sl7LihiZIRyu; Sat,  9 May 2020 17:11:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 92F468820B;
	Sat,  9 May 2020 17:11:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C91F01BF2AE
 for <devel@linuxdriverproject.org>; Sat,  9 May 2020 17:11:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C62D686B6C
 for <devel@linuxdriverproject.org>; Sat,  9 May 2020 17:11:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EUemWs8U7Ijz for <devel@linuxdriverproject.org>;
 Sat,  9 May 2020 17:11:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 787CB84ADC
 for <devel@driverdev.osuosl.org>; Sat,  9 May 2020 17:11:33 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DB84D2184D;
 Sat,  9 May 2020 17:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589044293;
 bh=Knc6lihQiyioaGFRTOVqQ9keAhGSuwjLXItKg6yamdM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Awx6svb+sXY9Nb1+JkPtcyV+gT732HQk2LBchxvGubEgp3mbS7q9AwBqMxh55g0/t
 Li864Ct2Zx/qanTNcvtRN350fif6Rr+879RB03rX33tTlRlh7X+9aHfnSKofph22sn
 Js8zspBbqLHuW6ZBLywIrEdE3ccr8zKi+rkUJYdU=
Date: Sat, 9 May 2020 19:11:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: John Oldman <john.oldman@polehill.co.uk>
Subject: Re: [PATCH] staging: vc04_services: interface: vchiq_arm:
 vchiq_connected.c: Block comments should align the * on each line
Message-ID: <20200509171131.GA2495033@kroah.com>
References: <20200509130714.10586-1-john.oldman@polehill.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509130714.10586-1-john.oldman@polehill.co.uk>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 09, 2020 at 02:07:14PM +0100, John Oldman wrote:
> Coding style issue

Your subject line needs to be much shorter, don't you think?

Please fix up and resend.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
