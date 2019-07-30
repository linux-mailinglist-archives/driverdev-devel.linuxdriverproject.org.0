Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3F67A281
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Jul 2019 09:49:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 886302075B;
	Tue, 30 Jul 2019 07:49:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t1fwqOgsgauw; Tue, 30 Jul 2019 07:49:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 98A2020035;
	Tue, 30 Jul 2019 07:49:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 408241BF2FA
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2019 07:49:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3CAF487A12
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2019 07:49:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u2MYxdfyf7ae for <devel@linuxdriverproject.org>;
 Tue, 30 Jul 2019 07:49:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C8DA487A56
 for <devel@driverdev.osuosl.org>; Tue, 30 Jul 2019 07:49:08 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2EABE206E0;
 Tue, 30 Jul 2019 07:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564472948;
 bh=p0ptAuSfNPLNxxRo3FL5oil0Da165+w0H6OX+7p20eI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pkXNIUxOhXVNdls+aru0kxYawa45ajNFvYyxGMSMuObzWG6YjMepQTk4jWs+JE7BL
 cdyWZrtibVn9K6uzCYyCMBVAPy/fDgUQNMoLhtkGN/KPTw9N+be1Cm/JjXr1RTzKeG
 k0aGZ4pume7y1N0+g61kuTpM0WTukgwf2wpYo0QQ=
Date: Tue, 30 Jul 2019 09:49:05 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: os_dep: Remove function
 _rtw_regdomain_select
Message-ID: <20190730074905.GA25897@kroah.com>
References: <20190725173349.GA9894@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725173349.GA9894@hari-Inspiron-1545>
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 25, 2019 at 11:03:49PM +0530, Hariprasad Kelam wrote:
> This function simply returns &rtw_regdom_rd . So replace this function
> with actual code
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/wifi_regd.c | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)

You have sent 11 patches for this driver in the past few days, and I
have no idea what order to apply them in.

Please resend them all as a patch series, properly numbered so that I
have a chance to apply them in the correct order.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
