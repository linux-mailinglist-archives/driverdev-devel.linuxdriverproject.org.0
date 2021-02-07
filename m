Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0625E312307
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 10:18:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D987F86D5C;
	Sun,  7 Feb 2021 09:18:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cU+VTWtQcQb9; Sun,  7 Feb 2021 09:18:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 159DD86D23;
	Sun,  7 Feb 2021 09:18:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 412D11BF2B6
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 09:18:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3E4DC8609D
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 09:18:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IzWag3ILnYxO for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 09:18:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D4A6B86053
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 09:18:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9361B64E22;
 Sun,  7 Feb 2021 09:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612689486;
 bh=M+7Vjj0l8SWkkCAfHsTiuFeZisfU3zkOxBiol6f8cvo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JzWhpLNn2V57naiWxS4uA4F/40eR6CV/py3pinOi1yXfpWjytSpfXty7e+qvs6oqC
 4nUaKQtfIPxH/RHs8A0JHDTn8dR5ov8SAQlbXeJamysGtCeQuZ42D/o07NcGc7rDX9
 M9joDAf8O1qqPXUmc4rRwFcdSiqZ0dL6mBS8J/lI=
Date: Sun, 7 Feb 2021 10:18:01 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Kumar Kartikeya Dwivedi <memxor@gmail.com>
Subject: Re: [PATCH v3] staging: emxx_udc: Make incorrectly defined global
 static
Message-ID: <YB+wSYgNABzNWFfb@kroah.com>
References: <YB+qDND2OmY8WwA0@kroah.com>
 <20210207085911.270746-1-memxor@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210207085911.270746-1-memxor@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 07, 2021 at 02:29:12PM +0530, Kumar Kartikeya Dwivedi wrote:
> The global gpio_desc pointer and int vbus_irq were defined in the header,
> instead put the definitions in the translation unit and make them static as
> there's only a single consumer, and these symbols shouldn't pollute the
> global namespace.
> 
> This fixes the following sparse warnings for this driver:
> drivers/staging/emxx_udc/emxx_udc.c: note: in included file:
> drivers/staging/emxx_udc/emxx_udc.h:23:18: warning: symbol 'vbus_gpio' was not
> declared. Should it be static?  drivers/staging/emxx_udc/emxx_udc.h:24:5:
> warning: symbol 'vbus_irq' was not declared. Should it be static?
> 
> Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> ---
> Changes in v1:
> Switch to variable with static linkage instead of extern
> Changes in v2:
> Resend a versioned patch
> Changes in v3:
> Include version changelog below the marker

Much better, thanks, now queued up.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
