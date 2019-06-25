Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6719852434
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 09:18:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4A9CE86388;
	Tue, 25 Jun 2019 07:18:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lh42mBdtyvGG; Tue, 25 Jun 2019 07:18:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE82086193;
	Tue, 25 Jun 2019 07:17:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8FD651BF31B
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 07:17:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8C9DC86193
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 07:17:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uVfKDbQYlcOg for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 07:17:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb3-smtp-cloud7.xs4all.net (lb3-smtp-cloud7.xs4all.net
 [194.109.24.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8AD26827BD
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 07:17:55 +0000 (UTC)
Received: from [192.168.2.10] ([46.9.252.75])
 by smtp-cloud7.xs4all.net with ESMTPA
 id ffi6hOBa9F85OffiAhckq4; Tue, 25 Jun 2019 09:17:53 +0200
Subject: Re: [PATCH 1/1] staging: media: fix style problem
To: Aliasgar Surti <aliasgar.surti500@gmail.com>, mchehab@kernel.org,
 gregkh@linuxfoundation.org, sakari.ailus@linux.intel.com,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <1561099192-19638-1-git-send-email-aliasgar.surti500@gmail.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <6536b57d-fea2-e16d-2092-e9e27c51c0f1@xs4all.nl>
Date: Tue, 25 Jun 2019 09:17:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1561099192-19638-1-git-send-email-aliasgar.surti500@gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfFSLZTilMRg48ay4S06h8lKaxnNMeKtWBgoxiLCEN52Iocq8ZPUUrYyonWGG7QOqNwZdiIYnXLm2GIdRMsnRp3Z6Kii2JzVujiRdii7MH4RG1Ss/Oqmt
 7tohfhZmPwWmBiPz3adw/ILzO5bmVQDdi2l0TieHZxCj33WyvtDAAb4GDwAS1j242Dp645dNJoVwlFny2RKGdv2RWOUGu2+v3STSmO362WZXKrYTxhLx8J37
 hwb1eOI3qfHkVI2WigOct7oEn03GklCKSDyFls3OQCW9l7TcQDayQyqViElAwYHKY/YWdUEpDSN7O9bEP6fdqQMIs3ktRyGN7tpsZ9qjI4A4QtXj53dUMcGU
 JSOMaqYoiSZHozH9I5k1BEy12Xjgo4tTlLPM4DK4ftLRdJevdwqxW0giDtae+2MQ7SkY1XSc
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 6/21/19 8:39 AM, Aliasgar Surti wrote:
> From: Aliasgar Surti <aliasgar.surti500@gmail.com>
> 
> checkpatch reported "WARNING: line over 80 characters".
> This patch fixes the warning for file soc_camera/soc_ov5642.c

FYI: we're not accepting patches for staging/media/soc_camera: these
are obsolete and broken drivers.

Regards,

	Hans

> 
> Signed-off-by: Aliasgar Surti <aliasgar.surti500@gmail.com>
> ---
>  drivers/staging/media/soc_camera/soc_ov5642.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/soc_camera/soc_ov5642.c b/drivers/staging/media/soc_camera/soc_ov5642.c
> index 94696d7..39ae24dc 100644
> --- a/drivers/staging/media/soc_camera/soc_ov5642.c
> +++ b/drivers/staging/media/soc_camera/soc_ov5642.c
> @@ -687,7 +687,8 @@ static int reg_write16(struct i2c_client *client, u16 reg, u16 val16)
>  }
>  
>  #ifdef CONFIG_VIDEO_ADV_DEBUG
> -static int ov5642_get_register(struct v4l2_subdev *sd, struct v4l2_dbg_register *reg)
> +static int ov5642_get_register(struct v4l2_subdev *sd,
> +			       struct v4l2_dbg_register *reg)
>  {
>  	struct i2c_client *client = v4l2_get_subdevdata(sd);
>  	int ret;
> @@ -705,7 +706,8 @@ static int ov5642_get_register(struct v4l2_subdev *sd, struct v4l2_dbg_register
>  	return ret;
>  }
>  
> -static int ov5642_set_register(struct v4l2_subdev *sd, const struct v4l2_dbg_register *reg)
> +static int ov5642_set_register(struct v4l2_subdev *sd,
> +			       const struct v4l2_dbg_register *reg)
>  {
>  	struct i2c_client *client = v4l2_get_subdevdata(sd);
>  
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
