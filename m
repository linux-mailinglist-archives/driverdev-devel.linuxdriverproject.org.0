Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5A831E891
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 11:56:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2CDC605F2
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 10:56:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Fkfnl-AYNyA for <lists+driverdev-devel@lfdr.de>;
	Thu, 18 Feb 2021 10:56:49 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 16D2A60615; Thu, 18 Feb 2021 10:56:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B0CA605D5;
	Thu, 18 Feb 2021 10:56:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C9521BF2B9
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 10:56:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 98C7686E0F
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 10:56:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zIqTJDYZK109 for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 10:56:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C142486E0C
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 10:56:16 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11IAsIfn070409;
 Thu, 18 Feb 2021 10:56:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=UtfpFAuXXKx50YaPgIVvUWoFjdBHQvgA3bRXqMoF/i8=;
 b=Yt6TcKZ5GmL+0F3NC73R0zDDJdLSDRSQFcLBgJ2A1Mp8b7xRvooO91YX7kkrnoZL00yt
 OdH3JaC0Kab1YAPzgMLIHZNEtPnatRRBI+RgJJhCJxruG4LrqsZXyvJciT9DbJFZNMJp
 a+FCJIEZAM9cIgrb7rC7O2LVm9rm2yV1SXP50QdWReIM0++dlqTXdaAhvJJJAeH0O41E
 g98F+piRRZR9/Zp+DgBreCuFPNMJXd/UfSCmfWAemtyor92TlPv0vzSVEY4mBL2/gZKH
 zT4fNFM7VligXujLkft5ycywZZ1HQpL1aeReDxkCuVADodQLP6O4UbLyQ0H0GlyJno+H /A== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 36pd9ad16a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Feb 2021 10:56:10 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11IAkQ8Z188616;
 Thu, 18 Feb 2021 10:56:08 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 36prbqm8qs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Feb 2021 10:56:08 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 11IAu5J1016546;
 Thu, 18 Feb 2021 10:56:05 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 18 Feb 2021 02:56:05 -0800
Date: Thu, 18 Feb 2021 13:55:51 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v1 07/18] media: hantro: Add a field to distinguish the
 hardware versions
Message-ID: <20210218105551.GF2087@kadam>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-8-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210217080306.157876-8-benjamin.gaignard@collabora.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9898
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 spamscore=0 mlxscore=0
 phishscore=0 adultscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102180095
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9898
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 impostorscore=0
 mlxscore=0 phishscore=0 mlxlogscore=999 spamscore=0 bulkscore=0
 priorityscore=1501 malwarescore=0 suspectscore=0 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102180096
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
Cc: peng.fan@nxp.com, kernel@collabora.com, devel@driverdev.osuosl.org,
 Anson.Huang@nxp.com, krzk@kernel.org, linux-rockchip@lists.infradead.org,
 wens@csie.org, linux-imx@nxp.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, p.zabel@pengutronix.de, s.hauer@pengutronix.de,
 mripard@kernel.org, robh+dt@kernel.org, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 aisheng.dong@nxp.com, jernej.skrabec@siol.net, gregkh@linuxfoundation.org,
 adrian.ratiu@collabora.com, linux-kernel@vger.kernel.org,
 paul.kocialkowski@bootlin.com, kernel@pengutronix.de, hverkuil-cisco@xs4all.nl,
 shawnguo@kernel.org, shengjiu.wang@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 17, 2021 at 09:02:55AM +0100, Benjamin Gaignard wrote:
> Decoders hardware blocks could exist in multiple versions: add
> a field to distinguish them at runtime.
> Keep the default behavoir to be G1 hardware.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> ---
>  drivers/staging/media/hantro/hantro.h     | 5 +++++
>  drivers/staging/media/hantro/hantro_drv.c | 2 ++
>  2 files changed, 7 insertions(+)
> 
> diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
> index bde65231f22f..2a566dfc2fe3 100644
> --- a/drivers/staging/media/hantro/hantro.h
> +++ b/drivers/staging/media/hantro/hantro.h
> @@ -36,6 +36,9 @@ struct hantro_codec_ops;
>  #define HANTRO_H264_DECODER	BIT(18)
>  #define HANTRO_DECODERS		0xffff0000
>  
> +#define HANTRO_G1_REV		0x6731
> +#define HANTRO_G2_REV		0x6732
> +
>  /**
>   * struct hantro_irq - irq handler and name
>   *
> @@ -170,6 +173,7 @@ hantro_vdev_to_func(struct video_device *vdev)
>   * @enc_base:		Mapped address of VPU encoder register for convenience.
>   * @dec_base:		Mapped address of VPU decoder register for convenience.
>   * @ctrl_base:		Mapped address of VPU control block.
> + * @core_hw_dec_rev	Runtime detected HW decoder core revision
>   * @vpu_mutex:		Mutex to synchronize V4L2 calls.
>   * @irqlock:		Spinlock to synchronize access to data structures
>   *			shared with interrupt handlers.
> @@ -189,6 +193,7 @@ struct hantro_dev {
>  	void __iomem *enc_base;
>  	void __iomem *dec_base;
>  	void __iomem *ctrl_base;
> +	u32 core_hw_dec_rev;
>  
>  	struct mutex vpu_mutex;	/* video_device lock */
>  	spinlock_t irqlock;
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index 0570047c7fa0..e1443c394f62 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -840,6 +840,8 @@ static int hantro_probe(struct platform_device *pdev)
>  	}
>  	vpu->enc_base = vpu->reg_bases[0] + vpu->variant->enc_offset;
>  	vpu->dec_base = vpu->reg_bases[0] + vpu->variant->dec_offset;
> +	/* by default decoder is G1 */
> +	vpu->core_hw_dec_rev = HANTRO_G1_REV;
>  

This is a write only variable.  :P  Fold it in with the patch that uses
it.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
