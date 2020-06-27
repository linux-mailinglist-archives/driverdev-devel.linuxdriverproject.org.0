Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C395120C01D
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 10:20:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BE262883B3;
	Sat, 27 Jun 2020 08:19:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A8wF+4zEbIo0; Sat, 27 Jun 2020 08:19:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A7C018803B;
	Sat, 27 Jun 2020 08:19:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 075FC1BF470
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 08:19:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 02D88887C8
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 08:19:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sta88lkQKTw1 for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 08:19:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3F7578813E
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 08:19:55 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8497B2080C;
 Sat, 27 Jun 2020 08:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593245995;
 bh=4Y3XV82XAfOtPpLYFpPvrfTCFvNM0uZmqgZ2kY8PyMs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=f6PfUVZByYBOMyFI3n2tZQ83/m0MQKsl4NpXG4jaOkBhVpYLGwIKs8orBHS0Hp94z
 zDBHi15ocEsw5pSVqNKL8pivEoLLLQr3LAsANAb8T8+Z1QlkcX+TX1i9DVEnotK/ej
 ZlOOGs1tpxZl0OZEfxpn7f+G/id3yKBUR4z78yaI=
Date: Sat, 27 Jun 2020 10:19:48 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: B K Karthik <bkkarthik@pesu.pes.edu>
Subject: Re: [PATCH] staging: rtl8712: rtl8712_recv.h: Removing unnecessary
 blank line
Message-ID: <20200627081948.GB1550330@kroah.com>
References: <20200627080356.6xn3ycyl3zgaddmw@pesu-pes-edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200627080356.6xn3ycyl3zgaddmw@pesu-pes-edu>
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 linux-kernel@vger.kernel.org, Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jun 27, 2020 at 04:03:56AM -0400, B K Karthik wrote:
> Removing unnecessary blank line

That says what you are doing, but not why you are doing it...

Stop, take a day or so, relax, and come back after reading a bunch about
how to write a good changelog text (link has been provided to you many
times already).

There's no rush here.  Take the time to get it right so you don't waste
other people's time.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
