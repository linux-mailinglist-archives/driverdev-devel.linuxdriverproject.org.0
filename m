Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 489632E1D3B
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Dec 2020 15:17:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 414B98682A;
	Wed, 23 Dec 2020 14:17:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lr1Y1SswdO8q; Wed, 23 Dec 2020 14:17:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2EB5A86850;
	Wed, 23 Dec 2020 14:17:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B27831BF4D6
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 14:17:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AA7AF85BD0
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 14:17:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w5tSh6eV-6ea for <devel@linuxdriverproject.org>;
 Wed, 23 Dec 2020 14:16:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B8ECA85BC8
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 14:16:58 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id EA2EF2313C;
 Wed, 23 Dec 2020 14:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1608733018;
 bh=RwCy8pDqkaon2dDX9Ueh49ftnCXgnKlF0QO43K1UM+I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H+x9p3G+wxKN9Ew6sk9FKlVewyqE4EIjevahRnFFfKH3J9ree4cMxHAuA+2p80tOw
 mMzjeONl6DpmhZJJAsmKLN1N2k8hzCESTT7Ud7s5Lte7YuYQYN9BlXCYxVp5tS2otP
 /oh2dX/PNvVeES4tQMiMm41w9LyMOb+X91vvdzso=
Date: Wed, 23 Dec 2020 15:18:09 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Zheng Yongjun <zhengyongjun3@huawei.com>
Subject: Re: [PATCH -next] staging: vc04_services: use DEFINE_MUTEX (and
 mutex_init() had been too late)
Message-ID: <X+NRoV/13beGil4q@kroah.com>
References: <20201223141129.32401-1-zhengyongjun3@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201223141129.32401-1-zhengyongjun3@huawei.com>
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
Cc: devel@driverdev.osuosl.org, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Dec 23, 2020 at 10:11:29PM +0800, Zheng Yongjun wrote:
> Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
> ---
>  .../vc04_services/interface/vchiq_arm/vchiq_connected.c        | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

I can not take patches without any changelog text :(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
