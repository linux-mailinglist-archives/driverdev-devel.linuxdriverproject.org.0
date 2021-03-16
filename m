Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0660C33D32D
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 12:37:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D85383926;
	Tue, 16 Mar 2021 11:37:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dBRqi3klah2Z; Tue, 16 Mar 2021 11:37:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 639BB8340C;
	Tue, 16 Mar 2021 11:37:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 240AA1BF2FB
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 11:37:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 128054DFF8
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 11:37:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iI82JDoqkPqv for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 11:37:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 750834C51B
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 11:37:42 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 94C8D65023;
 Tue, 16 Mar 2021 11:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615894662;
 bh=seOeQvzpZ0WrDzqZTo3cjmdGR0901pXobco+OtyWEm8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SZiCySnzomMKKJmKRYGFFGtPn28l+2w6ojVny19il1h+ILrstyBcTyRv3pUx7dx1K
 zRjd7nXdet5Kg6Zsmjal5Bxf3TNsxhN1cVrghh/lg5/2RYsMQIu5nIGrL0QVF4O2eY
 +Dv71NXCiZbGsRjAsiJv0Sjj9soE4rf1Ak4+i9AY=
Date: Tue, 16 Mar 2021 12:37:39 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Hao Peng <penghaob@uniontech.com>
Subject: Re: [PATCH] staging: rtl8192e: remove extra space in rtl819x_BAProc.c
Message-ID: <YFCYg1sGbPDRFEUI@kroah.com>
References: <20210315103320.18536-1-penghaob@uniontech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210315103320.18536-1-penghaob@uniontech.com>
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
Cc: devel@driverdev.osuosl.org, izabela.bakollari@gmail.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 15, 2021 at 06:33:20PM +0800, Hao Peng wrote:
> Remove extra spaces in rtl819x_BAProc.c.

That says what you did, but not _why_ you are doing this.

Please read the section entitled "The canonical patch format" in the
kernel file, Documentation/SubmittingPatches for what is needed in order
to properly describe the change.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
