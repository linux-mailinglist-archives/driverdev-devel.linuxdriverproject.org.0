Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9811A6691
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 14:56:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 956D78484C;
	Mon, 13 Apr 2020 12:56:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HKjaAdPaY7aZ; Mon, 13 Apr 2020 12:56:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9E37984806;
	Mon, 13 Apr 2020 12:56:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9BEDD1BF3EB
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 12:56:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 985C287648
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 12:56:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id edcwRMY82++c for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 12:56:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 33A7F8757D
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 12:56:36 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 905562073E;
 Mon, 13 Apr 2020 12:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586782596;
 bh=18DKhHBYMozZ6+lW7jqDESjmUuzWD027T7nLZuXSulA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tTmxOG7cTpjaO4DRNXaaDdmdKQtm89+iOD+zLf1aCkTwZxOxH8gXDbS9iRfXk01dy
 UycFw0/GDO0TPtsqoYBFlhTgMhP4V8FzXpviTcCUfPm4ZGHFbzN16V3AdWFhT4UAh6
 W1JCrSLvHOdfJwTdjnFYdEPjFvZb7faavh4D2alI=
Date: Mon, 13 Apr 2020 14:56:33 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH v3 1/2] staging: vt6656: Use define instead of magic
 number for tx_rate
Message-ID: <20200413125633.GB3127208@kroah.com>
References: <20200407163915.7491-1-oscar.carter@gmx.com>
 <20200407163915.7491-2-oscar.carter@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407163915.7491-2-oscar.carter@gmx.com>
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 Forest Bond <forest@alittletooquiet.net>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 07, 2020 at 06:39:14PM +0200, Oscar Carter wrote:
> Use the define RATE_11M present in the file "device.h" instead of the
> magic number 3. So the code is more clear.
> 
> Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> ---
>  drivers/staging/vt6656/baseband.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

This patch did not apply to my tree, please rebase and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
