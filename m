Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA73D51A8
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Oct 2019 20:35:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 408A4204BB;
	Sat, 12 Oct 2019 18:35:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CsKMWjEMmxRW; Sat, 12 Oct 2019 18:35:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9696320117;
	Sat, 12 Oct 2019 18:35:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9058F1BF28C
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 18:35:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8934C20031
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 18:35:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3e4BTNrFvQuN for <devel@linuxdriverproject.org>;
 Sat, 12 Oct 2019 18:35:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by silver.osuosl.org (Postfix) with ESMTPS id B999220025
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 18:35:41 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.67,288,1566856800"; d="scan'208";a="322499627"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
 by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Oct 2019 20:35:19 +0200
Date: Sat, 12 Oct 2019 20:35:19 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Wambui Karuga <wambui.karugax@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 0/5] Remove typedef declarations
 in staging: octeon
In-Reply-To: <cover.1570821661.git.wambui.karugax@gmail.com>
Message-ID: <alpine.DEB.2.21.1910122034390.3049@hadrien>
References: <cover.1570821661.git.wambui.karugax@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Sat, 12 Oct 2019, Wambui Karuga wrote:

> This patchset removes the addition of new typedefs data types in octeon,
> along with replacing the previous uses with the new declaration format.
>
> v2 of the series removes the obsolete "_t" notation in the named types.
>
> Wambui Karuga (5):
>   staging: octeon: remove typedef declaration for cvmx_wqe
>   staging: octeon: remove typedef declaration for cvmx_helper_link_info
>   staging: octeon: remove typedef declaration for cvmx_fau_reg_32
>   staging: octeon: remove typedef declartion for cvmx_pko_command_word0
>   staging: octeon: remove typedef declaration for cvmx_fau_op_size
>
>  drivers/staging/octeon/ethernet-mdio.c   |  6 +--
>  drivers/staging/octeon/ethernet-rgmii.c  |  4 +-
>  drivers/staging/octeon/ethernet-rx.c     |  6 +--
>  drivers/staging/octeon/ethernet-tx.c     |  4 +-
>  drivers/staging/octeon/ethernet.c        |  6 +--
>  drivers/staging/octeon/octeon-ethernet.h |  2 +-
>  drivers/staging/octeon/octeon-stubs.h    | 56 ++++++++++++------------
>  7 files changed, 43 insertions(+), 41 deletions(-)

For the series:

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

>
> --
> 2.23.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1570821661.git.wambui.karugax%40gmail.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
