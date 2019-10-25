Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 458E5E41E5
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Oct 2019 04:57:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AA12F203EF;
	Fri, 25 Oct 2019 02:57:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PkN3YmgzNQPy; Fri, 25 Oct 2019 02:57:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 93DFC20198;
	Fri, 25 Oct 2019 02:57:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B57A91BF387
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 02:57:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AF8E9877AD
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 02:57:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cmAaFEzq3zJ3 for <devel@linuxdriverproject.org>;
 Fri, 25 Oct 2019 02:57:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6E21C8772E
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 02:57:03 +0000 (UTC)
Received: from localhost (unknown [38.98.37.137])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E86421929;
 Fri, 25 Oct 2019 02:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571972223;
 bh=NPN4Lzq7O1KC2vVhwGJeYdnNqlHdVp9NAz4fHW8yYOk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hfirNwxIXa6/ivSQFS2SjYN3jeaI+NC0wVP3ralF6uRWq+E4ylaKBVmUib2tXL4yN
 LjbksyjRFPdRH3tY1zaKTE3iVr5cd7JRRaFrfpcoHPBackv+WKZPMiYdiygveN+NDr
 m8sV/IecqZD6a6ixWoUj3dH2rcmHVi9BevArNccc=
Date: Thu, 24 Oct 2019 22:56:08 -0400
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: Re: [PATCH 09/15] staging: exfat: Clean up return codes -
 FFS_FORMATERR
Message-ID: <20191025025608.GA445350@kroah.com>
References: <20191024155327.1095907-1-Valdis.Kletnieks@vt.edu>
 <20191024155327.1095907-10-Valdis.Kletnieks@vt.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024155327.1095907-10-Valdis.Kletnieks@vt.edu>
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 24, 2019 at 11:53:20AM -0400, Valdis Kletnieks wrote:
> Convert FFS_FORMATERR to -EFSCORRUPTED
> 
> Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
> ---
>  drivers/staging/exfat/exfat.h       | 3 ++-
>  drivers/staging/exfat/exfat_core.c  | 4 ++--
>  drivers/staging/exfat/exfat_super.c | 2 +-
>  3 files changed, 5 insertions(+), 4 deletions(-)

This causes build errors, maybe because I didn't take your other series.

So I'm stopping here, please rebase and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
