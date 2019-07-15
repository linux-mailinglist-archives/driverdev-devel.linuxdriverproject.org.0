Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE74D68464
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 09:33:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D10548683F;
	Mon, 15 Jul 2019 07:33:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SHOx3AHCKCcq; Mon, 15 Jul 2019 07:33:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6CDA186804;
	Mon, 15 Jul 2019 07:33:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3960B1BF418
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 07:33:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 36F252076B
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 07:33:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T-4I4O9IYSDc for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 07:33:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id AD01120766
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 07:33:01 +0000 (UTC)
Received: from localhost (static-196-86-100-159.thenetworkfactory.nl
 [159.100.86.196])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D2F7320C01;
 Mon, 15 Jul 2019 07:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563175981;
 bh=pXcv8tRUETD+IGFrx0NoHmet3NVSSX2OulI145NiVbY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T775CSKhugQSJdgtzc0fNNnFjjTlDJ9MBAgyArR1A29UB6BzKOzP6IYnXWmMEbK2Q
 3fWHZBOnjk+OEKI1A9usQTKC++h8totqXmsPc6ulG0lFxSehtZ/PY64TxR0ZB0RQRF
 T9KswzmSaWwL/EKb2FCUoP1xljPz3efsDb6RDHyg=
Date: Mon, 15 Jul 2019 09:32:57 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Keyur Patel <iamkeyur96@gmail.com>
Subject: Re: [v4] staging: most: remove redundant print statement when
 kfifo_alloc fails
Message-ID: <20190715073257.GB2100@kroah.com>
References: <20190714150546.31836-1-iamkeyur96@gmail.com>
 <06fc2495-dda5-61d2-17e8-0c385e02da1e@web.de>
 <20190714154737.GB32464@keyur-pc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190714154737.GB32464@keyur-pc>
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Markus Elfring <Markus.Elfring@web.de>,
 Suresh Udipi <sudipi@jp.adit-jv.com>,
 Christian Gromm <christian.gromm@microchip.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jul 14, 2019 at 11:47:37AM -0400, Keyur Patel wrote:
> I didn't get you. I stiil need to update changelog and send more 
> version or not. If you say so, I can send one more.

Please note that the person/bot you are responding to is on in my email
blacklist, and many others, so I wouldn't worry too much about the
responses.

I'll review this patch once 5.3-rc1 is out as I can't do anything with
it during the merge window.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
