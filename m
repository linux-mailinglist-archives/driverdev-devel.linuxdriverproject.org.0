Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D63D15B306
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Feb 2020 22:47:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 983F185F11;
	Wed, 12 Feb 2020 21:47:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V42DWIz0EkQm; Wed, 12 Feb 2020 21:47:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8A78985EBB;
	Wed, 12 Feb 2020 21:47:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 076D21BF962
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 21:47:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0384620026
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 21:47:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QW46+M7UkAWA for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 21:47:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 6B1B020022
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 21:47:41 +0000 (UTC)
Received: from localhost (unknown [104.132.1.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 19419206DB;
 Wed, 12 Feb 2020 21:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581544061;
 bh=U+75VKG1F9uSU9/QVvPlQjg1qzwwnHnB0pRtKFe1f7w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Gg1bAJNDjOgkQdAe2MHPqU/i05ZV+0O9nbrpooPqhnPhDAhPWJzOd1Y6xIWTX1g/P
 qNVcYkKki3VMz6Umee7xkvJ9XqcqMqYukmvuwzlC7nb45Re8fT3TJiup0tEyQnKHqr
 EzUNkRAiRRUPmsJWl6cdSLFEqF+DT97btLknT58o=
Date: Wed, 12 Feb 2020 13:47:40 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ajay.Kathat@microchip.com
Subject: Re: [PATCH] staging: wilc1000: refactor p2p action frames handling
 API's
Message-ID: <20200212214740.GA2312757@kroah.com>
References: <20200212154503.8835-1-ajay.kathat@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212154503.8835-1-ajay.kathat@microchip.com>
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
Cc: devel@driverdev.osuosl.org, johannes@sipsolutions.net,
 linux-wireless@vger.kernel.org, Adham.Abozaeid@microchip.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 12, 2020 at 10:14:15AM +0000, Ajay.Kathat@microchip.com wrote:
> From: Ajay Singh <ajay.kathat@microchip.com>
> =

> Refactor handling of P2P specific action frames. Make use of 'struct' to
> handle the P2P frames instead of manipulating=A0using 'buf' pointer.
> =

> Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
> ---
>  [resending this patch as it failed to apply earlier]

I had to export this and apply it by hand as the base64 stuff here
really confused git :(

odd...

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
