Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 285194B1045
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Feb 2022 15:23:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D86F4090B;
	Thu, 10 Feb 2022 14:23:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IxtQMkK7-wH2; Thu, 10 Feb 2022 14:23:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2037408F9;
	Thu, 10 Feb 2022 14:23:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0FBFC1BF2AA
 for <devel@linuxdriverproject.org>; Thu, 10 Feb 2022 14:23:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F03F840393
 for <devel@linuxdriverproject.org>; Thu, 10 Feb 2022 14:23:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tTZSG4Dw6zrY for <devel@linuxdriverproject.org>;
 Thu, 10 Feb 2022 14:23:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 553794031C
 for <devel@driverdev.osuosl.org>; Thu, 10 Feb 2022 14:23:51 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9E5B0619C9;
 Thu, 10 Feb 2022 14:23:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDC17C004E1;
 Thu, 10 Feb 2022 14:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644503030;
 bh=kFD4BdX/xGNQMXDRnzY9jSgp8cW8ooG1pe8p+Wttp5o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g5CmlsrmlIy2rSKWBZvJJzCg9k2iQDqcY05aL6/qJCLmA2IH8GC93GNE6UM0MdFAa
 TIcu51fyjfmx+H8sDOR0CGwa4x0pPNjzUUBGgyYXy25Hy9hq4J/BZO0PTrDhwzSzB7
 8/xQiaG2+wokXKBkfljrGfKqKRf2OGP8w4ec+rBPGLu01D0OVoiBtIyvucfoVY51un
 tkkkWv5Fs0KIYG3NTRrpxenwUd5I2LxFRfUE94RBRbkNa6JwvAdrxnZ7QuGO0SOeUo
 agkz2KmIaP0viGxAQwvL2PUmGHe+gut85/5PgS47s5FZaH/O7H/DiDlmZj61whcCOM
 U98HjespBmwNA==
Received: by pali.im (Postfix)
 id 96859869; Thu, 10 Feb 2022 15:23:47 +0100 (CET)
Date: Thu, 10 Feb 2022 15:23:47 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v9 05/24] wfx: add main.c/main.h
Message-ID: <20220210142347.nwmbynkcdtjhvsj5@pali>
References: <20220111171424.862764-1-Jerome.Pouiller@silabs.com>
 <20220111171424.862764-6-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220111171424.862764-6-Jerome.Pouiller@silabs.com>
User-Agent: NeoMutt/20180716
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
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tuesday 11 January 2022 18:14:05 Jerome Pouiller wrote:
> +/* The device needs data about the antenna configuration. This information in
> + * provided by PDS (Platform Data Set, this is the wording used in WF200
> + * documentation) files. For hardware integrators, the full process to create
> + * PDS files is described here:
> + *   https:github.com/SiliconLabs/wfx-firmware/blob/master/PDS/README.md
> + *

Just a small cosmetic issue but URL cannot be automatically opened as it
is missing slashes after https protocol.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
