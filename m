Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED3622491E
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jul 2020 07:54:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 16068204B6;
	Sat, 18 Jul 2020 05:54:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nDf7g-NyPNLu; Sat, 18 Jul 2020 05:54:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ADE1E2041A;
	Sat, 18 Jul 2020 05:54:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2E2CC1BF82B
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 05:54:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2377B203C8
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 05:54:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4jCcQVfGhbDM for <devel@linuxdriverproject.org>;
 Sat, 18 Jul 2020 05:54:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 9F240203AF
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 05:54:12 +0000 (UTC)
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F0139207FB;
 Sat, 18 Jul 2020 05:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595051652;
 bh=7tj0coF0LM+/VMFkugJPQNZQ4IPbTxLOCHXhOrSJqAY=;
 h=Date:From:Cc:Subject:In-Reply-To:References:From;
 b=DMAsgOdbE5S+/snFh2fLr9vtfPqyP/vp0lnwJW1CI2VHKury2pA4DUzMmnHeDDWJ3
 WVxj32rIi08omQDlDtE5PuS1Cx4+3fw0xRU3eV76cWasmwj+YwF/+GUC5FnSJuIxSZ
 t6hOLOuQWHuG3NUYgp7Mw4My71LeguU2aBTrbnrY=
Date: Sat, 18 Jul 2020 07:54:07 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 1/3] media: rkvdec: Fix H264 scaling list order
Message-ID: <20200718075407.765551bb@coco.lan>
In-Reply-To: <2630e1bb0948c3134c6f22ad275ae27cc6023532.1595048742.git.mchehab+huawei@kernel.org>
References: <2630e1bb0948c3134c6f22ad275ae27cc6023532.1595048742.git.mchehab+huawei@kernel.org>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, Jonas Karlman <jonas@kwiboo.se>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Sat, 18 Jul 2020 07:05:54 +0200
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> escreveu:

> From: Jonas Karlman <jonas@kwiboo.se>
> 
> The Rockchip Video Decoder driver is expecting that the values in a
> scaling list are in zig-zag order and applies the inverse scanning process
> to get the values in matrix order.
> 
> Commit 0b0393d59eb4 ("media: uapi: h264: clarify expected
> scaling_list_4x4/8x8 order") clarified that the values in the scaling list
> should already be in matrix order.
> 
> Fix this by removing the reordering and change to use two memcpy.

Please ignore this one. This patch is already merged, and it is
not related to the 2 atomisp patches on this short series.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
