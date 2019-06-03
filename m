Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D9A32F6F
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 14:20:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0FBD685CE2;
	Mon,  3 Jun 2019 12:20:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3y1i4QI6XCw4; Mon,  3 Jun 2019 12:20:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B7F6B86072;
	Mon,  3 Jun 2019 12:20:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 96AA21BF4E6
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 12:20:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8D867220DA
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 12:20:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fRyjplaBGx66 for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 12:20:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 017B9220D0
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 12:20:48 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 619DE25F14;
 Mon,  3 Jun 2019 12:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559564448;
 bh=TWs8GbjLZEVnwhh8cISnycPPa+/IgUhH2+EwwAMLpWc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VU31btN3lBLtca7FKNKKtNOd9bMvSoo6k6FnivDNO6JRBr4lvyAcPhZG1+9Dv0gHc
 ftbln7arKRGD1qJ4pcGOugQGLczprn8K36smipnKAPqYGG7dQkTRioiqcbSHXstJ+H
 3r6o+uq+qnMhI5GjQKz3ESlN+pGk2nR1gWntvjOg=
Date: Mon, 3 Jun 2019 14:20:46 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] staging: rtl8712: Change _SUCCESS/_FAIL to 0/-ENOMEM
Message-ID: <20190603122046.GA27037@kroah.com>
References: <20190530210638.30343-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530210638.30343-1-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: florian.c.schilhabel@googlemail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, larry.finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 31, 2019 at 02:36:38AM +0530, Nishka Dasgupta wrote:
> Change return values _SUCCESS and _FAIL to 0 and -ENOMEM respectively,
> to match the convention in the drivers (and also because the return
> value of this changed function is never checked anyway).
> Change return type of the function to int (from u8) to allow the return
> of -ENOMEM.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_cmd.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Also does not apply to my tree :(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
