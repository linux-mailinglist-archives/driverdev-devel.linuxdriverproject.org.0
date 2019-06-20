Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3244CCF2
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 13:33:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 96EFA87E3C;
	Thu, 20 Jun 2019 11:33:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DeCHFazIBajd; Thu, 20 Jun 2019 11:33:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1CBB784BF0;
	Thu, 20 Jun 2019 11:33:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 00BAC1BF578
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 11:33:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F1EFD87D3D
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 11:33:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T0GQa4cJcOd3 for <devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 11:33:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9741E84BF0
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 11:33:10 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E72ED2082C;
 Thu, 20 Jun 2019 11:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561030390;
 bh=iEIU3iBNotat6D5yj7F2SKd8Q0SHAYqUttB3s3mKcpU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U+gNw00T7uKO8O9jJLcKMyTNmgrPKx663f0xKKbw9enP5h7i3ute5HiMQbaFTdQSg
 eXdVgt7XFAFffapzWo+/rJHsfZ+qLMgaM9XNs20L/AhyUCV3iC1YsgbjD1vo9tKE7s
 LHO8ElTouzdf768k5EhFj5U3PXEgmBHKBASo/JmI=
Date: Thu, 20 Jun 2019 13:33:08 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian =?iso-8859-1?Q?M=FCller?= <muellerch-privat@web.de>
Subject: Re: [PATCH 1/1] drivers/staging/rtl8129u: adjust block comments
Message-ID: <20190620113308.GA16195@kroah.com>
References: <20190620094534.5658-1-muellerch-privat@web.de>
 <20190620094534.5658-2-muellerch-privat@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620094534.5658-2-muellerch-privat@web.de>
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
Cc: devel@driverdev.osuosl.org, felix.trommer@hotmail.de,
 linux-kernel@vger.kernel.org, johnfwhitmore@gmail.com,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 20, 2019 at 11:45:34AM +0200, Christian M=FCller wrote:
> As stated in coding-styles.rst multiline comments should be structured in=
 a way,
> that the actual comment starts on the second line of the commented portio=
n. E.g:
> =

> /*
>  * Multiline comments
>  * should look like
>  * this.
>  */
> =

> The comments in this file were of a format, that looked like this:
> =

> /* Multiline comments previous
>  * to this patch
>  * looked like this.
>  */
> =

> There is an exception to files in /net and drivers/net,
> where multiline comments are preferred to look like the second example ab=
ove,
> but since this file resides in a different directory,
> this patch changes the style to match the preferred style.

Ah.  Hm.  Turns out this is a networking driver, and some day, the goal
would be for it to live under drivers/net/  If it were to move there,
then these comments would be in the correct format already.

So this patch isn't needed, sorry.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
