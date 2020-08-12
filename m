Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E759242D24
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 18:28:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 023F884995;
	Wed, 12 Aug 2020 16:28:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 59Lt-WbBJ8ig; Wed, 12 Aug 2020 16:28:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B68FC84993;
	Wed, 12 Aug 2020 16:28:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C94601BF4DD
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 16:28:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C49DB87F30
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 16:28:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y8QAREbRX4wq for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 16:28:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0E45987EF8
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 16:28:05 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 51D152076B;
 Wed, 12 Aug 2020 16:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597249684;
 bh=I9L7cHpHrVvxSFWYMps8sy0c98kCT0nrA4/d/KoIgbM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S5dQoOWQCm7WCxvwcjjKEUJ8v0jMp2AZr6OEYrkdEoQJ+7mWvd5S3d1E3K6PdeFqq
 +j11151WCDN2yepised6rW4edAk5hO/dfERaQZz5OmtNsRtB2BKRcj3PHEDt55inco
 bvIFhxL6Ux07qSBp8Q0TDADNCFE5IyokThM314KU=
Date: Wed, 12 Aug 2020 18:28:14 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 01/44] staging: spmi: add Hikey 970 SPMI controller driver
Message-ID: <20200812162814.GB2650123@kroah.com>
References: <cover.1597247164.git.mchehab+huawei@kernel.org>
 <4305f945d257cf590646100cad752a0a6542a152.1597247164.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4305f945d257cf590646100cad752a0a6542a152.1597247164.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 mauro.chehab@huawei.com, linuxarm@huawei.com, Mayulong <mayulong1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 12, 2020 at 05:56:11PM +0200, Mauro Carvalho Chehab wrote:
> From: Mayulong <mayulong1@huawei.com>
> 
> Add the SPMI controller code required to use the Kirin 970
> SPMI bus.
> 
> [mchehab+huawei@kernel.org: added just the SPMI controller on this patch]
> 
> The complete patch is at:
> 
> 	https://github.com/96boards-hikey/linux/commit/08464419fba2
> 
> Signed-off-by: Mayulong <mayulong1@huawei.com>
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  .../staging/hikey9xx/hisi-spmi-controller.c   | 390 ++++++++++++++++++
>  1 file changed, 390 insertions(+)
>  create mode 100644 drivers/staging/hikey9xx/hisi-spmi-controller.c
> 
> diff --git a/drivers/staging/hikey9xx/hisi-spmi-controller.c b/drivers/staging/hikey9xx/hisi-spmi-controller.c
> new file mode 100644
> index 000000000000..987526c8b49f
> --- /dev/null
> +++ b/drivers/staging/hikey9xx/hisi-spmi-controller.c
> @@ -0,0 +1,390 @@
> +
> +#include <linux/delay.h>

<snip>

No SPDX line at all?

:(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
