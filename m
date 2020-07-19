Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 024C72250E0
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 11:24:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D9B8E85B11;
	Sun, 19 Jul 2020 09:24:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oHAyOUZAk4uF; Sun, 19 Jul 2020 09:24:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A591D85B73;
	Sun, 19 Jul 2020 09:24:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 302011BF484
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 09:24:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2062C20334
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 09:24:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XWZiAbADd3Eb for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 09:24:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 5833920133
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 09:24:25 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9CA4C20734;
 Sun, 19 Jul 2020 09:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595150665;
 bh=zSOqx8oVnM0CdkQ7O0g1ILnx8GGZfkH3ZR3adZFr2qU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hbc/lhJkE8NQFfOyawDtIcEHRhqudrc80VENt08fms/eW3CW8VoMuGRR9z9DUP7k/
 DWFlD0vr7C8U7ODq4uBhEKLtvtxQYIpXg4JRKS8bRif3PPsLRuT5tyTP5v+l7B5ifq
 5pDIROzlio4vFNjFUZTzxroAFQuww3sM4nttuqYk=
Date: Sun, 19 Jul 2020 11:24:37 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Anoop1507 <anoop.skumar1507@gmail.com>
Subject: Re: [PATCH] Staging: rtl8188eu: core: Fix coding style issue
Message-ID: <20200719092437.GA220266@kroah.com>
References: <20200718103125.62528-1-anoop.skumar1507@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200718103125.62528-1-anoop.skumar1507@gmail.com>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 18, 2020 at 04:01:25PM +0530, Anoop1507 wrote:
> From: Anoop S <anoop.skumar1507@gmail.com>
> 
> This fixes the following checkpatch.pl warning
> WARNING: Prefer using '"%s...", __func__' to using 'rtw_tkip_decrypt', this function's name, in a string.
> 
> Signed-off-by: Anoop S <anoop.skumar1507@gmail.com>

It would be great to have your full name here, is that how you sign
legal documents?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
