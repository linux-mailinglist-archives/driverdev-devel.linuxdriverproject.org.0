Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB1631F50E
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 07:21:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0035587478;
	Fri, 19 Feb 2021 06:21:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VDDnv0lC4q5r; Fri, 19 Feb 2021 06:21:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E6FB8742C;
	Fri, 19 Feb 2021 06:21:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C2D7E1BF368
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 06:21:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B2C12605F7
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 06:21:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gynCcpzNSDSf for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 06:21:19 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 2215D606B5; Fri, 19 Feb 2021 06:21:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1D198605F7
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 06:21:18 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 887B064EC0;
 Fri, 19 Feb 2021 06:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613715677;
 bh=h3tseLehzsIKBNkS/hC8AI0YOI2QV+D0PG4f72kEZAI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gus+0Z73eMJkwwPTaT5qMZFzGQWGL7AebpV+mEPFEU53PhlTUJJa4rSQnR3BqN2t6
 yA/0uw3N2BJynAuBRk84kmUPFjNs1pErofcDpXsQqyZpBWfZODjhvn3VuCY4h5f+tu
 joChh/mOcik/mF4PWQhMw7EvbVrYeGsV18fosH80=
Date: Fri, 19 Feb 2021 07:21:13 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: karthik alapati <mail@karthek.com>
Subject: Re: [PATCH] staging: i2400m: use explicit host byte-order types in
 comparison
Message-ID: <YC9Y2SKnJ5fu9Ruh@kroah.com>
References: <YC8Gt4sawUiuTTE3@karthik-strix-linux.karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YC8Gt4sawUiuTTE3@karthik-strix-linux.karthek.com>
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
Cc: devel@driverdev.osuosl.org, Johannes Berg <johannes@sipsolutions.net>,
 Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 19, 2021 at 06:00:47AM +0530, karthik alapati wrote:
> convert le32 types to host byte-order types before
> comparison

That says what you did, but not _why_ you did it.  Please fix up and
resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
