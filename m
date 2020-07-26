Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E876A22DD8B
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 11:12:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DF96D21541;
	Sun, 26 Jul 2020 09:12:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cZGklIuwukm7; Sun, 26 Jul 2020 09:12:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4CF2A21539;
	Sun, 26 Jul 2020 09:12:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 43F131BF35E
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 09:12:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3B372860C1
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 09:12:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6McEo2xx-LD2 for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 09:12:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C57A686027
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 09:12:13 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EDA9F206F6;
 Sun, 26 Jul 2020 09:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595754733;
 bh=SkIbXYrd9PCUhAfh+KHQ6eWiQH+hjmz6Y3cUt7Ryq8Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SFhM2n8ac9C3e3sYuWswrp8xNieMzbpCePZvZBBsCpJCWWHEFw52WZFRSoyy4EO+A
 rywNPHEIm+uCj8BqqZnqdgHdXL+JssIWMnZqqD1acqNmL/wJZ1RO9h+roz/oRotCIO
 wVwuJP66Cb+hTz5u0etFnQkM2Xi6oM3ekmmKVWEQ=
Date: Sun, 26 Jul 2020 11:12:09 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
Subject: Re: [PATCH v3 1/4] staging: media: atomisp: fix style of block
 comments
Message-ID: <20200726091209.GA451376@kroah.com>
References: <20200726062541.11304-1-bharadwaj.rohit8@gmail.com>
 <20200726090512.20574-1-bharadwaj.rohit8@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200726090512.20574-1-bharadwaj.rohit8@gmail.com>
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
Cc: devel@driverdev.osuosl.org, mchehab@kernel.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jul 26, 2020 at 02:35:10PM +0530, Rohit K Bharadwaj wrote:
> this patch fixes the coding style of block comments.
> 
> Signed-off-by: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
> ---
> v3: change patch subject prefix
> v2: split patch into sequence of patches 
> v1: fix all coding style issues in single patch
> 
>  .../media/atomisp/pci/sh_css_firmware.c       | 28 +++++++++++++------
>  1 file changed, 19 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/sh_css_firmware.c b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
> index d4ab15b6d1ac..2907aead98b7 100644
> --- a/drivers/staging/media/atomisp/pci/sh_css_firmware.c
> +++ b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
> @@ -51,9 +51,12 @@ struct fw_param {
>  
>  static struct firmware_header *firmware_header;
>  
> -/* The string STR is a place holder
> +/*
> + * The string STR is a place holder
>   * which will be replaced with the actual RELEASE_VERSION
> - * during package generation. Please do not modify  */
> + * during package generation. Please do not modify
> + */
> +

Why the blank line?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
