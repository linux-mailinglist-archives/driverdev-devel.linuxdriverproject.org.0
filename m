Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4DC124A9A
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Dec 2019 16:05:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ADD86884B5;
	Wed, 18 Dec 2019 15:05:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KLxW5PZsVw0J; Wed, 18 Dec 2019 15:05:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9B57E884A6;
	Wed, 18 Dec 2019 15:05:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D6161BF4E4
 for <devel@linuxdriverproject.org>; Wed, 18 Dec 2019 15:04:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6DD3886B3B
 for <devel@linuxdriverproject.org>; Wed, 18 Dec 2019 15:04:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B5SPHOK0CjeC for <devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 15:04:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 198028602D
 for <devel@driverdev.osuosl.org>; Wed, 18 Dec 2019 15:04:56 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 79E8820684;
 Wed, 18 Dec 2019 15:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576681496;
 bh=/Xwy0EYDAWm9IUmqarXi6RASHE7DRX2pjkg+940R3xc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TjnG36vCL53/t2504//iSgiNAM2/Nb8XGdqdkMkqNuLbwx0OAbgmdvZwdVXhj5B0y
 vNhc3zZjTbwHJZFlgrL4vdbLoSBKNy2CmrhB/0ecaApmQg2RnmRwWyYPEubtpUK3y8
 7JDRqjgC1xASB3MQ27ehzPSYiHnGPa+1EJU+BN0k=
Date: Wed, 18 Dec 2019 16:03:46 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v2 00/55] Improve wfx driver
Message-ID: <20191218150346.GA431628@kroah.com>
References: <20191217161318.31402-1-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217161318.31402-1-Jerome.Pouiller@silabs.com>
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
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 17, 2019 at 04:14:26PM +0000, J=E9r=F4me Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> Hello all,
> =

> This pull request continue to clean up the wfx driver. It can be more or
> less divided in four parts:
>   - 0001 to 0009 fix some issues (should be included in 5.5?)
>   - 0010 to 0028 mostly contains cosmetics changes

I took the first 10 to staging-linus to get into 5.5-final.

>   - 0029 to 0043 re-work power save (in station mode) and QoS
>   - 0044 to 0054 re-work the scan process

all the rest of these I've queued up "normally" in staging-next.

And thanks for fixing up the mime issue, these applied with no problems
at all.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
