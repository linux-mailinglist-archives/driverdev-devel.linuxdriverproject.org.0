Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D163320755A
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jun 2020 16:12:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C338D22D10;
	Wed, 24 Jun 2020 14:12:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uqnzkFn1dz8F; Wed, 24 Jun 2020 14:12:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EF9FA228E2;
	Wed, 24 Jun 2020 14:12:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D53E21BF5A4
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 14:12:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8908C1FCA0
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 14:12:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lYsPuPgGE22L for <devel@linuxdriverproject.org>;
 Wed, 24 Jun 2020 14:12:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id D488D22882
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 14:12:03 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05OEBwC7006530;
 Wed, 24 Jun 2020 14:12:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=tZbJARBoBOEe+Fn51mD/p0NNYyeLkR1+TWw+J8vnbyY=;
 b=xSoC32Tmdso9FbJx1huDnOr2Z4vUsuBkNth1U43gz/XWKNUfMobufb7CGtQP1Z3s6bOV
 ZsezNNN99SbGhLlDsfaNPYZo3sHLNzMGe8XCiq+fmt/+b5r9vRgV+aAcILVYxgQK80vJ
 OJQc1Hau2Tos1Y8KhkTBm1z5V0nodK2OLb4FsxL4ZnYqmG7mUMTdCQtihCHNu0nPkovb
 qocZX70G533YHQm5xHjuZgG+qoqsb1cRRf9l17A7xLfTL2Jav8IRt7KvjbaYd+UXDYgz
 G3AMYATZ3Wr4Lz2ISma63y6biRwrMH/Pwknzzsnjuo3TRaJEfYmQET1V+bpfmqyNH8Xt Ng== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 31uustu3gy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 24 Jun 2020 14:12:01 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05OE8IiG098287;
 Wed, 24 Jun 2020 14:12:00 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 31uur7e5ag-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 24 Jun 2020 14:12:00 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05OEBqRE021959;
 Wed, 24 Jun 2020 14:11:53 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 24 Jun 2020 14:11:52 +0000
Date: Wed, 24 Jun 2020 17:11:41 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH 15/50] staging: vchi: Unify struct shim_service and
 struct vchi_service_handle
Message-ID: <20200624141141.GA30990@kadam>
References: <20200623164235.29566-1-nsaenzjulienne@suse.de>
 <20200623164235.29566-16-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200623164235.29566-16-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9662
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 spamscore=0 malwarescore=0
 suspectscore=2 mlxlogscore=999 adultscore=0 phishscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006240102
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9662
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 bulkscore=0
 cotscore=-2147483648 malwarescore=0 mlxscore=0 clxscore=1011
 lowpriorityscore=0 mlxlogscore=999 phishscore=0 priorityscore=1501
 spamscore=0 impostorscore=0 adultscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006240103
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, laurent.pinchart@ideasonboard.com,
 kernel-list@raspberrypi.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 23, 2020 at 06:42:01PM +0200, Nicolas Saenz Julienne wrote:
> @@ -437,12 +432,10 @@ static void service_free(struct shim_service *service)
>  
>  int32_t vchi_service_open(struct vchiq_instance *instance,
>  	struct service_creation *setup,
> -	struct vchi_service_handle **handle)
> +	struct vchi_service **service)
>  {
> -	struct shim_service *service = service_alloc(instance, setup);
> -
> -	*handle = (struct vchi_service_handle *)service;
>  
> +	*service = service_alloc(instance, setup);
>  	if (service) {

This should be checking "*service".

>  		struct vchiq_service_params params;
>  		enum vchiq_status status;
> @@ -450,27 +443,25 @@ int32_t vchi_service_open(struct vchiq_instance *instance,
>  		memset(&params, 0, sizeof(params));
>  		params.fourcc = setup->service_id;
>  		params.callback = shim_callback;
> -		params.userdata = service;
> +		params.userdata = *service;
>  		params.version = setup->version.version;
>  		params.version_min = setup->version.version_min;
>  
>  		status = vchiq_open_service(instance, &params,
> -			&service->handle);
> +			&((*service)->handle));
>  		if (status != VCHIQ_SUCCESS) {
> -			service_free(service);
> -			service = NULL;
> -			*handle = NULL;
> +			service_free(*service);
> +			*service = NULL;
>  		}
>  	}
>  
> -	return service ? 0 : -1;
> +	return *service ? 0 : -1;
>  }
>  EXPORT_SYMBOL(vchi_service_open);
>  

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
