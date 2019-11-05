Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 977C2F039D
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Nov 2019 18:00:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AF7688A674;
	Tue,  5 Nov 2019 17:00:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dO8bv5CQWq08; Tue,  5 Nov 2019 17:00:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9442B8A676;
	Tue,  5 Nov 2019 17:00:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4069C1BF5B4
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 17:00:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3AF458A516
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 17:00:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3lQG9am2uBOG for <devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 17:00:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C20A68A50E
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 17:00:11 +0000 (UTC)
Received: from localhost (unknown [62.119.166.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 92A7C21A4A;
 Tue,  5 Nov 2019 17:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572973211;
 bh=ySTh/ddwcV7Yu8diiAhu8ffjs6liaxuv0VeqfTyLj30=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WzzgyKWZiBurYpBbE5qPNntnlPl9ZgGUjLUUO4eCKT5ac5Pyn55ohh55y4cKpzDsg
 j+wb+Lx1LkpFxj6Hznoa9SklXD/2dIz4tBJnVipVs9Ucw2HQZjj81AiHZXSsjP6L6/
 OJGTUMQ6V8AKjZT2Pisj1/zuSTQJ57gZOXBPsdKE=
Date: Tue, 5 Nov 2019 17:59:59 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: Re: [PATCH v2 00/10] staging: exfat: Clean up return codes, revisited
Message-ID: <20191105165959.GA2776207@kroah.com>
References: <20191104014510.102356-1-Valdis.Kletnieks@vt.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104014510.102356-1-Valdis.Kletnieks@vt.edu>
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

On Sun, Nov 03, 2019 at 08:44:56PM -0500, Valdis Kletnieks wrote:
> The rest of the conversion from internal error numbers to the
> standard values used in the rest of the kernel.
> 
> Patch 10/10 is logically separate, merging multiple #defines
> into one place in errno.h.  It's included in the series because
> it depends on patch 1/10.
> 
> Valdis Kletnieks (10):
>   staging: exfat: Clean up return codes - FFS_FORMATERR
>   staging: exfat: Clean up return codes - FFS_MEDIAERR
>   staging: exfat: Clean up return codes - FFS_EOF
>   staging: exfat: Clean up return codes - FFS_INVALIDFID
>   staging: exfat: Clean up return codes - FFS_ERROR
>   staging: exfat: Clean up return codes - remove unused codes
>   staging: exfat: Clean up return codes - FFS_SUCCESS
>   staging: exfat: Collapse redundant return code translations
>   staging: exfat: Correct return code
>   errno.h: Provide EFSCORRUPTED for everybody

You forgot to say what changed from v1?

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
