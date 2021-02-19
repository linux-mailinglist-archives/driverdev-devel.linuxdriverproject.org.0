Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46ADD31F5B4
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 09:14:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1AED287480;
	Fri, 19 Feb 2021 08:14:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JrY31cfM-CLw; Fri, 19 Feb 2021 08:14:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8734687426;
	Fri, 19 Feb 2021 08:14:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0A4311BF318
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 08:14:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 060DB862BC
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 08:14:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a1CwY3QhvHlo for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 08:14:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7C14F86CCC
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 08:14:26 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4A92664EBF;
 Fri, 19 Feb 2021 08:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613722465;
 bh=Sg/LmX0xgru7QZr+8/7sje3EDV8aKwgIztIGPvkrOA4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fc8flGBUEQ1jUa4i4CBmCknlcdqj1QR+KjMIkGX6fjMR/wiPfPawzxOEayBOd1vfq
 MdD01/frONeQ+S1rVBpgG990GNhVluPklzn0ZJZflPEqSe7wiglSTGqE4RQU7/HdVA
 C6OEpmeH3wpJ+CCl8t71sXLleUhMeCQerVyYPCBg=
Date: Fri, 19 Feb 2021 09:14:23 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nikolay Kyx <knv418@gmail.com>
Subject: Re: [PATCH] staging: fwserial: match alignment with open parenthesis
Message-ID: <YC9zX1aIgj/sVnQY@kroah.com>
References: <20210218194333.7115-1-knv418@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210218194333.7115-1-knv418@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 dinghao.liu@zju.edu.cn, adawesomeguy222@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 18, 2021 at 10:43:33PM +0300, Nikolay Kyx wrote:
> fwserial.c:

Why is this here?

> fix CHECK: Alignment should match open parenthesis

What does this mean?

Please read the section entitled "The canonical patch format" in the
kernel file, Documentation/SubmittingPatches for what is needed in order
to properly describe the change.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
