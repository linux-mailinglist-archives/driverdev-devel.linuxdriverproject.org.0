Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A75B5B840
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 11:44:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 52834879FC;
	Mon,  1 Jul 2019 09:44:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2TMQCp7bJ7ZV; Mon,  1 Jul 2019 09:44:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A79B487999;
	Mon,  1 Jul 2019 09:44:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 600101BF853
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:44:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 59EAA8650D
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:44:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fO9drQxHyA6o for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 09:44:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5FA7F81B89
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 09:44:12 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id z23so15139269wma.4
 for <devel@driverdev.osuosl.org>; Mon, 01 Jul 2019 02:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=Wpl34t7pEEK79q3TGA4TYVX4j5sGst2FWPYV+cG9ZgQ=;
 b=FqCGWxP07Zk0mb9fi11yD9qbrg46ZxDMf6TAAhLTryUorNkAmjegD69qSKZQzKeIAn
 0s89ug6dEwg8L0+BEBBSAbCf3g7qTgsCUBh9aAp/nvNjGM8ZrPGOJ280HS1mn3PPt6Z7
 FkiCK9ryGXe48hSKSavf2BCdkAKZu00flMMqEcqN/jFRxbVO3clzXy/B8lAGQZUlUVDO
 n1l1VBVNK+FV3ZQJub7OuYXT9EBfLgwg2wubv9lMt4KR4F4cylnh2M6SjInEyoyQCXKW
 kc8jNbl3hlbq5zuOc2yJ9EOknAXMTPdnQNsJSJxTTDIFVtpvdh3rG4ZzuKYfGwhpSLPD
 afbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=Wpl34t7pEEK79q3TGA4TYVX4j5sGst2FWPYV+cG9ZgQ=;
 b=G9F8OH6Z8iSPEzSmiJnkXLOuapj5ik2zgTwprfsp5iY6mYz6zM5tSWnAP1cLTkr7p7
 zlo5O812JC++7OUGTU5wwnbWGuY/TVYf/ueKPjfQDaPRypJDE0un0BkXT5NiXKqdoRy1
 YVIcdDO6ea/mWkyRZH/TiIK+hsen2VQO9mUIvh4WI0hJ2grfmlHa6JvVaBb3xbJUGq6w
 205s1MR9SjYK1E55Ujgof5kfBGppFY+BpGYXm8N4RG7zJqdV5AWyjAQ/QjzgTx0o7VgY
 5+g/zhF8HQJp6UTIlYKYdyJXEVSduqwu3z0RPtp2M+o1YbA71r4Soxv50poVEBUK05rF
 tpRg==
X-Gm-Message-State: APjAAAWx9XW2TsI6oiQuj3zOwTvcFw5mjPCY1UA5eEV0huYwM9bjo7ah
 35+Ft/uRTHqOUQg47uyrjAo=
X-Google-Smtp-Source: APXvYqwE+Q7AnLDk4oMLFL/k5V2IsWF4NCm7kbDDvvTbUOZGjDlQHcN8+h+kh/QLkteSGPRbtaW/5w==
X-Received: by 2002:a1c:9d86:: with SMTP id g128mr17778545wme.51.1561974250603; 
 Mon, 01 Jul 2019 02:44:10 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id f21sm9951878wmb.2.2019.07.01.02.44.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 02:44:09 -0700 (PDT)
References: <20190630034905.7124-1-chinmaya.mahesh@disroot.org>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Chinmaya Krishnan Mahesh <chinmaya.mahesh@disroot.org>
Subject: Re: [PATCH] media: imx7-media-csi: Remove unneeded break after return
In-reply-to: <20190630034905.7124-1-chinmaya.mahesh@disroot.org>
Date: Mon, 01 Jul 2019 10:44:07 +0100
Message-ID: <m3o92egkd4.fsf@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Chinmaya,
Thanks for your patch.

On Sun 30 Jun 2019 at 04:49, Chinmaya Krishnan Mahesh wrote:
> This patch fixes the checkpatch.pl warning:
>
> WARNING: break is not useful after a goto or return

but this is already fixed in the media subsystem tree, by a patch
from Fabio:

964fcacddf media: imx7-media-csi: Remove unneeded break

It is better to use that tree as reference for media fixes,
sometimes some are already fixed there.

Nevertheless many thanks for the patch.

---
Cheers,
	Rui


>
> Signed-off-by: Chinmaya Krishnan Mahesh <chinmaya.mahesh@disroot.org>
> ---
>  drivers/staging/media/imx/imx7-media-csi.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
> index a708a0340eb1..c15acca1dc0d 100644
> --- a/drivers/staging/media/imx/imx7-media-csi.c
> +++ b/drivers/staging/media/imx/imx7-media-csi.c
> @@ -1021,7 +1021,6 @@ static int imx7_csi_try_fmt(struct imx7_csi *csi,
>  		break;
>  	default:
>  		return -EINVAL;
> -		break;
>  	}
>  	return 0;
>  }

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
