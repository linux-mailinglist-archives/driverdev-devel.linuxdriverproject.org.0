Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D362ECC76
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Jan 2021 10:14:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6B75D869F2;
	Thu,  7 Jan 2021 09:13:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2PC7pkHNJ-Xe; Thu,  7 Jan 2021 09:13:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 699528695B;
	Thu,  7 Jan 2021 09:13:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 869351BF403
 for <devel@linuxdriverproject.org>; Thu,  7 Jan 2021 09:13:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8308186714
 for <devel@linuxdriverproject.org>; Thu,  7 Jan 2021 09:13:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WmukMYYhAHp6 for <devel@linuxdriverproject.org>;
 Thu,  7 Jan 2021 09:13:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb1-smtp-cloud9.xs4all.net (lb1-smtp-cloud9.xs4all.net
 [194.109.24.22])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 527918670C
 for <devel@driverdev.osuosl.org>; Thu,  7 Jan 2021 09:13:52 +0000 (UTC)
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id xRMVklktVbMeAxRMZkT4Za; Thu, 07 Jan 2021 10:13:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1610010830; bh=E0MA7bSe09OCRGTiRBeJqYGJV3Asl9zqcjkRywEcSlA=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=LiqJ21KYHrwqKrRJcgKxZqm1AxBN59aAlf3EUIosdZWalxJ2wL1NvKnPXyy3G8Kwv
 zbWzE6Y8/nuiS6rogUvCfWoh+l8Ubn53VKT3c23ecaosLLAANRjTfe3b7t8k/tjDBd
 c+/aFH2YhtbKMkbuu93gpQXu7kv6vdbASh4EwInk6aJWmpsaSB1tNUYG5NiFHCsrde
 qnUIhYzEYwTpnz6KZ16dwFI+vEwuBq2rbmPBT1ewOXKeVIcRsjWZw8KvUqvBJYJ8iR
 581HlH8TUiMkRbJStjcx5IdxoSN1FWfTsh58D7t3xiH06Dp7mcy+gGJBRPMWD9S9cM
 hqsAlKnfIx+tg==
Subject: Re: [PATCH] media: rkvdec: silence ktest bot build warning
To: Adrian Ratiu <adrian.ratiu@collabora.com>, linux-media@vger.kernel.org
References: <20201208155540.340583-1-adrian.ratiu@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <76b5569c-bc19-3d11-4da7-cf0dbb244433@xs4all.nl>
Date: Thu, 7 Jan 2021 10:13:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20201208155540.340583-1-adrian.ratiu@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfECXKwRH1TUnQACLjcNLsP8PHssfJJz/tIezgMZj62/CxkRMGBxeAwNrUgW+Q3170ToZ4VnWpgpVMi/tPwXxZQTsqdGv1eukLo5ghbZ5Xgmo3wfn6QT4
 XPHbH2VyQJ9lQ1iiBZnfnwh9mWIE3CTJSlGRJPdtyNo4fb29QXbYynlw0T55QFeTbbDefiJxe8Cby7mIk/gLeHoObJ3kYd9fXUlltm2GF+r6IAgusSlF4VGN
 cOCIaubQuEIQHGtC++jcl/dTcaw9Q2N0iJTerVTq13CrZlwZInddDIHGqlo0ESut9PLWvuYoj4N1k/BtW/bKP6pFK+/gBw82VLVASDLcBuBG8l9i+CLLMkCU
 H1BB/rd9s18MP0BUpnMGxrzcK7dbH1CQHA0VxWO94undZRd0wyPOWIVUskiEwnYBvgAFycxi4aUrQKH6h0Tu1eII4xYIcGM9FT88VtCApDcFxCk1/EdAS0Fn
 sOG/rUxKg5I5+WUdx3/aeoiIHaVWXN2v6SVhDorbPjkKebsLIIMAHX+t80E=
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
Cc: devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 08/12/2020 16:55, Adrian Ratiu wrote:
> Some configurations built by the ktest bot produce the following
> warn, so mark the struct as __maybe_unused to avoid unnecessary
> ML spam.
> 
>>> drivers/staging/media/rkvdec/rkvdec.c:967:34: warning: unused variable 'of_rkvdec_match' [-Wunused-const-variable]
>    static const struct of_device_id of_rkvdec_match[] = {
> 				    ^
>    1 warning generated.

I suspect that this is because there is no 'depends on OF' in the Kconfig.

'__maybe_unused' isn't used for this anywhere else, so this does not seem like the
right approach.

Regards,

	Hans

> 
> vim +/of_rkvdec_match +967 drivers/staging/media/rkvdec/rkvdec.c
> 
>    966
>  > 967	static const struct of_device_id of_rkvdec_match[] = {
>    968		{ .compatible = "rockchip,rk3399-vdec" },
>    969		{ /* sentinel */ }
>    970	};
>    971	MODULE_DEVICE_TABLE(of, of_rkvdec_match);
>    972
> 
> Cc: Boris Brezillon <boris.brezillon@collabora.com>
> Cc: Ezequiel Garcia <ezequiel@collabora.com>
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index aa4f8c287618..3af0f02ec59b 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -992,7 +992,7 @@ static void rkvdec_watchdog_func(struct work_struct *work)
>  	}
>  }
>  
> -static const struct of_device_id of_rkvdec_match[] = {
> +static const struct of_device_id __maybe_unused of_rkvdec_match[] = {
>  	{ .compatible = "rockchip,rk3399-vdec" },
>  	{ /* sentinel */ }
>  };
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
