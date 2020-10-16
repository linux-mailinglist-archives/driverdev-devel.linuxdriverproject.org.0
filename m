Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1742903E8
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Oct 2020 13:17:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2BFCE8891D;
	Fri, 16 Oct 2020 11:17:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PM8BMrIGJKui; Fri, 16 Oct 2020 11:17:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 27AA288902;
	Fri, 16 Oct 2020 11:17:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 128181BF30E
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 11:16:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 09CE788902
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 11:16:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yaHX2GiWszmp for <devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 11:16:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7B0D7886AA
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 11:16:58 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7964820878;
 Fri, 16 Oct 2020 11:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602847018;
 bh=9O2VsNOj0Pl896NsOWT55a1CGfW1jErCtAHYmNumc58=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GefhZu0pi7Kyd3g7+HhdWWen52jVybrN5Q6NONX9so3K11g0/qPdDKMM4aK9fBY63
 j63U84EAkNzRoY3tV1P5stiI0yv2XXcvBepKwmye6/9/TCCWQlbQPobwv9qV/ZdCNE
 3Kpr6521HiIruqx8Hs4X0CdqO4pmMWh41wCkLTsA=
Date: Fri, 16 Oct 2020 13:17:29 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alexander A Sverdlin <alexander.sverdlin@nokia.com>
Subject: Re: [PATCH v2 net] staging: octeon: Drop on uncorrectable alignment
 or FCS error
Message-ID: <20201016111729.GB1785357@kroah.com>
References: <20201016101858.11374-1-alexander.sverdlin@nokia.com>
 <20201016101858.11374-2-alexander.sverdlin@nokia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201016101858.11374-2-alexander.sverdlin@nokia.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Ralf Baechle <ralf@linux-mips.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 16, 2020 at 12:18:58PM +0200, Alexander A Sverdlin wrote:
> From: Alexander Sverdlin <alexander.sverdlin@nokia.com>
> 
> Currently in case of alignment or FCS error if the packet cannot be
> corrected it's still not dropped. Report the error properly and drop the
> packet while making the code around a little bit more readable.
> 
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@nokia.com>
> Fixes: 80ff0fd3ab ("Staging: Add octeon-ethernet driver files.")
> 
> Change-Id: Ie1fadcc57cb5e221cf3e83c169b53a5533b8edff

You didn't run checkpatch :(

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
