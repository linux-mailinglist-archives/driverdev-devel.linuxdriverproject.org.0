Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B79F14A979
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 19:11:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 814D0863D0;
	Mon, 27 Jan 2020 18:11:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c-Dtd1bNaAa1; Mon, 27 Jan 2020 18:11:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 605A986420;
	Mon, 27 Jan 2020 18:11:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 079011BF2EF
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 18:11:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 040C3850E6
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 18:11:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o4vXUKv76kk4 for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 18:11:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E318E850AD
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 18:11:42 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 7305129345A
Message-ID: <1d83a74c24269c7bcf6d6d8a789c88dbf7370dbb.camel@collabora.com>
Subject: Re: [PATCH 0/4] Hantro VPU JPEG encoder fixes
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>, 
 devel@driverdev.osuosl.org
Date: Mon, 27 Jan 2020 15:11:33 -0300
In-Reply-To: <20200127143009.15677-1-andrzej.p@collabora.com>
References: <20200127143009.15677-1-andrzej.p@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.34.1-2 
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kernel@collabora.com,
 Tomasz Figa <tfiga@chromium.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Andrzej,

Thanks a lot for the fixes!

On Mon, 2020-01-27 at 15:30 +0100, Andrzej Pietrasiewicz wrote:
> This series addresses quality issues in encoded JPEG images.
> 
> The first patch actually restores the intention of the original submission
> of this driver: due to a typo the helper variables were unused and then
> have been removed in some cleanup done by Mauro.
> 
> The second patch aligns the driver's luma quantization table with
> the one in the ITU-T.81 standard.
> 
> The third patch changes the order in which quantization tables are
> written to the resulting file and to the hardware. The file expects
> a zig-zag order, while the hardware wants some special order, neither
> linear nor zig-zag. In other words, hardware-wise it rearranges which
> parts of quantization tables go into which 4-byte registers - in a hardware
> specific order rather than linear or zig-zag. It also affects rk3288 and
> hasn't been tested with it.
> 
> The fourth patch then rearranges the sequence of register writes.
> The whole luma quantization table must be written first, and then the
> chroma quantization is written. In other words, while patch 3/4
> changes what goes into which register, this patch changes when each
> register is written to. It also affects rk3288 and hasn't been
> tested with it.
> 

I've just tested RK3288, and this series is indeed fixing
these issues. So for all patches:

Tested-by: Ezequiel Garcia <ezequiel@collabora.com>

Thanks,
Ezequiel

> Andrzej Pietrasiewicz (4):
>   media: hantro: Read be32 words starting at every fourth byte
>   media: hantro: Use standard luma quantization table
>   media: hantro: Write the quantization tables in proper order
>   media: hantro: Write quantization table registers in increasing
>     addresses order
> 
>  .../staging/media/hantro/hantro_h1_jpeg_enc.c | 19 ++++-
>  drivers/staging/media/hantro/hantro_jpeg.c    | 76 ++++++++++++++-----
>  drivers/staging/media/hantro/hantro_jpeg.h    |  2 +-
>  .../media/hantro/rk3399_vpu_hw_jpeg_enc.c     | 24 ++++--
>  4 files changed, 89 insertions(+), 32 deletions(-)
> 
> -- 
> 2.17.1
> 
> 


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
