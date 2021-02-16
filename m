Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D9D31C7ED
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 10:20:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B1145870FB;
	Tue, 16 Feb 2021 09:20:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RC-lUMR4ikSv; Tue, 16 Feb 2021 09:20:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3EB9186FF9;
	Tue, 16 Feb 2021 09:20:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 95C031BF285
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 09:20:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 89F71855A1
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 09:20:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wi5pNJsb9289 for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 09:20:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CB2608553B
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 09:20:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D176A64DA1;
 Tue, 16 Feb 2021 09:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613467248;
 bh=USVFaCTkHfp8hMrALvrjKjIQ9V+wGTJWnh0rlC+Gikg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OneRb18Tb6rgJW0FjlnMLlSnCn/CB4dBfj49T0iecMER4ZNzJJ53vzaoDMCpWIpgK
 23zFRBo2sMFCkBfe2R3dp6ZdqtSYEhkv2eUQ4l/LYztGJBI3sRgG8m+41XiwmB9Q0z
 WHkXcxiNniJBYamfdqMwEmWPCZzDAcl+J8xxzwks=
Date: Tue, 16 Feb 2021 10:20:45 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Du Cheng <ducheng2@gmail.com>
Subject: Re: [PATCH v3] staging: fix coding style in
 driver/staging/qlge/qlge_main.c
Message-ID: <YCuObcmHwjqD52WN@kroah.com>
References: <20210216085326.178912-1-ducheng2@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210216085326.178912-1-ducheng2@gmail.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 Manish Chopra <manishc@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 16, 2021 at 04:53:26PM +0800, Du Cheng wrote:
> align * in block comments on each line
> 
> changes v3:
> - add SUBSYSTEM in subject line
> - add explanation to past version of this patch
> 
> changes v2:
> - move closing of comment to the same line
> 
> changes v1:
> - align * in block comments

These "changes" should all go below the --- line, right?

And the subject shoudl be a bit more specific, look at how other commits
are done for this driver.  Something like:
	Subject: staging: qlge: fix comment style in qlge_main.c
matches much better, and conveys what is actually happening here, right?

v4 please?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
