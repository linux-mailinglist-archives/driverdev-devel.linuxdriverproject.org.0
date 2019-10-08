Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D274CFD38
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 17:10:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2B19B2278E;
	Tue,  8 Oct 2019 15:10:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TbqGUGCbDx7p; Tue,  8 Oct 2019 15:10:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C410422763;
	Tue,  8 Oct 2019 15:10:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F27C71BF2EA
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 15:10:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EED3D21080
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 15:10:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2jXik6P99WRf for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 15:10:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id E2046204D7
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 15:10:52 +0000 (UTC)
Received: from localhost (unknown [89.205.136.99])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A03C5206BB;
 Tue,  8 Oct 2019 15:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570547452;
 bh=zk2zcDfbVTuMjgqhrF5bvKPNSUH1aUUpLewGcGdcGUk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PcXFtux2PHMPQ/+1aRYxGV2x+MRNYyWq9PY51AXL9MbHQndcsXUAusHj7+FyGKS2h
 9FPOV4aZ+vWxEduZLNq/5VmuRxdy6tl6QE10/PQwB3q54SyJK8iSvXzcQV1f21m4Lc
 3NtHWefzVuQ8udeuWw1I9t6UFmbaSy/oTYMA/3Nk=
Date: Tue, 8 Oct 2019 17:10:46 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 0/7] Fix various compilation issues with wfx driver
Message-ID: <20191008151046.GA2862250@kroah.com>
References: <20191008094232.10014-1-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008094232.10014-1-Jerome.Pouiller@silabs.com>
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 08, 2019 at 09:42:47AM +0000, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> Most of problems are related to big-endian architectures.

kbuild still reports 2 errors with these patches applied:

Regressions in current branch:

drivers/staging/wfx/hif_tx.c:82:2-8: preceding lock on line 65
drivers/staging/wfx/main.c:188:14-21: ERROR: PTR_ERR applied after initiali=
zation to constant on line 183


Can you please fix those up as well?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
