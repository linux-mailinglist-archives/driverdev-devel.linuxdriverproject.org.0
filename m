Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 661DBBCAF9
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Sep 2019 17:17:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 85574864D2;
	Tue, 24 Sep 2019 15:17:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uSmp7lzBKzIZ; Tue, 24 Sep 2019 15:17:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 891C8847AB;
	Tue, 24 Sep 2019 15:17:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 782691BF3E6
 for <devel@linuxdriverproject.org>; Tue, 24 Sep 2019 15:17:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7598F20440
 for <devel@linuxdriverproject.org>; Tue, 24 Sep 2019 15:17:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sSFO9H2moMwf for <devel@linuxdriverproject.org>;
 Tue, 24 Sep 2019 15:17:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 162CD20381
 for <devel@driverdev.osuosl.org>; Tue, 24 Sep 2019 15:17:17 +0000 (UTC)
Received: from localhost (unknown [84.241.200.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4AD8C20665;
 Tue, 24 Sep 2019 15:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569338236;
 bh=LmnHtkvP+bsxXgA7FpAJkN/JG3FHB9beLvrWluWl1T4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wfndMxgDvDdEIhAmwIbwoZF1u4dB/6v8C2GiB/PYJZF6hnl29/R1olr/y+5VIdWP/
 r31ud1BjCWqWGkyB/unDrf/kZPxn7esvILjJ2idvwTL7VjS0m5mWZL9GD5hhBb5379
 jlzQUqmsK2PuL6QOnZg62LU/SovMuqQSUUpl2j9Q=
Date: Tue, 24 Sep 2019 17:17:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sumera Priyadarsini <sylphrenadin@gmail.com>
Subject: Re: [RESEND PATCH] staging: rtl8192u: Fix indentation for cleaner code
Message-ID: <20190924151713.GA663334@kroah.com>
References: <20190913180101.14573-1-sylphrenadin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190913180101.14573-1-sylphrenadin@gmail.com>
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
Cc: devel@driverdev.osuosl.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Sep 13, 2019 at 11:31:01PM +0530, Sumera Priyadarsini wrote:
> Fixes indentation for if condition in the file r8190_rtl8256.c for better readability as suggested by Dan Carpenter.

Please wrap your lines at 72 columns.

> 
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8190_rtl8256.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Why was this resent?  What changed from the 1st one that caused this to
be required to be resent?

Now you owe me a v2 of this patch with the changelog text fixed up :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
