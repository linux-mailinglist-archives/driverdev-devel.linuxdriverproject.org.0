Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A49411170AA
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Dec 2019 16:37:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A17442155E;
	Mon,  9 Dec 2019 15:37:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yRu5JxNo-824; Mon,  9 Dec 2019 15:37:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6629D2038D;
	Mon,  9 Dec 2019 15:37:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B976D1BF3BD
 for <devel@linuxdriverproject.org>; Mon,  9 Dec 2019 15:37:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B26D187C89
 for <devel@linuxdriverproject.org>; Mon,  9 Dec 2019 15:37:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wqS3e7T6ugoi for <devel@linuxdriverproject.org>;
 Mon,  9 Dec 2019 15:37:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3F83987C72
 for <devel@driverdev.osuosl.org>; Mon,  9 Dec 2019 15:37:47 +0000 (UTC)
Received: from localhost (unknown [89.205.132.23])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 71CAA20726;
 Mon,  9 Dec 2019 15:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575905867;
 bh=s2bEYWf197utEz/SWsvPqfz1Q0KP1wD9/JS+5YS9CYM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=L9+sU8EvFsTmpzSetgEcKgYYK66YVsUDReVMz1qiS69wSltGYaDf60DLq8wNbun/6
 DAUNwFkEgg1rq1gTfG9AaCbW8t/Ob/+8xwJDUcKPYNnYxyC+UCpDVIcMg1lZTnBPOD
 gy/OygZek5VMfY3cWArKhoqDIGt8es0lTw4/1fq8=
Date: Mon, 9 Dec 2019 16:37:43 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 1/2] staging: remove isdn capi drivers
Message-ID: <20191209153743.GA1284708@kroah.com>
References: <20191209151114.2410762-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209151114.2410762-1-arnd@arndb.de>
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
Cc: devel@driverdev.osuosl.org, Johan Hedberg <johan.hedberg@gmail.com>,
 netdev@vger.kernel.org, Marcel Holtmann <marcel@holtmann.org>,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 isdn4linux@listserv.isdn4linux.de, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 09, 2019 at 04:11:13PM +0100, Arnd Bergmann wrote:
> As described in drivers/staging/isdn/TODO, the drivers are all
> assumed to be unmaintained and unused now, with gigaset being the
> last one to stop being maintained after Paul Bolle lost access
> to an ISDN network.
> 
> The CAPI subsystem remains for now, as it is still required by
> bluetooth/cmtp.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Nice!  You beat me to it :)

I'll go queue this up soon.

David, any objection for me taking patch 2/2 here as well?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
