Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 132ED156BCC
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Feb 2020 18:24:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E6E1E204A3;
	Sun,  9 Feb 2020 17:24:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fQTnrhaXfUvj; Sun,  9 Feb 2020 17:24:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 74D822011B;
	Sun,  9 Feb 2020 17:23:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8A1281BF3A3
 for <devel@linuxdriverproject.org>; Sun,  9 Feb 2020 17:23:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 869CA2014A
 for <devel@linuxdriverproject.org>; Sun,  9 Feb 2020 17:23:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 11HfC47yHzbD for <devel@linuxdriverproject.org>;
 Sun,  9 Feb 2020 17:23:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id E2C3B2011B
 for <devel@driverdev.osuosl.org>; Sun,  9 Feb 2020 17:23:56 +0000 (UTC)
Received: from localhost (unknown [65.119.211.164])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 761D020714;
 Sun,  9 Feb 2020 17:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581269036;
 bh=VH1+k2f2mvkNfA69pVn+Yuny3CTUnbGfABHhMx66A28=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LIzoZnHDgS46rLY7ZUH8T813mS/Frt24SPlAaV1omFZT7+Q9v/S+1y1+iWoPRGI3o
 jpwSlH63RD4weqi1jVNRXz2fL0t4EO7MaR8k4/VaQxWhi064nIQBkWLYwYku5uGne7
 bQRSpIXQimXTYyyCbvHEIZ+/1KHHxB994MM9hDpQ=
Date: Sun, 9 Feb 2020 18:23:02 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Mohana Datta Yelugoti <ymdatta.work@gmail.com>
Subject: Re: [PATCH v2] staging: qlge: remove spaces at the start of a line
Message-ID: <20200209172302.GA20244@kroah.com>
References: <ymdatta.work@gmail.com>
 <20200209171431.19907-1-ymdatta.work@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200209171431.19907-1-ymdatta.work@gmail.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 Manish Chopra <manishc@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 09, 2020 at 10:44:30PM +0530, Mohana Datta Yelugoti wrote:
> This patch fixes "WARNING: please, no spaces at the start of a
> line" by checkpatch.pl by replacing spaces with the tab.
> 
> Signed-off-by: Mohana Datta Yelugoti <ymdatta.work@gmail.com>
> ---
>  drivers/staging/qlge/qlge_main.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

What changed from v1?  Always put that below the --- line as documented.
Please try again with a v3.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
