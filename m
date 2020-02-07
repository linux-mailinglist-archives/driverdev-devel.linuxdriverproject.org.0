Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4987D155501
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Feb 2020 10:47:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5024586B78;
	Fri,  7 Feb 2020 09:47:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o6WlRFC6kJ2N; Fri,  7 Feb 2020 09:47:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 34A6686388;
	Fri,  7 Feb 2020 09:47:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D73E91BF59D
 for <devel@linuxdriverproject.org>; Fri,  7 Feb 2020 09:47:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D429486265
 for <devel@linuxdriverproject.org>; Fri,  7 Feb 2020 09:47:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0T3nG5lSV3cV for <devel@linuxdriverproject.org>;
 Fri,  7 Feb 2020 09:47:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CCD4686153
 for <devel@driverdev.osuosl.org>; Fri,  7 Feb 2020 09:47:26 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4002622314;
 Fri,  7 Feb 2020 09:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581068846;
 bh=STDDAhSbeinx11QVofYzcpT5d2ybVmuuDFwiPmfqa1w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j9ZZ4OUJ9gYn3AXHXtwXGtFs6h4p/nv3Z+4OjjOIukFt/R4RtcMgFI4jaDnHvfklE
 xVxyHn7Xi25UmXgchQDPtLexq5dwcp2ig0S0ZpHanHjbLQgxpbl9eD1CWS863GFS/7
 Up9gHdCIwIL5L1yD49bmI3MAH40L1NFKtgxnyqbg=
Date: Fri, 7 Feb 2020 10:47:24 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.mitsubishielectric.co.jp>
Subject: Re: [PATCH 1/2] staging: exfat: remove DOSNAMEs.
Message-ID: <20200207094724.GA564661@kroah.com>
References: <20200203163118.31332-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203163118.31332-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
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
Cc: devel@driverdev.osuosl.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org, motai.hirotaka@aj.mitsubishielectric.co.jp,
 Mori.Takahiro@ab.mitsubishielectric.co.jp, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 04, 2020 at 01:31:17AM +0900, Tetsuhiro Kohada wrote:
> remove 'dos_name','ShortName' and related definitions.
> 
> 'dos_name' and 'ShortName' are definitions before VFAT.
> These are never used in exFAT.
> 
> Signed-off-by: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
> ---
>  drivers/staging/exfat/exfat.h       | 52 +++--------------------------
>  drivers/staging/exfat/exfat_core.c  | 47 +++++++++-----------------
>  drivers/staging/exfat/exfat_super.c | 38 ++++++++-------------
>  3 files changed, 34 insertions(+), 103 deletions(-)

Patch does not apply to my tree, can you rebase this series and resend?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
