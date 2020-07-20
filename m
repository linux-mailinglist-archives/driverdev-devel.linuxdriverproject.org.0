Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 693A32259DE
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Jul 2020 10:19:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6206221511;
	Mon, 20 Jul 2020 08:19:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K8KH83MOTnfa; Mon, 20 Jul 2020 08:19:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9CA0720789;
	Mon, 20 Jul 2020 08:19:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E5EDF1BF5E0
 for <devel@linuxdriverproject.org>; Mon, 20 Jul 2020 08:19:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DD49C204BF
 for <devel@linuxdriverproject.org>; Mon, 20 Jul 2020 08:19:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QmmBpY8X46K2 for <devel@linuxdriverproject.org>;
 Mon, 20 Jul 2020 08:19:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id C30E3204B0
 for <devel@driverdev.osuosl.org>; Mon, 20 Jul 2020 08:19:17 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E68982080D;
 Mon, 20 Jul 2020 08:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595233157;
 bh=EtZ9AhynlGhfBWyIDxGxkbdjeCY/mrbQUUjyIFA87HU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YF/LJ8/PYqVCNTC9nEdwYHwGsSUGCAP4XblC812s9WO/qGz1FiiKuS+7eZH/otrQl
 bc6nKiY2dclZvhOBBhCZC1flVILlCb9+wSdcCDGGygq/naFoerYbvwKGSBRJQuaXvF
 qfuQh8WgbOH2boGqzcoGoj1gy0uvs1YAkJIx5KpU=
Date: Mon, 20 Jul 2020 10:19:27 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Ian Abbott <abbotti@mev.co.uk>
Subject: Re: [PATCH 0/4] staging: comedi: INSN_CONFIG_DIGITAL_TRIG fixes
Message-ID: <20200720081927.GA688558@kroah.com>
References: <20200717145257.112660-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200717145257.112660-1-abbotti@mev.co.uk>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 17, 2020 at 03:52:53PM +0100, Ian Abbott wrote:
> These patches correct problems with INSN_CONFIG_DIGITAL_TRIG comedi
> configuration instructions in various comedi drivers, in particular the
> use of unconstrained bit shift amounts from userspace leading to
> undefined behaviour (although hopefully not the kernel crashy sort).
> 
> The patches have been marked for inclusion in the stable tree.  Note
> that patch 4 changes a similar area of code to Dan Carpenter's commit
> ef75e14a6c93 ("staging: comedi: verify array index is correct before
> using it"), so I have indicated it as a prerequisite.
> 
> *Note to Greg KH*: I have based these patches on your "staging-linus"
> branch due to the prerequisite ef75e14a6c93 mentioned above being
> present in neither "staging-next" nor "staging-testing" at the time of
> posting.

Thanks for the note, all now queued up to the proper branch.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
