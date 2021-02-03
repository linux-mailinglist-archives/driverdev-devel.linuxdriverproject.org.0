Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B2230DE79
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Feb 2021 16:43:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9BA19808CC;
	Wed,  3 Feb 2021 15:43:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xud8t298Udy6; Wed,  3 Feb 2021 15:43:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C9A458684F;
	Wed,  3 Feb 2021 15:43:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA2001BF842
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 15:43:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A6ADE8684F
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 15:43:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4rdRS1vVAHMa for <devel@linuxdriverproject.org>;
 Wed,  3 Feb 2021 15:43:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from knopi.disroot.org (knopi.disroot.org [178.21.23.139])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 47F3786843
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 15:43:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by disroot.org (Postfix) with ESMTP id 6A7F950E03;
 Wed,  3 Feb 2021 16:43:33 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at disroot.org
Received: from knopi.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 55cjJJD4Y_6Q; Wed,  3 Feb 2021 16:43:32 +0100 (CET)
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
 t=1612367009; bh=YPDhQJGIru0Y37eXnTcrdA3FdbeP8jEGVPsxd0L1jYk=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References;
 b=EPTl3AP1gtbPLDBySAXAhH/0IlfXVPPSB44tX844eDyu6tJHxD2iu8bJcvLhKLUzD
 Cyf+mnXrjv9/57dcmr/16Ea8tFvtE3zsVOYKtMv//XJyxeLdqEwCqfhD8IeEN7y3AV
 oHI7RzcQ0Af4BzvTE4HpUzPwCdq9hekzFQvg2fNAl6I4sf8efaDPYKOMLIh33+/aPC
 V86PpA+U+2FQ2oOxNcRyNrVf1up4WHD5MsQOIVgTVB8eBBJDdXe+rRfamK9/aiWHU1
 AYdtuK/6BhQdQ2bG1hnpWw9F68qoOxun3qGdGh2FtY4TSa125MiElURjUpak3CrIFi
 qOzPlOdVU0VuA==
Date: Wed, 03 Feb 2021 15:43:28 +0000
From: "Ayush" <ayush@disroot.org>
Message-ID: <858284f8e1248bfec8fa8657232829d1@disroot.org>
Subject: Re: [PATCH] staging: wimax/i2400m: fix coding style issues
To: "Dan Carpenter" <dan.carpenter@oracle.com>
In-Reply-To: <20210203131143.GW2696@kadam>
References: <20210203131143.GW2696@kadam>
 <20210203114720.263651-1-ayush@disroot.org>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, arnd@arndb.de,
 kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> Do you really not have a last name, like Cher?
Exactly, my legal name only has first name.

> 
> We generally want people to send these as separate patches.
> 
> But in this case, we're just going to delete the driver. Don't bother
> sending cleanups for this because it will be deleted soon.
> 
>> compile tested only (on next-20210202).
> 
> Don't put this in the commit message. Put it under the --- cut off line
> if you want.
>
Noted.

Regards,
Ayush
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
