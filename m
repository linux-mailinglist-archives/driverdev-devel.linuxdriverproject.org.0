Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 33319D26BF
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 11:53:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 52B6D86BB1;
	Thu, 10 Oct 2019 09:53:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pC03PD-e534B; Thu, 10 Oct 2019 09:53:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0365A86BA7;
	Thu, 10 Oct 2019 09:53:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7295C1BF3FC
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 09:53:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 66D6988596
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 09:53:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 949hU0k0MGgJ for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 09:53:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B474088585
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 09:53:38 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9A9pSWI018551;
 Thu, 10 Oct 2019 09:53:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=O9jqPg9T1QShiR+fwjuMaDwdClMkwHtRLy1Yhznc3qU=;
 b=oRIjXMqz/gl3+axIiDCTYCXWfZykg9EDDf0xYzsZ6pcw7Fbt9uEZsFpIOV3RKX+VO4Gd
 7IP42+diWQv2UxnkmIxklf4KTKz9WcBns49+Eiin2dlm6QSMR0pd0A+p0rndj+DT/gVw
 o5L8TB1X0tIXo2cHL5QBsBsJ3GsMxJgLxAK4ExiYcEQAZIwpk+ihRzwFhqdjpE7KuvPB
 TKyZcv0erK+fvT0SzrtyLobfYjpUh/XQNnYSV6URtcsSZKq6w+JP44/t7feZJteE/6cV
 S+6/ZDDrxjlkRaGX8/DBQ82T+SDF7Q6WpVMXZjrLBA8sKRAUEmd2CWiq+/nn8RDjWp5v UQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2vektrsudn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 10 Oct 2019 09:53:31 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9A9hE1Y162309;
 Thu, 10 Oct 2019 09:53:30 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 2vh5ccuj7n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 10 Oct 2019 09:53:30 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9A9rO09021352;
 Thu, 10 Oct 2019 09:53:24 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 10 Oct 2019 02:53:23 -0700
Date: Thu, 10 Oct 2019 12:53:15 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Xin Ji <xji@analogixsemi.com>
Subject: Re: [PATCH v2 2/2] drm/bridge: anx7625: Add anx7625 MIPI DSI/DPI to
 DP bridge driver
Message-ID: <20191010095315.GK13286@kadam>
References: <cover.1570699576.git.xji@analogixsemi.com>
 <43f48a7036e5a2991bd6bd8a7361107b27e48c54.1570699576.git.xji@analogixsemi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <43f48a7036e5a2991bd6bd8a7361107b27e48c54.1570699576.git.xji@analogixsemi.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910100087
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910100088
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Nicolas Boichat <drinkcat@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This code is *so* much nicer than before.  I hope you feel good about
the changes.  It makes me happy to look at this code now.

On Thu, Oct 10, 2019 at 09:34:19AM +0000, Xin Ji wrote:
> +static int edid_read(struct anx7625_data *ctx,
> +		     u8 offset, u8 *pblock_buf)
> +{
> +	int ret, cnt;
> +	struct device *dev = &ctx->client->dev;
> +
> +	for (cnt = 0; cnt < EDID_TRY_CNT; cnt++) {
> +		sp_tx_aux_wr(ctx, offset);
> +		/* set I2C read com 0x01 mot = 0 and read 16 bytes */
> +		ret = sp_tx_aux_rd(ctx, 0xf1);
> +
> +		if (ret) {
> +			sp_tx_rst_aux(ctx);
> +			DRM_DEV_DEBUG_DRIVER(dev, "edid read failed, reset!\n");
> +			cnt++;

I don't think you should increment cnt.  It's just a counter.

> +		} else {
> +			ret = anx7625_reg_block_read(ctx, ctx->i2c.rx_p0_client,
> +						     AP_AUX_BUFF_START,
> +						     MAX_DPCD_BUFFER_SIZE,
> +						     pblock_buf);
> +			if (!ret)
> +				break;
> +		}
> +	}
> +
> +	if (cnt == EDID_TRY_CNT)

And it could mean that "cnt > EDID_TRY_CNT".

> +		return -EIO;
> +
> +	return 0;
> +}
> +
> +static int segments_edid_read(struct anx7625_data *ctx,
> +			      u8 segment, u8 *buf, u8 offset)
> +{
> +	u8 cnt;
> +	int ret;
> +	struct device *dev = &ctx->client->dev;
> +
> +	/* write address only */
> +	ret = anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> +				AP_AUX_ADDR_7_0, 0x30);
> +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> +				 AP_AUX_COMMAND, 0x04);
> +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> +				 AP_AUX_CTRL_STATUS,
> +				 AP_AUX_CTRL_ADDRONLY | AP_AUX_CTRL_OP_EN);
> +
> +	ret |= wait_aux_op_finish(ctx);
> +	/* write segment address */
> +	ret |= sp_tx_aux_wr(ctx, segment);
> +	/* data read */
> +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> +				 AP_AUX_ADDR_7_0, 0x50);
> +	if (ret) {
> +		DRM_ERROR("IO error : aux initial failed.\n");
> +		return ret;
> +	}
> +
> +	for (cnt = 0; cnt < EDID_TRY_CNT; cnt++) {
> +		sp_tx_aux_wr(ctx, offset);
> +		/* set I2C read com 0x01 mot = 0 and read 16 bytes */
> +		ret = sp_tx_aux_rd(ctx, 0xf1);
> +
> +		if (ret) {
> +			ret = sp_tx_rst_aux(ctx);
> +			DRM_DEV_ERROR(dev, "segment read failed, reset!\n");
> +			cnt++;

Same.

> +		} else {
> +			ret = anx7625_reg_block_read(ctx, ctx->i2c.rx_p0_client,
> +						     AP_AUX_BUFF_START,
> +						     MAX_DPCD_BUFFER_SIZE, buf);
> +			if (!ret)
> +				break;
> +		}
> +	}
> +
> +	if (cnt == EDID_TRY_CNT)
> +		return -EIO;
> +
> +	return 0;
> +}

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
