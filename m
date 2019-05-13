Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C351B2F2
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 11:34:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9463724C8E;
	Mon, 13 May 2019 09:34:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J8tQ5QN+PmUp; Mon, 13 May 2019 09:34:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4FD0B24CC1;
	Mon, 13 May 2019 09:34:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 788621BF358
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 09:34:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 74D5B24C8E
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 09:34:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mHkpHiq3DYci for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 09:34:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 24B7825067
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 09:34:11 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7228620873;
 Mon, 13 May 2019 09:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557740050;
 bh=kJTLGUUtdThcUhGqBndSyEGiN9k9H6DnRb9QiPETZWk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GwNFfqw1NmkcxhRYcbxK6UrvdzzxDjiUAS4pGKUkXGcx8VjZ0RutQs9UmyyQYVTqM
 n4bocsWjR5ORimAjtBMtYFeO3UgICVjTLJkEWJBvi9wStf6ANsGdDKFp37iPItP2J9
 tnSA4+sO0ey03uYNl8itjEpsZfNDYm3gmF+A8mWc=
Date: Mon, 13 May 2019 11:34:08 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] drivers: staging :rtl8723bs :os_dep Remove Unneeded
 variable ret
Message-ID: <20190513093408.GB21213@kroah.com>
References: <20190512113245.GA2221@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190512113245.GA2221@hari-Inspiron-1545>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
 Mamta Shukla <mamtashukla555@gmail.com>, viswanath.barenkala@gmail.com,
 Jia-Ju Bai <baijiaju1990@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>, Wen Yang <wen.yang99@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, May 12, 2019 at 05:02:45PM +0530, Hariprasad Kelam wrote:
> fix below issue reported by coccicheck
> 
> drivers/staging/rtl8723bs/os_dep/ioctl_linux.c:2685:5-8: Unneeded
> variable: "ret". Return "0" on line 3266
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

For your subject line, put the ' ' character after the ':' character
always please.

Please fix up and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
