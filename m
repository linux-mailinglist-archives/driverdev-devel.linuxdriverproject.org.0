Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2454AD3F42
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 14:10:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CC1A686F0B;
	Fri, 11 Oct 2019 12:10:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YdjZs5simmnA; Fri, 11 Oct 2019 12:10:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D1CC586EDD;
	Fri, 11 Oct 2019 12:10:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 87A0C1BF292
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 12:10:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8399220353
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 12:10:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pAfCOYY3Uw-x for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 12:10:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id CF72D20022
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 12:10:29 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 30579214E0;
 Fri, 11 Oct 2019 12:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570795829;
 bh=1HF5oDylqkQdNUE14J4LseEYxIdw2cU7F7CHxNQebnM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yfYHt8JFigyVnxTAUZn4PbN+TE7b6EO2Q/2QLGYU591yhUjaRPoAdmimQG9RL0faB
 ChwdYwQG+/2BVlVAZlbxKrNaLo/nvGHwl3H9W/tOigASyuzOW0oyDGRRbmfHgUT3He
 43BOz6yVsaDqaQuMdrTABWczp1W46zGW6Oe3rktU=
Date: Fri, 11 Oct 2019 14:10:27 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH] staging: wfx: fix potential vulnerability to spectre
Message-ID: <20191011121027.GA1144221@kroah.com>
References: <20191011101551.30946-1-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011101551.30946-1-Jerome.Pouiller@silabs.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 11, 2019 at 10:15:54AM +0000, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> array_index_nospec() should be applied after a bound check.
> =

> Fixes: 9bca45f3d6924f19f29c0d019e961af3f41bdc9e ("staging: wfx: allow to =
send 802.11 frames")

No need for the full sha1, this should be:
	Fixes: 9bca45f3d692 ("staging: wfx: allow to send 802.11 frames")

The command:
	git show -s --abbrev-commit --abbrev=3D12 --pretty=3Dformat:"%h (\"%s\")%n"
will provide it in the correct format.

Can you fix this up and resend?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
