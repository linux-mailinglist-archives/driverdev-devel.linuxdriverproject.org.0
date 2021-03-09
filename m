Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2091A332CC4
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Mar 2021 18:04:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B1FE43117;
	Tue,  9 Mar 2021 17:04:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1YAZbXlhL75i; Tue,  9 Mar 2021 17:04:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1771B42FC3;
	Tue,  9 Mar 2021 17:04:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 23E5F1BF976
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 17:04:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0F9B68002E
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 17:04:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p6coo_lzcnGJ for <devel@linuxdriverproject.org>;
 Tue,  9 Mar 2021 17:03:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7C21E83490
 for <devel@driverdev.osuosl.org>; Tue,  9 Mar 2021 17:03:59 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 73F4C64EEE;
 Tue,  9 Mar 2021 17:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615309438;
 bh=wrj77/STvOG+oBQn4sot6y/R2bYTYVFS+DWfzuusjKE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cRxie/sU+VHtcVIHxiJeC/EukbxFgUHzzRnuSO/cIZyOCsG6Fj1vLwj6Ac6wNguI9
 S61Sx4iPlFBZQU5i8pQGBPxEQkQON4Xo8gHiDj9wke7meH6J4/eDW/Bbedq14PKDaW
 rINQrguB/6BX7gisRbVhqVgOTu4k/avQVV+evMB8=
Date: Tue, 9 Mar 2021 18:03:55 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Walter Harms <wharms@bfs.de>
Subject: Re: [PATCH] staging: gasket: Fix sizeof() in gasket_handle_ioctl()
Message-ID: <YEeqe9od5lMxEauv@kroah.com>
References: <YAroue0qiuf35rkS@mwanda> <YEd3n/vbIzRr5vnA@kroah.com>
 <8fda6445b7944426a45a944b777c52fe@bfs.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8fda6445b7944426a45a944b777c52fe@bfs.de>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 John Joseph <jnjoseph@google.com>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 Simon Que <sque@chromium.org>, Richard Yeh <rcy@google.com>,
 Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 09, 2021 at 04:57:59PM +0000, Walter Harms wrote:
> why not mark it as "Deprecated" and remove it with the next version ? Maybe soneone will wakeup ?

We don't really have a "Deprecated" marking, we just delete them :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
