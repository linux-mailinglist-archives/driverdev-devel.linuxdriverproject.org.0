Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8072460FC0
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Jul 2019 12:03:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 07C0686506;
	Sat,  6 Jul 2019 10:03:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hZsX1NPEaLuN; Sat,  6 Jul 2019 10:03:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CF0A3863CE;
	Sat,  6 Jul 2019 10:03:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8B6E21BF3DC
 for <devel@linuxdriverproject.org>; Sat,  6 Jul 2019 10:03:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8921720440
 for <devel@linuxdriverproject.org>; Sat,  6 Jul 2019 10:03:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 99eDVkWVIIeY for <devel@linuxdriverproject.org>;
 Sat,  6 Jul 2019 10:03:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 26A9F20198
 for <devel@driverdev.osuosl.org>; Sat,  6 Jul 2019 10:03:23 +0000 (UTC)
Received: from localhost (unknown [62.119.166.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C872620989;
 Sat,  6 Jul 2019 10:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562407402;
 bh=KjooE0wh5+NyC1Ywyhd1Fy7vdTyIgPOhlw2BiK38em8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Cc0okKCgbvBnAN1uLzjEOLjaj4RoPGwHdPxpJ5d864DSXIcNwEQRTHRFbPnJRAyKG
 x6WZ91849sX9a9zs7yMISeGny9aSq1xEZ9Nsk1STfVgdNMPQ+KUUB1EoYr+C3x3vCb
 ifqSk9iifkYnKj2wlD4O9I2omAF7kRma82rtAc5E=
Date: Sat, 6 Jul 2019 12:02:53 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH 4/7] staging: most: Use spinlock_t instead of struct
 spinlock
Message-ID: <20190706100253.GA20497@kroah.com>
References: <20190704153803.12739-1-bigeasy@linutronix.de>
 <20190704153803.12739-5-bigeasy@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704153803.12739-5-bigeasy@linutronix.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, Peter Zijlstra <peterz@infradead.org>,
 tglx@linutronix.de, linux-kernel@vger.kernel.org,
 Christian Gromm <christian.gromm@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 04, 2019 at 05:38:00PM +0200, Sebastian Andrzej Siewior wrote:
> For spinlocks the type spinlock_t should be used instead of "struct
> spinlock".

Why?

> Use spinlock_t for spinlock's definition.

Why?  I agree it makes the code smaller, but why is this required?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
