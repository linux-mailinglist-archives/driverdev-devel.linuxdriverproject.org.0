Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DE22BC6FF
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Nov 2020 17:32:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CD4DB85F7B;
	Sun, 22 Nov 2020 16:32:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ryoJotW_V77A; Sun, 22 Nov 2020 16:32:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 67AD986142;
	Sun, 22 Nov 2020 16:32:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 214ED1BF575
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 16:32:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1E0ED86FB0
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 16:32:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2aiQK5MsO13w for <devel@linuxdriverproject.org>;
 Sun, 22 Nov 2020 16:32:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AF25E86FAE
 for <devel@driverdev.osuosl.org>; Sun, 22 Nov 2020 16:32:19 +0000 (UTC)
Received: from coco.lan (ip5f5ad5ca.dynamic.kabel-deutschland.de
 [95.90.213.202])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A460620781;
 Sun, 22 Nov 2020 16:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606062739;
 bh=VMIYyEBtVHEpHEje5MUkkV48oHg0IEtqlbmMKKMnzwE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kgPCo+oepy4tv4VFmRLbcIzrKF/OwPvTedgyndcNGVUN7oLmSlWrhJrPhcZo6Lixw
 /VpID1Vhqs/LRwYNkPgLirwGGavQib5HWjKApbHqYafoTw3hg2bbidUcZU5ss531HZ
 ICupmudALzaHcO7M8/eow5kyDvSJOcDOdmNdgJVA=
Date: Sun, 22 Nov 2020 17:32:14 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH 094/141] media: atomisp: Fix fall-through warnings for
 Clang
Message-ID: <20201122173214.2a052066@coco.lan>
In-Reply-To: <6a1c9b29a2d8e5accb48cd179cfe43b87fd83a00.1605896060.git.gustavoars@kernel.org>
References: <cover.1605896059.git.gustavoars@kernel.org>
 <6a1c9b29a2d8e5accb48cd179cfe43b87fd83a00.1605896060.git.gustavoars@kernel.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Fri, 20 Nov 2020 12:36:50 -0600
"Gustavo A. R. Silva" <gustavoars@kernel.org> escreveu:

> In preparation to enable -Wimplicit-fallthrough for Clang, fix a warning
> by explicitly adding a break statement instead of letting the code fall
> through to the next case.
> 
> Link: https://github.com/KSPP/linux/issues/115
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Reviewed-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

> ---
>  drivers/staging/media/atomisp/pci/runtime/isys/src/rx.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/media/atomisp/pci/runtime/isys/src/rx.c b/drivers/staging/media/atomisp/pci/runtime/isys/src/rx.c
> index b4813cd50daa..4a18da6bf0c1 100644
> --- a/drivers/staging/media/atomisp/pci/runtime/isys/src/rx.c
> +++ b/drivers/staging/media/atomisp/pci/runtime/isys/src/rx.c
> @@ -368,6 +368,7 @@ static mipi_predictor_t sh_css_csi2_compression_type_2_mipi_predictor(
>  		break;
>  	case IA_CSS_CSI2_COMPRESSION_TYPE_2:
>  		predictor = MIPI_PREDICTOR_TYPE2 - 1;
> +		break;
>  	default:
>  		break;
>  	}



Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
