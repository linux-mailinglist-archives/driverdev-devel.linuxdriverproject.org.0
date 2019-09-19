Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4F8B7B60
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Sep 2019 15:59:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C7CFB87E7B;
	Thu, 19 Sep 2019 13:59:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z3e4mtmEAZEk; Thu, 19 Sep 2019 13:59:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3FFE287E59;
	Thu, 19 Sep 2019 13:59:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0CEBC1BF20B
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 13:59:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0A55A20390
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 13:59:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gjClZXBBqNd6 for <devel@linuxdriverproject.org>;
 Thu, 19 Sep 2019 13:59:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id A760820471
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 13:59:20 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F1E8A20665;
 Thu, 19 Sep 2019 13:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568901560;
 bh=I8osdBr5rK8/FGiX5xKVgPYs/R2ZYcecd+s4/UF9w7E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=f8OD1gi3nEkTcNUJXlI6jOI0AXpXmj5vr0wFr4lUW9cV/3FEkMLfxB1hYO9dPEKHm
 gem2FmhUVREnBHtoUT44ZUBnM2Khz7+40EO3x1jDJCu1W6YYQLVYOdOd92xjzNuT/u
 1xPPixqNnXvMfZv8eLmwekOhdmVU7OIqADqoj3MU=
Date: Thu, 19 Sep 2019 15:59:18 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v2 20/20] staging: wfx: implement the rest of mac80211 API
Message-ID: <20190919135918.GA3853501@kroah.com>
References: <20190919135220.30663-1-Jerome.Pouiller@silabs.com>
 <20190919135220.30663-21-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919135220.30663-21-Jerome.Pouiller@silabs.com>
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
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 David Le Goff <David.Legoff@silabs.com>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 19, 2019 at 01:52:42PM +0000, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>

I can not take patches without any changelog text :(


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
