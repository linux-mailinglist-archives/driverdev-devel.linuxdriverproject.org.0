Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C72E3320DEE
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 22:34:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D19526F52F
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 21:34:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cf7XJT10F80k for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 21:34:10 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id BB9526F507; Sun, 21 Feb 2021 21:34:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1ED176E6E7;
	Sun, 21 Feb 2021 21:33:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7D6E31BF2BA
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 21:33:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6877F6EB93
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 21:33:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6PfAsKbUnI9M for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 21:33:41 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 8E6C66F4CD; Sun, 21 Feb 2021 21:33:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9FA926E6E7
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 21:33:39 +0000 (UTC)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 55E0FE9;
 Sun, 21 Feb 2021 22:33:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1613943215;
 bh=YWTHIZoxgpR8Ou0HcqMarxiDNYz+5jx52AA0RzNdiVE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mIY8fVoDs14eAj6GmpKVOQflWCt6OkzKOdVLl20gCjT8yquXiIAeN61pgzs1dFliG
 gK9NbsB5ckWNe1BI9vqdJoca1kEyU6mCSZqu0mu2c0XHW+2tR8sL7qd0t12AZaFtPG
 QkzXMmJcPX0UNRJOcS1Kz0AVb4CJmdwLcYYU8o2w=
Date: Sun, 21 Feb 2021 23:33:05 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: "Nikolay K." <knv418@gmail.com>
Subject: Re: [PATCH] staging: media: omap4iss: code style - avoid macro
 argument precedence issues
Message-ID: <YDLRkUKPo3nCzwPY@pendragon.ideasonboard.com>
References: <YDLO4CZlZH+sxFNV@msi.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YDLO4CZlZH+sxFNV@msi.localdomain>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Nikolay,

On Mon, Feb 22, 2021 at 12:21:36AM +0300, Nikolay K. wrote:
> Hi Laurent,
> 
> Thank you for the review.
> I think that if we drop the unneeded parentheses here, we need to drop
> them everywhere in the file for consistency, even in places checkpatch.pl

That's a good point.

> doesn't warn about. It'll increase patch size without actual usefullness 
> gain, as for me. I am very (very) novice to the kernel,
> but who wants slightly more readable one-line simple macros?

Let's keep your patch as-is, we can drop the unneeded parentheses in a
subsequent patch if desired.

-- 
Regards,

Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
