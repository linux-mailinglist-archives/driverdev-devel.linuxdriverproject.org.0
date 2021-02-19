Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CA431F5A0
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 09:07:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 524238747F;
	Fri, 19 Feb 2021 08:07:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZfUUNOp1t5nC; Fri, 19 Feb 2021 08:07:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C267F8702C;
	Fri, 19 Feb 2021 08:07:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8DBC71BF318
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 08:07:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8A816869F7
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 08:07:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MTnRmTfNCQ14 for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 08:07:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1D7C3869F5
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 08:07:45 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0C32564EB8;
 Fri, 19 Feb 2021 08:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613722064;
 bh=+AW7VXLLqQMGU9QuzS9RaFCI0OCcTFUIvbPMynhfYxQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YFEHEh2y7+nZkh8qCL8BDfObkF0S/izVKMODwF/yjyQUf/802OVaunNbom8g+o0rG
 dmMtlGJJTQVP5En7F9dmK3VVV7kBKGNslCKpQu+tB7xMEH1nhBdOiyd7aJXyak3AUn
 jXalUwRsL7NQSk734JX4QTC2MbzvUfDs/lEf51VU=
Date: Fri, 19 Feb 2021 09:07:42 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ashish Vara <ashishvara89@yahoo.com>
Subject: Re: [PATCH] staging: removed unnecessary debug message to fix coding
 style warning
Message-ID: <YC9xzlAFoTr/sjsX@kroah.com>
References: <9a866392-332a-8c0b-eb9b-08931adf316c.ref@yahoo.com>
 <9a866392-332a-8c0b-eb9b-08931adf316c@yahoo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9a866392-332a-8c0b-eb9b-08931adf316c@yahoo.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, rcy@google.com,
 rspringer@google.com, toddpoynor@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 14, 2021 at 07:44:52PM +0530, Ashish Vara wrote:
> From: Ashish Vara <ashishvara89@yahoo.com>
> 
> removed unnecessary out of memory message to fix coding style warning.
> 
> Signed-off-by: Ashish Vara <ashishvara89@yahoo.com>
> ---
>  drivers/staging/gasket/gasket_page_table.c | 2 --
>  1 file changed, 2 deletions(-)

Your subject line should mention the driver name that you are modifying,
right?  Look at how other commits have been done for this file, and copy
that format.

Please fix up and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
