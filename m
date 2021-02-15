Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AB731BC2E
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Feb 2021 16:22:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5BBED87146;
	Mon, 15 Feb 2021 15:22:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NI5Tdo5b5RZa; Mon, 15 Feb 2021 15:22:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E006F86FFB;
	Mon, 15 Feb 2021 15:22:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AF3C91BF3AE
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 15:22:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A649886877
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 15:22:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g4uieD7YS4ZA for <devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 15:22:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 25BEE867F9
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 15:22:51 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 155AD64DA8;
 Mon, 15 Feb 2021 15:22:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613402571;
 bh=iNB1WC3wUGi26SUhsBoDGB0vzb+NLWwq/Cl4l6L6OXA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TakcIT6C5at7HLfdzcK3BNMR9JhcEslIrVJKezH6NUHOwRi0rB/T6Q8rkuaq8+32F
 lPWKUcPJ1oxqNQeH7reKS5q9e7tmyjzbsHlVEZRXD6DI1lGSnDXQ6IsTa3arg2y009
 dYuSvUcItJkRq9Y6+6JP22f03OgOAHt9l4HM751Y=
Date: Mon, 15 Feb 2021 16:22:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Alaa Emad <alaaemadhossney.ae@gmail.com>
Subject: Re: [PATCH resend] staging: hikey9xx: hi6421-spmi-pmic: fixing
Message-ID: <YCqRyapToC1bejfg@kroah.com>
References: <20210215143652.14122-1-alaaemadhossney.ae@gmail.com>
 <YCqKgM4RD8nGCS7E@kroah.com>
 <CAM1DhOiS7M6sqkUtKy9aDTmUEVFwBxOhuzk=iKyUax8U+nsR9g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM1DhOiS7M6sqkUtKy9aDTmUEVFwBxOhuzk=iKyUax8U+nsR9g@mail.gmail.com>
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
Cc: mchehab+huawei@kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 15, 2021 at 05:02:50PM +0200, Alaa Emad wrote:
> sorry ,i thought it needs to change the description so i resent .

If so, then say what you changed below the --- line and make it a v2
patch, like the Documentation tells you to do, right?

> please guide me how to fix this or it is good?

No, see above.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
