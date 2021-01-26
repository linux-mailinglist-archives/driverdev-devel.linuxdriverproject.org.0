Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D7B3045BF
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Jan 2021 18:54:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5B03F204D1;
	Tue, 26 Jan 2021 17:54:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pcu5+lARqQvS; Tue, 26 Jan 2021 17:54:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 50C30204AF;
	Tue, 26 Jan 2021 17:54:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 24F261BF2EF
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 17:54:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 215BE85701
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 17:54:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y8K4OG-fDDi8 for <devel@linuxdriverproject.org>;
 Tue, 26 Jan 2021 17:54:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8775C8558A
 for <devel@driverdev.osuosl.org>; Tue, 26 Jan 2021 17:54:01 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10QHroMI193769;
 Tue, 26 Jan 2021 17:53:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=gqTIlCrmkR4s8Y9TJxhSa5y/C1OAm/ZoUsX5inr5tbY=;
 b=CWzvj3hwc893o1b+uL+P4wzRrDrsyh0Y8Kb8rU2zaad5fVfTdmLaOq3O3wo2riArXvhU
 cl0xMZ0o4Ms0OVyNP45Z3DW26w+iEy3bwF6DFOPTQr1Yd4yVS21TyRs4p6bDF7eRfIyB
 XEBm16sO8DHB6eMXvJGqRL4jkj1XoNEtsde1G3DYpEKUoIpkmBvGNNtTLrycfZx0eLJm
 x9CfOqcWZgwCCqOjF5sJSnS7EmHug0t8+vOWxou+lvaoKw4qSLJNNy0G71V5lYsUOtbD
 txbO4IkuwTnN1y20Opt8a1mAC03OUGwRqc0oDuL7Q8A+rew2s1137oH5CytIFO9fi2BL GA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 368b7quax0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 26 Jan 2021 17:53:58 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10QHjekl154723;
 Tue, 26 Jan 2021 17:51:57 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 368wjrevms-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 26 Jan 2021 17:51:56 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 10QHpoWG017246;
 Tue, 26 Jan 2021 17:51:50 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 26 Jan 2021 09:51:49 -0800
Date: Tue, 26 Jan 2021 20:51:41 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Carlis <zhangxuezhi3@gmail.com>
Subject: Re: [PATCH v4] fbtft: add tearing signal detect
Message-ID: <20210126175141.GZ2696@kadam>
References: <1611664835-150687-1-git-send-email-zhangxuezhi3@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1611664835-150687-1-git-send-email-zhangxuezhi3@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9876
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 suspectscore=0
 adultscore=0 mlxscore=0 malwarescore=0 spamscore=0 mlxlogscore=999
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101260092
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9876
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0 phishscore=0
 adultscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 mlxscore=0 clxscore=1015 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101260093
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 mh12gx2825@gmail.com, gregkh@linuxfoundation.org,
 oliver.graute@kococonnector.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, sbrivio@redhat.com, colin.king@canonical.com,
 zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jan 26, 2021 at 08:40:35PM +0800, Carlis wrote:
> @@ -82,6 +111,29 @@ enum st7789v_command {
>   */
>  static int init_display(struct fbtft_par *par)
>  {
> +	int rc;
> +	struct device *dev = par->info->device;
> +
> +	par->gpio.te = devm_gpiod_get_index_optional(dev, "te", 0, GPIOD_IN);
> +	if (par->gpio.te) {

I explained in my earlier review that devm_gpiod_get_index_optional()
can return error pointers...  There was quite a bit of detail about how
to handle this correctly in my earlier review, but I think you might
not have noticed it.  Please read it again.

> +		init_completion(&spi_panel_te);
> +		mutex_init(&te_mutex);
> +		rc = devm_request_irq(dev,
> +				      gpiod_to_irq(par->gpio.te),
> +				     spi_panel_te_handler, IRQF_TRIGGER_RISING,
> +				     "TE_GPIO", par);
> +		if (rc) {
> +			pr_err("TE request_irq failed.\n");
> +			devm_gpiod_put(dev, par->gpio.te);
> +			par->gpio.te = NULL;
> +		} else {
> +			disable_irq_nosync(gpiod_to_irq(par->gpio.te));
> +			pr_info("TE request_irq completion.\n");
> +		}
> +	} else {
> +		pr_err("%s:%d, TE gpio not specified\n",
> +		       __func__, __LINE__);
> +	}

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
