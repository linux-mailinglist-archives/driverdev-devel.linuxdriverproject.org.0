Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2193C22ED0F
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jul 2020 15:21:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4112E204F0;
	Mon, 27 Jul 2020 13:21:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rYjurhB1TI1a; Mon, 27 Jul 2020 13:21:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1BB35204AB;
	Mon, 27 Jul 2020 13:20:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 323471BF322
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 13:20:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2B5F38769E
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 13:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jtneGicb2UbT for <devel@linuxdriverproject.org>;
 Mon, 27 Jul 2020 13:20:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5EF5087677
 for <devel@driverdev.osuosl.org>; Mon, 27 Jul 2020 13:20:53 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06RDGwXU093400;
 Mon, 27 Jul 2020 13:20:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=tBfbienhVFSWot4M/N0o6k7I0q1neTC6ZRkO3jt9YxE=;
 b=EJiZs3gmYFJSMJ8cxvB5Xmb/2h5Yxym0yaAVmJs55bYeNyjJkPMOTszpivd1/fx43EP5
 U3pnkTFxnsjk28H+0OErX1xacdpOWcaTPGDG72gTSzxJ0cm1Bhp75YfJMNNkuOH+5r2o
 F/rDEPMIfaQNjY/bgz1XHRdZySJRU+u06h2luoOyGa0VN2agNy9aaxn59M5FRHA9BNls
 jPLFaChGMkZalETtsw+lxurGpSOktjer19NnqQ2Xw4+8EZLG+0xPBNfPxCEZLyu4jYN1
 Ni2/6eSZg+l+2bGA3Mk/7E4K2E710UrIsCXChrbx1HNw7g0nDeCtDF4+4YHdimio2FZE wg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 32hu1j1f9b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 27 Jul 2020 13:20:52 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06RDIXhU147258;
 Mon, 27 Jul 2020 13:20:52 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 32hu5qvwd9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Jul 2020 13:20:52 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 06RDKpbg023514;
 Mon, 27 Jul 2020 13:20:51 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 27 Jul 2020 06:20:50 -0700
Date: Mon, 27 Jul 2020 16:20:43 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Juan Antonio Aldea-Armenteros <juant.aldea@gmail.com>
Subject: Re: [PATCH] media: atomisp-mt9m114: replace fixed function names
Message-ID: <20200727132042.GE1913@kadam>
References: <20200725081108.272643-1-juant.aldea@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200725081108.272643-1-juant.aldea@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9694
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0 bulkscore=0
 malwarescore=0 suspectscore=0 spamscore=0 mlxlogscore=999 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007270097
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9694
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 clxscore=1011
 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 phishscore=0 mlxlogscore=999 lowpriorityscore=0 impostorscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007270097
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
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 25, 2020 at 10:11:08AM +0200, Juan Antonio Aldea-Armenteros wrote:
> There are a couple of debug messages using hardcoded function names
> instead of the preferred __func__ magic constant.
> 
> Replace them:
> 
> WARNING: Prefer using '"%s...", __func__' to using 'misensor_rmw_reg', this function's name, in a string
> 215: FILE: ./media/atomisp/i2c/atomisp-mt9m114.c:215:
> +       v4l2_err(client, "misensor_rmw_reg error exit, read failed\n");
> 
> WARNING: Prefer using '"%s...", __func__' to using 'misensor_rmw_reg', this function's name, in a string
> 236: FILE: ./media/atomisp/i2c/atomisp-mt9m114.c:236:
> +       v4l2_err(client, "misensor_rmw_reg error exit, write failed\n");
> 
> Signed-off-by: Juan Antonio Aldea-Armenteros <juant.aldea@gmail.com>
> ---
>  drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c b/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c
> index 0d60918a9b19..54c24bc2061d 100644
> --- a/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c
> +++ b/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c
> @@ -212,7 +212,7 @@ misensor_rmw_reg(struct i2c_client *client, u16 data_length, u16 reg,
>  
>  	err = mt9m114_read_reg(client, data_length, reg, &val);
>  	if (err) {
> -		v4l2_err(client, "misensor_rmw_reg error exit, read failed\n");
> +		v4l2_err(client, "%s exit, read failed\n", __func__);

Did you intend to delete the word "error"?

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
