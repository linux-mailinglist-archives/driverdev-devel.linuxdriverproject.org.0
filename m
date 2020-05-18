Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E791D7084
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 May 2020 07:53:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E6F3A20C45;
	Mon, 18 May 2020 05:53:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nMKcFvH2Vgax; Mon, 18 May 2020 05:53:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8A13B204E1;
	Mon, 18 May 2020 05:53:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1C46D1BF3DE
 for <devel@linuxdriverproject.org>; Mon, 18 May 2020 05:53:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 18E26883AC
 for <devel@linuxdriverproject.org>; Mon, 18 May 2020 05:53:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g8hRhr5xkjUZ for <devel@linuxdriverproject.org>;
 Mon, 18 May 2020 05:53:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E4FA18815F
 for <devel@driverdev.osuosl.org>; Mon, 18 May 2020 05:53:35 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3F05220787;
 Mon, 18 May 2020 05:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589781215;
 bh=m/pEmnnHQNzFD4ohbvLcO3u8FKFWYBLKdSWWaqCTpL0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aUeL+bduHx4Obp0B4yUCsnjsTcsxlQRgzfA45+FLMAZ5/a6x6P1PPYwn19RbJnbyZ
 YysnE5/UjscItAX3AeIiIfKe3XL3YsmF4VkoJo1FtKfGgZk03eLck98gDcjGVrKC5p
 fqOZh4YjI9qbXtJMgIpeNJ1Aaf8QnDeWhGagNns4=
Date: Mon, 18 May 2020 07:53:33 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mohamed Dawod <mhm.dawod@gmail.com>
Subject: Re: [PATCH v2] staging: wfx: Typo fix
Message-ID: <20200518055333.GA2826732@kroah.com>
References: <20200518054729.GA12362@dinux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518054729.GA12362@dinux>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, May 18, 2020 at 07:47:29AM +0200, Mohamed Dawod wrote:
> Fixing some typo errors in traces.h file
> 
> Signed-off-by: Mohamed Dawod <mhm.dawod@gmail.com>
> ---
>  drivers/staging/wfx/traces.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

What changed from v1?  Always put that below the --- line.

Please fix that up and send v3.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
