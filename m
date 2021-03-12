Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A55333934F
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 17:27:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B9C586FB02;
	Fri, 12 Mar 2021 16:27:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TmPJ4AVkaF6o; Fri, 12 Mar 2021 16:27:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 777DC605C0;
	Fri, 12 Mar 2021 16:27:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 053EA1BF27F
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 16:26:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 01C654303F
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 16:26:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UzA_VP9AfJwC for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 16:26:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8277343030
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 16:26:54 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 932B86500B;
 Fri, 12 Mar 2021 16:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615566414;
 bh=KSiQ1s8ZuHjLGWp0+JCP/KJhwUsy63GiBUc7iZoOfuk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sY4mq3Op3zvgsXCstkSq9ZjnK9nXV8W3H/IJPeYuoKC6/aQAkwimgSwFIa6lPZV47
 nlhAoukF5s3FYcn+/9iPZiwFxvmSCSCOm0i1rQ/OM2IX1O5eDkuAJkFBOyuftn0w8X
 CNM0F1UGEBdmfVbLz4rQLz7leREPoMMprgYyeXO4=
Date: Fri, 12 Mar 2021 17:26:51 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Longji Guo <guolongji@uniontech.com>
Subject: Re: [PATCH] Staging: rtl8723bs/core: fix coding style issue
Message-ID: <YEuWS12qAiXS+enC@kroah.com>
References: <20210310113503.1352-1-guolongji@uniontech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210310113503.1352-1-guolongji@uniontech.com>
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
Cc: devel@driverdev.osuosl.org, vkor@vkten.in, linux-kernel@vger.kernel.org,
 matthew.v.deangelis@gmail.com, amarjargal16@gmail.com, pterjan@google.com,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Mar 10, 2021 at 07:35:03PM +0800, Longji Guo wrote:
> Move operators and spaces before tabs to fix coding style issues.

This change doesn't have anything to do with tabs.

confused,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
