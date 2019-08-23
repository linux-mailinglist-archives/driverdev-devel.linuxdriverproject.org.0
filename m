Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A789B30D
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Aug 2019 17:10:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 319A186DF2;
	Fri, 23 Aug 2019 15:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uClSKAP-Vna5; Fri, 23 Aug 2019 15:10:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 09BCD86B23;
	Fri, 23 Aug 2019 15:10:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 85CBD1BF25B
 for <devel@linuxdriverproject.org>; Fri, 23 Aug 2019 15:10:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8272D86975
 for <devel@linuxdriverproject.org>; Fri, 23 Aug 2019 15:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cL-JhDFj_dRL for <devel@linuxdriverproject.org>;
 Fri, 23 Aug 2019 15:10:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr00046.outbound.protection.outlook.com [40.107.0.46])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E606F8693C
 for <devel@driverdev.osuosl.org>; Fri, 23 Aug 2019 15:10:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E7Ra3XcwfQP+XPAWxOmCopzW5Fmu5XI7/nPYdCRjV5AxkslJETBno274wTiPee+YpA0h7eUbfqF2iu35Mtx34DC9RI+izeQh++I6KtxcEcV0p+Wd5/MBkSAk94rMTkufVhBzEpKMlwEWL7CF5x7R37ejEPUSwQCOORca+l5n4NUI3heBXtjD7YKTb1H6Jgk+B75GTWtuvKMr5vLlomGoAOqzvdoMqD8IFaJnjvBgEqgknEAE4SK4V5GCnlzVnC73VBC02hvnPnUltl+mT3MRQc8B1943IAgKPDLJ2MAMjmYxAPvj9vVFgEvrJXnDCVw/v0G87hidmmwmESyoDbmTaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mM2YGIH1b0yAhKDVbUyg2+K6/XvCj6yRkV6iXZp5+bY=;
 b=V7GTbIMzornvr+tnWIR5ZXc0+aSv52m2W0cze+1ZY6fFE+lrUSl9UKUidikx+XFrMvR2yvEOPLPhaTLYRYwrmfOxVj2qoTDiLZFK1w918r5UR5Qrm9EPY87aXKvbYkZkCYcnngXJvz5oyQ0ZOieLIFyuFDyt1XIYXizJ2a3ARsesaCBnK9zAWyt/kIHsixV2S5/ALAl1cjAnppXk+ztlqrlrw+2azKjYZd5WebABHf4ARbcWXXn7FshP8N+c71yihgrneSxEyL9jz/ZOFosYiHbJmufh8I/LcJ++oKOpuT/rT04eYMnwnT/ySQ3L4dQN8ou1CXFgWjbAr2oEGbGG+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=itdev.co.uk; dmarc=pass action=none header.from=itdev.co.uk;
 dkim=pass header.d=itdev.co.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector2-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mM2YGIH1b0yAhKDVbUyg2+K6/XvCj6yRkV6iXZp5+bY=;
 b=iFfMTo5wtQUFIAns9krxSZLLFLjV0vKmA3qIbbkIYqR7mS3WyY0QHMHGl2XNo5LAbC+ETHpS2pDBtQ3wP6a2al1LXN4ZbqrjOfcwVSiEDmCnVTr4mg2/l5+6gSPl96M5X7G/raLHqlAio/z5pJxW0U02O2GanfOIgbmqiMW2Qng=
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com (52.133.15.143) by
 VI1PR08MB3312.eurprd08.prod.outlook.com (52.134.31.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Fri, 23 Aug 2019 14:55:46 +0000
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::586d:db76:56c3:51e5]) by VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::586d:db76:56c3:51e5%6]) with mapi id 15.20.2178.020; Fri, 23 Aug 2019
 14:55:45 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [PATCH] staging: vt6656: Use common error handling code in
 vnt_alloc_bufs()
Thread-Topic: [PATCH] staging: vt6656: Use common error handling code in
 vnt_alloc_bufs()
Thread-Index: AQHVWbbu5uhEbt5BlEGgbiFaMjR5MKcI0j0A
Date: Fri, 23 Aug 2019 14:55:45 +0000
Message-ID: <20190823145540.GA2536@qd-ubuntu>
References: <91e8a9b7-e79d-dafc-10b8-dd79eb59eff9@web.de>
In-Reply-To: <91e8a9b7-e79d-dafc-10b8-dd79eb59eff9@web.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0115.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:c::31) To VI1PR08MB3168.eurprd08.prod.outlook.com
 (2603:10a6:803:47::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [89.21.227.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b620ed57-c342-4be7-77c1-08d727d9f9c3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR08MB3312; 
x-ms-traffictypediagnostic: VI1PR08MB3312:
x-microsoft-antispam-prvs: <VI1PR08MB3312B05DE8302ADE51437EE7B3A40@VI1PR08MB3312.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0138CD935C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(39830400003)(136003)(346002)(396003)(376002)(366004)(199004)(189003)(66066001)(53936002)(25786009)(1076003)(316002)(14454004)(6436002)(44832011)(6506007)(6486002)(386003)(4326008)(6246003)(6916009)(66946007)(446003)(26005)(11346002)(476003)(66446008)(64756008)(66556008)(66476007)(54906003)(186003)(2906002)(9686003)(99286004)(52116002)(508600001)(486006)(305945005)(71190400001)(71200400001)(229853002)(256004)(33656002)(8676002)(102836004)(5660300002)(3846002)(81166006)(81156014)(8936002)(6116002)(6512007)(76176011)(33716001)(7736002)(86362001)(334744003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB3312;
 H:VI1PR08MB3168.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: avT6Jw14HzHdd+QQwU4fYd5nGDfM2ifyBtNA4RsVVYR35lus53wOnDviltvxQJ9gnz7AyNA8xMFy6V8VLoqjh4bF4RywcDs+u4n0NTvFp5QCY6evHqeZhG5o0IcR2MgHQW9Xeh8Y6kIp0+gNlV55npB5IkiXon+o4va1aQksVqNMe2YhR0mscOlE3oFws99kzCmTQz4Tzw1uBtLKmb3pVd1Uh20snH0tkeeDaf0gnSR2MNsyK/2FXCKj4FQql7QK+cPeKcNHp77YAs2AWl24cnU7H1bVBIr2jblhp+1WCsruihJBSkEh+pbnn0HaBiMpm1E6ztsMSjADmqdkXXsB1Bu/j9Kfg1q0t9FuWYVClsJa8utQJ4Xxf4dbjD8ogaTctcpDAB/WYiSfXLuNE+GXdbVbQmc+h1SnXp5HOBgl9BQ=
x-ms-exchange-transport-forked: True
Content-ID: <F80DB4D0BA6D474C82A0EFABD86EB8BA@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: b620ed57-c342-4be7-77c1-08d727d9f9c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2019 14:55:45.8801 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0eCCJJ4ZdgJXXr/JVaG55QP2ae8zz59p3LN+sj0LvS9ZAKUGyDARrgXvZUUH69nthmOnf7Le6FvipPg5eJH0KrvKABuFsEn61oK+Tmr3uIo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3312
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 Forest Bond <forest@alittletooquiet.net>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 23, 2019 at 03:30:11PM +0200, Markus Elfring wrote:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Fri, 23 Aug 2019 15:15:41 +0200
> 
> Adjust jump targets so that a bit of exception handling can be better
> reused at the end of this function.
> 
> This issue was detected by using the Coccinelle software.
> 
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
> ---
>  drivers/staging/vt6656/main_usb.c | 46 +++++++++++++------------------
>  1 file changed, 19 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> index 856ba97aec4f..d9f14da37bbc 100644
> --- a/drivers/staging/vt6656/main_usb.c
> +++ b/drivers/staging/vt6656/main_usb.c
> @@ -443,10 +443,8 @@ static int vnt_alloc_bufs(struct vnt_private *priv)
> 
>  	for (ii = 0; ii < priv->num_tx_context; ii++) {
>  		tx_context = kmalloc(sizeof(*tx_context), GFP_KERNEL);
> -		if (!tx_context) {
> -			ret = -ENOMEM;
> -			goto free_tx;
> -		}
> +		if (!tx_context)
> +			goto e_nomem_tx;
> 
>  		priv->tx_context[ii] = tx_context;
>  		tx_context->priv = priv;
> @@ -454,20 +452,16 @@ static int vnt_alloc_bufs(struct vnt_private *priv)
> 
>  		/* allocate URBs */
>  		tx_context->urb = usb_alloc_urb(0, GFP_KERNEL);
> -		if (!tx_context->urb) {
> -			ret = -ENOMEM;
> -			goto free_tx;
> -		}
> +		if (!tx_context->urb)
> +			goto e_nomem_tx;
> 
>  		tx_context->in_use = false;
>  	}
> 
>  	for (ii = 0; ii < priv->num_rcb; ii++) {
>  		priv->rcb[ii] = kzalloc(sizeof(*priv->rcb[ii]), GFP_KERNEL);
> -		if (!priv->rcb[ii]) {
> -			ret = -ENOMEM;
> -			goto free_rx_tx;
> -		}
> +		if (!priv->rcb[ii])
> +			goto e_nomem_rx;
> 
>  		rcb = priv->rcb[ii];
> 
> @@ -475,16 +469,12 @@ static int vnt_alloc_bufs(struct vnt_private *priv)
> 
>  		/* allocate URBs */
>  		rcb->urb = usb_alloc_urb(0, GFP_KERNEL);
> -		if (!rcb->urb) {
> -			ret = -ENOMEM;
> -			goto free_rx_tx;
> -		}
> +		if (!rcb->urb)
> +			goto e_nomem_rx;
> 
>  		rcb->skb = dev_alloc_skb(priv->rx_buf_sz);
> -		if (!rcb->skb) {
> -			ret = -ENOMEM;
> -			goto free_rx_tx;
> -		}
> +		if (!rcb->skb)
> +			goto e_nomem_rx;
> 
>  		rcb->in_use = false;
> 
> @@ -495,21 +485,23 @@ static int vnt_alloc_bufs(struct vnt_private *priv)
>  	}
> 
>  	priv->interrupt_urb = usb_alloc_urb(0, GFP_KERNEL);
> -	if (!priv->interrupt_urb) {
> -		ret = -ENOMEM;
> -		goto free_rx_tx;
> -	}
> +	if (!priv->interrupt_urb)
> +		goto e_nomem_rx;
> 
>  	priv->int_buf.data_buf = kmalloc(MAX_INTERRUPT_SIZE, GFP_KERNEL);
> -	if (!priv->int_buf.data_buf) {
> -		ret = -ENOMEM;
> +	if (!priv->int_buf.data_buf)
>  		goto free_rx_tx_urb;
> -	}
> 
>  	return 0;
> 
> +e_nomem_tx:
> +	ret = -ENOMEM;
> +	goto free_tx;
> +
>  free_rx_tx_urb:
>  	usb_free_urb(priv->interrupt_urb);
> +e_nomem_rx:
> +	ret = -ENOMEM;
>  free_rx_tx:
>  	vnt_free_rx_bufs(priv);
>  free_tx:
> --
> 2.23.0
> 

Your patch remove redundant code, which is fine. However, and IMHO, the
code you changed was simple enough to be understand quickly. I think replacing
it with a crossed goto (even if it remove redundant code) might not be the best
option.

A solution might be to move the second loop to the top of the function so
you should be able to replace the end of the cleanup calls with:

enomem:
	ret = -ENOMEM;
free_rx:
	vnt_free_rx_bufs(priv);
	return ret;

This way, only a failed call to vnt_submit_rx_urb() should jump to
free_rx, another failed call should jump to enomem or previously defined
label, so we can correctly forward errors. With such solution it might
be worth adding a comment to describe that all error should be ENOMEM
except for vnt_submit_rx_urb(). Does that looks good to you?

Regards,
Quentin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
