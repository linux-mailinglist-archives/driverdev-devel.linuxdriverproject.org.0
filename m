Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA95434F9
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 11:51:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6AA44836F1;
	Thu, 13 Jun 2019 09:51:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8G3vDxznAsZT; Thu, 13 Jun 2019 09:51:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB8BD877F5;
	Thu, 13 Jun 2019 09:51:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4A72A1BF2FC
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 09:50:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 47FB4863D9
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 09:50:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1jXhkN_9vGVy for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 09:50:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C991C863A4
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 09:50:58 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D9B520896;
 Thu, 13 Jun 2019 09:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560419458;
 bh=52CBz1YFnDqjGoD+khsIBSWf8fBf86HbcxF2ybDC6ZM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HXxevMIO9fCFWWRPLh7VYzX/67Z5V4zPPh5V4h3WryZ+0vkQ4N+UxGCpjtERdzhyT
 Nn5ZLqgzjxJSXZlK11fT6Lzqm4WnMyPeiXiLoEom3pviTWzVi9dN9Ubux6gSxw7X7Y
 a5i7++XZzpcEjUXpkv5WER9Msn/2M2OPGJrUEu4c=
Date: Thu, 13 Jun 2019 11:50:56 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH 2/2] staging: rtl8723bs: hal: sdio_halinit: fix spaces
 preferred around that unary operator
Message-ID: <20190613095056.GB17445@kroah.com>
References: <20190612023019.GA23721@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612023019.GA23721@hari-Inspiron-1545>
User-Agent: Mutt/1.12.0 (2019-05-25)
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

On Wed, Jun 12, 2019 at 08:00:19AM +0530, Hariprasad Kelam wrote:
> CHECK: spaces preferred around that '+' (ctx:VxV)
> CHECK: spaces preferred around that '<<' (ctx:VxV)
> CHECK: spaces preferred around that '|' (ctx:VxV)
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/rtl8723bs/hal/sdio_halinit.c | 92 ++++++++++++++--------------
>  1 file changed, 46 insertions(+), 46 deletions(-)
> 

Also corrupted, please fix up and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
