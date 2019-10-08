Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6ACCFA02
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 14:38:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AD0B7876A5;
	Tue,  8 Oct 2019 12:38:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U4vxxeORBMEe; Tue,  8 Oct 2019 12:38:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 93911810FF;
	Tue,  8 Oct 2019 12:38:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 386C71BF35A
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 12:38:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3313C87EE8
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 12:38:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 96I0XGsS9swZ for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 12:38:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AE1FD87EC4
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 12:38:04 +0000 (UTC)
Received: from localhost (unknown [89.205.136.155])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BBC79206B6;
 Tue,  8 Oct 2019 12:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570538284;
 bh=Z0BM+J1jAE5H0wQdt5a1vbyjRdwVrmzryIUyKBCtl3Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gMmYkIDQkXBAhT88J0DPoQhQa4/8/x1OJpjv/bSYL3sGwlo8OzAsWSGRts5rkxYH/
 JRm5cZPceseeNf7sgVx8jaBQCA47z9UOwFoKutVPZvJc67E/z9Jzn1fcggH3XR+tSi
 Mywm3N5DGPb+UWbdbivk2qoxN44CAZlSC8z7ejPQ=
Date: Tue, 8 Oct 2019 14:38:01 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: hariprasad@osuosl.org, Kelam@osuosl.org, hariprasad.kelam@gmail.com
Subject: Re: [PATCH] rtl8723bs: core: Remove code valid only for 5GHZ
Message-ID: <20191008123801.GB2763989@kroah.com>
References: <1569765348-20417-1-git-send-email-hariprasad.kelam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569765348-20417-1-git-send-email-hariprasad.kelam@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Nishka Dasgupta <nishkadg.linux@gmail.com>,
 linux-kernel@vger.kernel.org,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 29, 2019 at 07:24:57PM +0530, hariprasad@osuosl.org wrote:
> From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> 
> As per TODO ,remove code valid only for 5 GHz(channel > 14).
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_ieee80211.c | 19 ++++++-------------
>  1 file changed, 6 insertions(+), 13 deletions(-)

Your email client is really messed up and got the From: line wrong in
your tool.  Please fix up and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
