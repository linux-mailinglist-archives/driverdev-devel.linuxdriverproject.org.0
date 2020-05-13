Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03AAA1D11E4
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 May 2020 13:55:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B09168817F;
	Wed, 13 May 2020 11:55:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jWgWmMIqG3XK; Wed, 13 May 2020 11:55:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 824A488B24;
	Wed, 13 May 2020 11:55:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A1BC11BF4DB
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 11:55:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6B6CC2153B
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 11:55:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H3eiXrNGoxey for <devel@linuxdriverproject.org>;
 Wed, 13 May 2020 11:55:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 3FE1C2042B
 for <devel@driverdev.osuosl.org>; Wed, 13 May 2020 11:55:12 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7FF51206CC;
 Wed, 13 May 2020 11:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589370912;
 bh=ykTFDDPJtL6rFGdVgPJwk5SGdZgJ+ChSeO4E5XNIdUM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BB8ZaCzAGicYAjsrmTNygYHijclVy1EBGYzeQfdlrQITjyXFjUa2aA58oMWDiJV0O
 qKlQWQ9GwvhGt6KNkwQVRIxTRGKA2VCof1IsjnaPaqGkmaNb29rRnkKWqDMIo+nVO0
 8cVAuyLyRLrphroaZ1ZfQqxXvJwnnlWMU0Yixg9E=
Date: Wed, 13 May 2020 13:55:09 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Matej Dujava <mdujava@kocurkovo.cz>
Subject: Re: [PATCH v2 1/2] staging: vt6656: vt6655: clean Makefiles
Message-ID: <20200513115509.GA953616@kroah.com>
References: <1589105615-22271-1-git-send-email-mdujava@kocurkovo.cz>
 <1589105615-22271-2-git-send-email-mdujava@kocurkovo.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589105615-22271-2-git-send-email-mdujava@kocurkovo.cz>
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
Cc: devel@driverdev.osuosl.org, Forest Bond <forest@alittletooquiet.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, May 10, 2020 at 12:13:34PM +0200, Matej Dujava wrote:
> This patch is removing CFLAGS that are defining flags that are not used.
> 
> Signed-off-by: Matej Dujava <mdujava@kocurkovo.cz>
> ---
>  drivers/staging/vt6655/Makefile      | 3 ---
>  drivers/staging/vt6655/device_main.c | 1 -

This file is not a Makefile :(

Please properly describe patches.

Also state below the --- line what changed from the first version,
otherwise I have no idea.

Please fix up and send a v3 series.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
