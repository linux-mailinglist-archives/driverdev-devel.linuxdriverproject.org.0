Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 944A6F320B
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Nov 2019 16:08:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 985788778F;
	Thu,  7 Nov 2019 15:08:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id swOp2pjZzazA; Thu,  7 Nov 2019 15:08:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2992D8768B;
	Thu,  7 Nov 2019 15:08:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 733591BF340
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 15:08:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6198A85B8D
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 15:08:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 68CQwKsdiZ54 for <devel@linuxdriverproject.org>;
 Thu,  7 Nov 2019 15:08:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A6CED85AB3
 for <devel@driverdev.osuosl.org>; Thu,  7 Nov 2019 15:08:37 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F09D4207FA;
 Thu,  7 Nov 2019 15:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573139317;
 bh=Rg+L5QcGbhilOqtTrRHcmJjwXMDVD7G6rIoeZ7YcNos=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oPHJT2BPRUtpterdm6jMAmBN/mUxCMbR4LwutLeeE0PfHH7F55sGGAgPGuKpvpipo
 IYBYoInqAG0VDczz6t7FgwTe6Cnu4Umr0cuMNgcTCkDx8NP7C5rpeo4PJtO0x8lRUz
 WvcqsbcW4AU9Tra/dgaA0msYNSElDC+BxSVpRFS0=
Date: Thu, 7 Nov 2019 16:08:34 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Valery Ivanov <ivalery111@gmail.com>
Subject: Re: [PATCH] staging: gasket: gasket_ioctl: Remove unnecessary
 line-breaks in funtion signature
Message-ID: <20191107150834.GA154681@kroah.com>
References: <20191106180821.GA19385@hwsrv-485799.hostwindsdns.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106180821.GA19385@hwsrv-485799.hostwindsdns.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, toddpoynor@google.com, rspringer@google.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Nov 06, 2019 at 06:08:21PM +0000, Valery Ivanov wrote:
> 	This patch fix the function signature for trace_gasket_ioctl_page_table_data
> 	to avoid the checkpatch.pl warning:
> 
> 		CHECK: Lines should not end with a '('

Why the huge indentation?

THat's not ok, please fix up.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
