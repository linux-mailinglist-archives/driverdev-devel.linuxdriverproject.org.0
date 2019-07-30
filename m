Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B3AD07A216
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Jul 2019 09:20:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 772B120768;
	Tue, 30 Jul 2019 07:20:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yGM+vBXmoDOi; Tue, 30 Jul 2019 07:20:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 504B520004;
	Tue, 30 Jul 2019 07:20:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 534BA1BF2FA
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2019 07:20:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4DE6884B6F
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2019 07:20:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xjqbrxlzx8-c for <devel@linuxdriverproject.org>;
 Tue, 30 Jul 2019 07:20:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E7ABC84B55
 for <devel@driverdev.osuosl.org>; Tue, 30 Jul 2019 07:20:05 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 47BE8205F4;
 Tue, 30 Jul 2019 07:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564471205;
 bh=9y/PgAzXo/m4joi54xT8C0Iz0DdA8XYDsZHcV0xUO/g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RdwyT9ZG7X9tDjx/BvLfCtHEWCuoh0oEvIRDutVVHHYuqo4FMoW7f4cjet4QQHQ1Y
 Pyu0SYue2LwM4uZG8/c6zuyy076SrXJYnKcEViTbzumnG/beEhJFGWZuFQOvKYOnF3
 0ISVore9s6e7RACEyqeWKiBMFsIZVKWf6wkxbX0A=
Date: Tue, 30 Jul 2019 09:20:03 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH 01/22] staging: erofs: update source file headers
Message-ID: <20190730072003.GA31548@kroah.com>
References: <20190729065159.62378-1-gaoxiang25@huawei.com>
 <20190729065159.62378-2-gaoxiang25@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729065159.62378-2-gaoxiang25@huawei.com>
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
Cc: devel@driverdev.osuosl.org, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <chao@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 weidu.du@huawei.com, Fang Wei <fangwei1@huawei.com>,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jul 29, 2019 at 02:51:38PM +0800, Gao Xiang wrote:
> - Use the correct style for all SPDX License Identifiers;
> - Get rid of the unnecessary license boilerplate;
> - Use "GPL-2.0-only" instead of "GPL-2.0" suggested-by Stephen.

Note, either tag works just fine, they are identical.  I'll take this,
but just be aware of this in the future please.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
