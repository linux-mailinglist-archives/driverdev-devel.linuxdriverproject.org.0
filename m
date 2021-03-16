Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F7733D32E
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 12:38:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 799B04EBB5;
	Tue, 16 Mar 2021 11:38:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PB9MvB-cn_Rk; Tue, 16 Mar 2021 11:38:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33FDF4E734;
	Tue, 16 Mar 2021 11:38:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DB9B61BF2FB
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 11:37:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D86A042FF6
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 11:37:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q4YOOoI5LzWu for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 11:37:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6EB13400D6
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 11:37:53 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 97A2564FED;
 Tue, 16 Mar 2021 11:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615894673;
 bh=TeQWkqwiwIRwCkj1q2ZFITQqXwzqYFUhoclW7z6bcTo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GLucAyRdYU32ZXI9yOPzcwsB2Uyhk+MMtLZKt6Y6u8SrUZiUPwY25BcgHUGrxNy8m
 COun5XggrVh5HQqjcDfGO2Po3jX0w5PKdHMwdklaKleO1gKpWyPU0TtpOhInhOgeKG
 rEB+pz8QrZVtSb8S/gcHELDQSkhy/TG5sdqOKv0A=
Date: Tue, 16 Mar 2021 12:37:50 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Hao Peng <penghaob@uniontech.com>
Subject: Re: [PATCH] staging: rtl8192e: remove extra lines in rtl819x_BAProc.c
Message-ID: <YFCYjjIMtQAuCHZp@kroah.com>
References: <20210315110418.25117-1-penghaob@uniontech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210315110418.25117-1-penghaob@uniontech.com>
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

On Mon, Mar 15, 2021 at 07:04:18PM +0800, Hao Peng wrote:
> Remove extra lines in rtl819x_BAProc.c.
> 
> Signed-off-by: Hao Peng <penghaob@uniontech.com>

Same issue here, please fix up the changelog text.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
