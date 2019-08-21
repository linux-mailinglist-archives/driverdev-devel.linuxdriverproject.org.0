Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E2C96F63
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 04:21:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4F7E987836;
	Wed, 21 Aug 2019 02:20:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eTeGMPzWmpK4; Wed, 21 Aug 2019 02:20:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8F1A087832;
	Wed, 21 Aug 2019 02:20:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1ADE41BF342
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 02:20:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1808F86BAE
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 02:20:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 93EyVcRPn42V for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 02:20:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 98F5F86BA8
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 02:20:53 +0000 (UTC)
Received: from localhost (li1825-44.members.linode.com [172.104.248.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 73FE522DA7;
 Wed, 21 Aug 2019 02:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566354053;
 bh=dDoqvH7cPzQlNadZ1kurjVq8FKDUwOC07P/MNENXjcE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ERs0FPZ6ROQFeuR6nRwEIBq51RHhUufLJZdwWs5Avr0dFyy3EUWFq5NTKrCKNKQ88
 blWQ4OZqcLYjvUXxWnoGao/HrZEnAZl/p9TM1Gh8TLlb7rq/tdW291kjPslJ5q/C1s
 dLLblfKRd9F+OzlcWOwQfuSKk1tcJ0ssd/l3HUCo=
Date: Tue, 20 Aug 2019 19:20:48 -0700
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Caitlyn <caitlynannefinn@gmail.com>
Subject: Re: [PATCH 1/2] staging/erofs/xattr.h: Fixed misaligned function
 arguments.
Message-ID: <20190821022048.GA26373@kroah.com>
References: <1566346700-28536-1-git-send-email-caitlynannefinn@gmail.com>
 <1566346700-28536-2-git-send-email-caitlynannefinn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566346700-28536-2-git-send-email-caitlynannefinn@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, linux-erofs@lists.ozlabs.org,
 Chao Yu <yuchao0@huawei.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 20, 2019 at 08:18:19PM -0400, Caitlyn wrote:
> Indented some function arguments to fix checkpath warnings.
> 
> Signed-off-by: Caitlyn <caitlynannefinn@gmail.com>
> ---
>  drivers/staging/erofs/xattr.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- It looks like you did not use your "real" name for the patch on either
  the Signed-off-by: line, or the From: line (both of which have to
  match).  Please read the kernel file, Documentation/SubmittingPatches
  for how to do this correctly.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
