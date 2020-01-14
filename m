Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3BC13AB8A
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jan 2020 14:57:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5B897861D1;
	Tue, 14 Jan 2020 13:57:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4p63Pw7Q36tl; Tue, 14 Jan 2020 13:57:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 39BB285B1C;
	Tue, 14 Jan 2020 13:57:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F3F7D1BF873
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 13:57:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F077985A32
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 13:57:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kXEkW4fX8+ST for <devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 13:57:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E40E585772
 for <devel@driverdev.osuosl.org>; Tue, 14 Jan 2020 13:57:15 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 18F0C214AF;
 Tue, 14 Jan 2020 13:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579010235;
 bh=u1XftiISC3VBa0SoBrbPS2ShHLO3XvE3roqyoOX87GA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yPtiJgCzhe1v3amHUUlGh4oF6pt2nnJT6KaFzT/SKBJNJe6JoE9y75CEcHAabsKt5
 N8Z/3kYu6hEKHnozAK53tnr5s+IbOSTGGSLTDzSnYXfSDEX/hMkdLBwksbJb+P7rPf
 SzGD+8Wtxpdsd4BX18A+58S6yknRGWIEKyqt4FsM=
Date: Tue, 14 Jan 2020 14:57:12 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julian Preis <julian.preis@fau.de>
Subject: Re: [PATCH v4] drivers/staging/exfat/exfat_super.c: Clean up
 ffsCamelCase function names
Message-ID: <20200114135712.GA1679811@kroah.com>
References: <y>
 <20200107143337.11419-1-julian.preis@fau.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107143337.11419-1-julian.preis@fau.de>
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
Cc: devel@driverdev.osuosl.org, Johannes Weidner <johannes.weidner@fau.de>,
 linux-fsdevel@vger.kernel.org, valdis.kletnieks@vt.edu,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jan 07, 2020 at 03:33:37PM +0100, Julian Preis wrote:
> Rename every instance of <ffsCamelCaseExample> to <ffs_camel_case_example>
> in file exfat_super.c. Fix resulting overlong lines.
> 
> Co-developed-by: Johannes Weidner <johannes.weidner@fau.de>
> Signed-off-by: Johannes Weidner <johannes.weidner@fau.de>
> Signed-off-by: Julian Preis <julian.preis@fau.de>

I get an odd error when trying to apply this patch, saying it is
corrupted.  Can you try to apply it on your side, and if it works,
resend?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
