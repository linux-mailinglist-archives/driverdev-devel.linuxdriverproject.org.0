Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB7143512
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 12:02:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D6A4586433;
	Thu, 13 Jun 2019 10:02:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FRYDi5rD3Q8F; Thu, 13 Jun 2019 10:02:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B22DA8641E;
	Thu, 13 Jun 2019 10:02:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 635EC1BF981
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 10:02:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 609C588182
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 10:02:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ODSm2qGTT9Em for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 10:02:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kirsty.vergenet.net (kirsty.vergenet.net [202.4.237.240])
 by hemlock.osuosl.org (Postfix) with ESMTP id DA45288184
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 10:02:52 +0000 (UTC)
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 31BC625BE48;
 Thu, 13 Jun 2019 19:54:24 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 3954E940483; Thu, 13 Jun 2019 11:54:22 +0200 (CEST)
Date: Thu, 13 Jun 2019 11:54:22 +0200
From: Simon Horman <horms@verge.net.au>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: Re: [PATCH 33/34] staging: media: soc_camera: soc_mt9v022: simplify
 getting the adapter of a client
Message-ID: <20190613095421.qmi7665txyszhkwn@verge.net.au>
References: <20190608105619.593-1-wsa+renesas@sang-engineering.com>
 <20190608105619.593-34-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190608105619.593-34-wsa+renesas@sang-engineering.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
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
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jun 08, 2019 at 12:56:12PM +0200, Wolfram Sang wrote:
> We have a dedicated pointer for that, so use it. Much easier to read and
> less computation involved.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Simon Horman <horms+renesas@verge.net.au>

> ---
> 
> Please apply to your subsystem tree.
> 
>  drivers/staging/media/soc_camera/soc_mt9v022.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/soc_camera/soc_mt9v022.c b/drivers/staging/media/soc_camera/soc_mt9v022.c
> index e7e0d3d29499..1739a618846d 100644
> --- a/drivers/staging/media/soc_camera/soc_mt9v022.c
> +++ b/drivers/staging/media/soc_camera/soc_mt9v022.c
> @@ -883,7 +883,7 @@ static int mt9v022_probe(struct i2c_client *client,
>  {
>  	struct mt9v022 *mt9v022;
>  	struct soc_camera_subdev_desc *ssdd = soc_camera_i2c_to_desc(client);
> -	struct i2c_adapter *adapter = to_i2c_adapter(client->dev.parent);
> +	struct i2c_adapter *adapter = client->adapter;
>  	struct mt9v022_platform_data *pdata;
>  	int ret;
>  
> -- 
> 2.19.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
