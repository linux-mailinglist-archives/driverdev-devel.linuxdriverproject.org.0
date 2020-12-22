Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBE72E0C76
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 16:10:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 21BE5274ED;
	Tue, 22 Dec 2020 15:10:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yywhw16vgJeQ; Tue, 22 Dec 2020 15:10:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8FF752048D;
	Tue, 22 Dec 2020 15:10:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 18E151BF370
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 15:10:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 13F398729A
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 15:10:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f1qABN77JFLA for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 15:10:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from m43-15.mailgun.net (m43-15.mailgun.net [69.72.43.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4166787277
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 15:10:28 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1608649830; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=k4T60vC2s1dNLZaTWXiVi917FKafMfvtENzWjJYqIVo=;
 b=feFgr3fnxLseRPqq0MktHiAwVcinTveJOxKGRojG4ufHTDzhTu0/ehlpoUxyzAhXu5N6H5dE
 VFkGnXc2w088zJrNNJI7D159bsRbqSwVaHdiwHUEYJgeRMKSdR5W7XUTb1TVJfRYq3a4MAlm
 z/wXuGDpV53b8/c+IfixZgNGKt0=
X-Mailgun-Sending-Ip: 69.72.43.15
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n08.prod.us-east-1.postgun.com with SMTP id
 5fe20c597bc801dc4f9eb138 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 22 Dec 2020 15:10:17
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id BE666C43462; Tue, 22 Dec 2020 15:10:16 +0000 (UTC)
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4A212C433C6;
 Tue, 22 Dec 2020 15:10:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4A212C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v3 09/24] wfx: add hwio.c/hwio.h
References: <20201104155207.128076-1-Jerome.Pouiller@silabs.com>
 <20201104155207.128076-10-Jerome.Pouiller@silabs.com>
Date: Tue, 22 Dec 2020 17:10:11 +0200
In-Reply-To: <20201104155207.128076-10-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Wed, 4 Nov 2020 16:51:52 +0100")
Message-ID: <87lfdp98rw.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 Pali =?utf-8?Q?Roh?= =?utf-8?Q?=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Jerome Pouiller <Jerome.Pouiller@silabs.com> writes:

> +/*
> + * Internal helpers.
> + *
> + * About CONFIG_VMAP_STACK:
> + * When CONFIG_VMAP_STACK is enabled, it is not possible to run DMA on stack
> + * allocated data. Functions below that work with registers (aka functions
> + * ending with "32") automatically reallocate buffers with kmalloc. However,
> + * functions that work with arbitrary length buffers let's caller to handle
> + * memory location. In doubt, enable CONFIG_DEBUG_SG to detect badly located
> + * buffer.
> + */

This sounds very hacky to me, I have understood that you should never
use stack with DMA.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
