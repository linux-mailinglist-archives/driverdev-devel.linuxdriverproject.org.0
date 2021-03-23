Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA1C34585D
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 08:13:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D81B783E02;
	Tue, 23 Mar 2021 07:13:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4qpKusRCEtoa; Tue, 23 Mar 2021 07:13:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28A6C83A9A;
	Tue, 23 Mar 2021 07:13:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 097B11BF2BE
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 07:13:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E77D540479
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 07:13:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gGYPDSktFgKj for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 07:13:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 855E240475
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 07:13:04 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BBAD161994;
 Tue, 23 Mar 2021 07:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616483583;
 bh=/bkXnzcEioDgUTLfrEo1w3KJfizHTxV+HOelPIhrg3o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KyYe87u6Lt+2hXKcw6R+IJv16lZIYDC3lQwO9twl8kjCXhEP+llqkqvna25LnQ3xr
 vtNid46f2+0s+5Lj7DrawdeJI7rG61voBTQkRLzxsNdpJacS/SYN9N+eIEFr7/yucT
 COITUXxVtbeuCE0Cb02D6Evhnatlx6BGuQH7/TmQ=
Date: Tue, 23 Mar 2021 08:13:00 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH] staging: wimax: Mundane typo fixes
Message-ID: <YFmU/I+KHcci42VB@kroah.com>
References: <20210323010607.3918516-1-unixbhaskar@gmail.com>
 <36821877-7a6c-9a15-4e94-cb657ef29dad@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <36821877-7a6c-9a15-4e94-cb657ef29dad@infradead.org>
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
Cc: devel@driverdev.osuosl.org, Bhaskar Chowdhury <unixbhaskar@gmail.com>,
 arnd@arndb.de, linux-kernel@vger.kernel.org, colin.king@canonical.com,
 lee.jones@linaro.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 22, 2021 at 09:14:43PM -0700, Randy Dunlap wrote:
> On 3/22/21 6:06 PM, Bhaskar Chowdhury wrote:
> > 
> > s/procesing/processing/
> > s/comunication/communication/
> > 
> > Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
> 
> drivers/staging/wimax/ is in the process of being deleted.

It's already gone from my tree, and should be gone from linux-next as
well.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
