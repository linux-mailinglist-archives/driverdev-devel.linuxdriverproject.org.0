Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D205E568B7
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 14:24:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 09DF785FA1;
	Wed, 26 Jun 2019 12:24:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tQvUrfMw4n1T; Wed, 26 Jun 2019 12:24:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8376E85F88;
	Wed, 26 Jun 2019 12:24:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 749AC1BF2A3
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 12:24:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 718018776C
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 12:24:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ule7H526LNBF for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 12:24:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1BEB287568
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 12:24:08 +0000 (UTC)
Received: from localhost (unknown [116.247.127.123])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 15A86204FD;
 Wed, 26 Jun 2019 12:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561551847;
 bh=641EHDpmvZqgAGg8LqnSOkw87ehZLVxWtrc67udnISM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iMal2AgtgxKFwMuFlSKUJqywFq4FoohLkt6ztb4Inwva82zP417XBn+4FEtldquLz
 oIC1/KeBCNQ3+JzA2f3x4QdbZG/p7mtmQr3fHp0xqPnpmAPuiTtiKBa01qvYY8KtBs
 U/Rynxi6djAk/SMtgbbTBQdPj2bUpggApoFBl19A=
Date: Wed, 26 Jun 2019 20:23:17 +0800
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Xin Ji <xji@analogixsemi.com>
Subject: Re: [PATCH] Adjust analogix chip driver location
Message-ID: <20190626122317.GC30972@kroah.com>
References: <20190626104430.GA11770@xin-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626104430.GA11770@xin-VirtualBox>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 "sjoerd.simons@collabora.co.uk" <sjoerd.simons@collabora.co.uk>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jun 26, 2019 at 10:44:38AM +0000, Xin Ji wrote:
> Move analogix chip ANX78XX bridge driver into "analogix" directory.
> 
> Signed-off-by: Xin Ji <xji@analogixsemi.com>
> ---
>  drivers/gpu/drm/bridge/Kconfig                     |   10 -
>  drivers/gpu/drm/bridge/Makefile                    |    3 +-
>  drivers/gpu/drm/bridge/analogix-anx78xx.c          | 1485 --------------------
>  drivers/gpu/drm/bridge/analogix-anx78xx.h          |  710 ----------
>  drivers/gpu/drm/bridge/analogix/Kconfig            |   10 +
>  drivers/gpu/drm/bridge/analogix/Makefile           |    2 +
>  drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c | 1485 ++++++++++++++++++++
>  drivers/gpu/drm/bridge/analogix/analogix-anx78xx.h |  710 ++++++++++
>  8 files changed, 2208 insertions(+), 2207 deletions(-)
>  delete mode 100644 drivers/gpu/drm/bridge/analogix-anx78xx.c
>  delete mode 100644 drivers/gpu/drm/bridge/analogix-anx78xx.h
>  create mode 100644 drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
>  create mode 100644 drivers/gpu/drm/bridge/analogix/analogix-anx78xx.h

'git format-patch -M' is usually a lot better to use when moving files
around, as it shows you only any changes in the files, not a huge
delete/add cycle.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
