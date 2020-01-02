Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D252C12E591
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jan 2020 12:16:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8EC6A879A5;
	Thu,  2 Jan 2020 11:16:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Saq+kcoS8+ex; Thu,  2 Jan 2020 11:16:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 79D18877ED;
	Thu,  2 Jan 2020 11:16:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E8DBD1BF3A4
 for <devel@linuxdriverproject.org>; Thu,  2 Jan 2020 11:16:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E4FB1204AE
 for <devel@linuxdriverproject.org>; Thu,  2 Jan 2020 11:16:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VHbHkq80DVBp for <devel@linuxdriverproject.org>;
 Thu,  2 Jan 2020 11:16:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 649442014A
 for <devel@driverdev.osuosl.org>; Thu,  2 Jan 2020 11:16:18 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B7AD4217F4;
 Thu,  2 Jan 2020 11:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577963778;
 bh=VbXY3qciAWXla757PU4VUF9Vb8tPuOTZaUsueB87sq8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rxCgx9BasLnhNWy2cLieg3itEyZ78R6nd4nR8J4VlSRjOGh1MBAi6stdvsbFHJxOj
 PFD/Nr0S92r1om0zDbsrxW2kTdexdPiZUadPsrDMmWN/VasxTJP1+9HOraaUq/ywvj
 f6KX9HR/gE/ExOhqsjMkABI1ZY2AYfR9kLUb+2/Q=
Date: Thu, 2 Jan 2020 12:16:16 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Amrita Patole <longlivelinux@yahoo.com>
Subject: Re: [PATCH] Fixed coding style with minor changes. Signed-off-by:
 Amrita Patole <amritapatole@gmail.com>
Message-ID: <20200102111616.GA3961630@kroah.com>
References: <20200102105718.5669-1-longlivelinux.ref@yahoo.com>
 <20200102105718.5669-1-longlivelinux@yahoo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200102105718.5669-1-longlivelinux@yahoo.com>
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
Cc: madhumithabiw@gmail.com, devel@driverdev.osuosl.org,
 bhanusreemahesh@gmail.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jan 02, 2020 at 04:27:18PM +0530, Amrita Patole wrote:
> ---
>  drivers/staging/fwserial/fwserial.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

Something went wrong with your subject line :(

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
