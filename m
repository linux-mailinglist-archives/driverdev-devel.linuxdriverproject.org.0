Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7EF10D621
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Nov 2019 14:32:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CED158859B;
	Fri, 29 Nov 2019 13:32:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k6MNwJ971BoK; Fri, 29 Nov 2019 13:32:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 304D68855E;
	Fri, 29 Nov 2019 13:32:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D438B1BF27B
 for <devel@linuxdriverproject.org>; Fri, 29 Nov 2019 13:32:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D07738855E
 for <devel@linuxdriverproject.org>; Fri, 29 Nov 2019 13:32:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lFS-4Z3-sIIw for <devel@linuxdriverproject.org>;
 Fri, 29 Nov 2019 13:32:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4BDAC8855C
 for <devel@driverdev.osuosl.org>; Fri, 29 Nov 2019 13:32:42 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E7E120869;
 Fri, 29 Nov 2019 13:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575034362;
 bh=Cfq5ZK607ycaOvEhaKgpcopj1W/rScjfdVMbA32VOQE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qxbH69XdPxZ6BmRWFheMW6GbMmQrJuQVVyBywQW6+vy9oPSY56QlEkRbjXj7Pl7sL
 fcjRYOQtfFNNJrx1WXcnwDPbbwATOJm6cWrNpFFCZ39I2FuC4jIGocdJkeyUcLdlx/
 m5LlegVXCkmbuJEgkd/EMRltQFjv9KkOo3gjvg48=
Date: Fri, 29 Nov 2019 14:32:39 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH 0/4] staging: gigaset: fix crashes on probe
Message-ID: <20191129133239.GA3703941@kroah.com>
References: <20191129101753.9721-1-johan@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191129101753.9721-1-johan@kernel.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 29, 2019 at 11:17:49AM +0100, Johan Hovold wrote:
> Syzbot has been reporting a GPF on probe in the gigaset ISDN driver,
> which have since been moved to staging.
> 
> The first patch fixes that issue, and the next one fixes a second crash
> found during testing.
> 
> The third patch addresses a benign warning in USB core which syzbot is
> bound to report once the crashes have been fixed.
> 
> And while I hate playing checkpatch games, the final patch addresses a
> checkpatch warning introduced on purpose by the third patch.

I'll take these after 5.5-rc1, but then it is time to just delete all of
drivers/staging/isdn/ from my tree, so don't worry about them after that
:)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
