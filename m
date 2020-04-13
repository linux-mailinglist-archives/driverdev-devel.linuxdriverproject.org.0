Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A7D1A669A
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 14:59:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7D9FF85D21;
	Mon, 13 Apr 2020 12:59:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pW-A1F6AhAFi; Mon, 13 Apr 2020 12:59:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A2BC8543A;
	Mon, 13 Apr 2020 12:59:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8291F1BF20B
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 12:59:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7CC892040A
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 12:59:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zZEFCvbIp7rj for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 12:59:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id E4EDA203FF
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 12:59:34 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 45F6C206DA;
 Mon, 13 Apr 2020 12:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586782774;
 bh=idXQW+yIFFWo5382aZ8Okt15T8N6elOKHZ6SROy0oy8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lUND/la/4JHwJIFtbVLUTRYdQTposg/JMgwISwidYD7maBiNemQJr3gdA69GY3i2q
 ku+nASaD9cnWajqfJO0q+H0gUOHN9IF6qvN1CZ9KMwjtSIi2CnCM4V/4s5YshBh/dF
 GyjB6neqbZOMAiJLA323fQWQSvOQYNivgZPlwxKo=
Date: Mon, 13 Apr 2020 14:59:32 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH] staging: vt6656: Return error code in
 vnt_rf_write_embedded function
Message-ID: <20200413125932.GA3150182@kroah.com>
References: <20200413101931.6334-1-oscar.carter@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413101931.6334-1-oscar.carter@gmx.com>
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
Cc: Malcolm Priestley <tvboxspy@gmail.com>, devel@driverdev.osuosl.org,
 Forest Bond <forest@alittletooquiet.net>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 13, 2020 at 12:19:31PM +0200, Oscar Carter wrote:
> Use the error code returned by the vnt_control_out function as the
> returned value of the vnt_rf_write_embedded function instead of a
> boolean value.
> 
> Then, fix all vnt_rf_write_embedded calls removing the "and" operations
> and replace with a direct assignment to the ret variable and add a check
> condition after every call.
> 
> Also replace the boolean values true or false in the vnt_rf_set_txpower
> function to 0 or error code EINVAL to follow the coding style guide.
> 
> The vnt_rf_set_txpower function is called only in the vnt_rf_setpower
> function that already returns error codes. The calls to this function
> (vnt_rf_set_txpower) not use the returned values, so they not need to be
> fixed.
> 
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> ---
>  drivers/staging/vt6656/rf.c | 99 ++++++++++++++++++++++++-------------
>  1 file changed, 64 insertions(+), 35 deletions(-)

This too did not apply :(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
