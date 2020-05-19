Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6491D9937
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 May 2020 16:16:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3FA3887F5D;
	Tue, 19 May 2020 14:16:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LNZcjFHqa1bD; Tue, 19 May 2020 14:16:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AD2A487EA0;
	Tue, 19 May 2020 14:16:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B6B531BF46D
 for <devel@linuxdriverproject.org>; Tue, 19 May 2020 14:16:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B138F85EB4
 for <devel@linuxdriverproject.org>; Tue, 19 May 2020 14:16:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 22tlIEGC1iSs for <devel@linuxdriverproject.org>;
 Tue, 19 May 2020 14:16:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D524B85E28
 for <devel@driverdev.osuosl.org>; Tue, 19 May 2020 14:16:43 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 273CA20829;
 Tue, 19 May 2020 14:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589897803;
 bh=8JZlRqRPkafvtKAvR/hAADRfoNdbOSTh6wdLLvrmELI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hCWTY0u2QZvaI0pFXX6Bc4kyh65U21v7F1Lnr7c5e+XPnVnkQr/F30t1igtUTLH9/
 DJRHmNIN5bAMdo5LAiRtt1KrIQNvs0WmK3DFRKQgxxj9Yz0+VRvtaTwHHgPtlaITOq
 A3J18dN5NGumYPLfU0PrdpGwRLCg46sCYh4/wC88=
Date: Tue, 19 May 2020 16:16:41 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Pascal Terjan <pterjan@google.com>
Subject: Re: [PATCH v2] staging: rtl8192u: Merge almost duplicate code
Message-ID: <20200519141641.GA577903@kroah.com>
References: <202005180407.tRbGahKX%lkp@intel.com>
 <20200517204045.183223-1-pterjan@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200517204045.183223-1-pterjan@google.com>
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

On Sun, May 17, 2020 at 09:40:45PM +0100, Pascal Terjan wrote:
> This causes a change in behaviour:
> - stats also get updated when reordering, this seems like it should be
>   the case but those lines were commented out.
> - sub_skb NULL check now happens early in both cases, previously it
>   happened only after dereferencing it 12 times, so it may not actually
>   be needed.
> 
> Signed-off-by: Pascal Terjan <pterjan@google.com>

This patch adds a new compiler warning, which no patch should do.

Please fix that up and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
