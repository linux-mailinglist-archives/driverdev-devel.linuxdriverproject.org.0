Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA534BB773
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Feb 2022 12:01:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CAD8340612;
	Fri, 18 Feb 2022 11:01:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VHYP3a6g9k3l; Fri, 18 Feb 2022 11:01:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4C0D540102;
	Fri, 18 Feb 2022 11:01:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D75AC1BF36A
 for <devel@linuxdriverproject.org>; Fri, 18 Feb 2022 11:01:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C4FCA60BBD
 for <devel@linuxdriverproject.org>; Fri, 18 Feb 2022 11:01:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ASGtFXGpU332 for <devel@linuxdriverproject.org>;
 Fri, 18 Feb 2022 11:01:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8D96B60B33
 for <devel@driverdev.osuosl.org>; Fri, 18 Feb 2022 11:01:01 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 553AFB825B2;
 Fri, 18 Feb 2022 11:00:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B68CC340E9;
 Fri, 18 Feb 2022 11:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1645182057;
 bh=xDNIszGdyu9JUBGF0Ipy4PA25oS8dSDLtoFOXkvLIKo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xhs5U3EmTHMl0nWTi0yo5A9OtOEMx+CXjLeSXvOKPnazzvK2X0inACaa/m64YpgUk
 u+vVm+IomqjAgDPdsac93LXVY76GMGTrnK4LSylb0dOkLFJlN++Jgb7zxCyODkLwCB
 XH6wFRfMUdSm/dVW2R1k+STgi42X00YftHzB9N0A=
Date: Fri, 18 Feb 2022 12:00:54 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH] staging: wfx: fix scan with WFM200 and WW regulation
Message-ID: <Yg98Zjikg0ncQv8b@kroah.com>
References: <20220218105358.283769-1-Jerome.Pouiller@silabs.com>
 <2535719.D4RZWD7AcY@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2535719.D4RZWD7AcY@pc-42>
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
Cc: devel@driverdev.osuosl.org, Riccardo Ferrazzo <rferrazzo@came.com>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 18, 2022 at 11:57:47AM +0100, J=E9r=F4me Pouiller wrote:
> On Friday 18 February 2022 11:53:58 CET Jerome Pouiller wrote:
> > From: Riccardo Ferrazzo <rferrazzo@came.com>
> > =

> > Some variants of the WF200 disallow active scan on channel 12 and 13.
> > For these parts, the channels 12 and 13 are marked IEEE80211_CHAN_NO_IR.
> > =

> > However, the beacon hint procedure was removing the flag
> > IEEE80211_CHAN_NO_IR from channels where a BSS is discovered. This was
> > making subsequent scans to fail because the driver was trying active
> > scans on prohibited channels.
> > =

> > Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> I forgot to mention I have reviewed on this patch:
> =

> Reviewed-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>

Reviwed-by is implied with signed-off-by.

But what happened to the signed-off-by from the author of this change?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
