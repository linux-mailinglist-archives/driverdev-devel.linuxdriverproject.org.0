Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D65225D17A
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Sep 2020 08:35:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A4F386E57;
	Fri,  4 Sep 2020 06:35:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BY59ULmMYgHA; Fri,  4 Sep 2020 06:35:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 569A386DC4;
	Fri,  4 Sep 2020 06:35:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 030761BF5EA
 for <devel@linuxdriverproject.org>; Fri,  4 Sep 2020 06:35:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F3CBE874F4
 for <devel@linuxdriverproject.org>; Fri,  4 Sep 2020 06:35:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UBrSHBo5Dbwm for <devel@linuxdriverproject.org>;
 Fri,  4 Sep 2020 06:35:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B9432874C2
 for <devel@driverdev.osuosl.org>; Fri,  4 Sep 2020 06:35:22 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0846YLib093171;
 Fri, 4 Sep 2020 06:35:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=/nEvMcYcQDU1SKp7DuIR7lsg8jaYz/VuKkA3WV3EDT8=;
 b=p4391RoVK+UFuMMBCRTMMxJEX+uWNb1T2I8FsdceBrSbeL/PuwbIruCdw6+XxofjYboS
 NWOW8KR4EDDSsq3wMNFqZqb4zxY3CvSGDLu7SRuK8PIbR+Ss4zGKVDwaqbKCq852YSE8
 23P/jweDHvIyxKC6JUktcjLGxQpJQhRAZNAv5pq1U2kc4H3fXZtMAsx304Hs51TBetUT
 plmoIlem1MdZ4gIDh6lov39y/XoM6Vtca8t31E5aHDNQJvYTzWbGoAnJhshAc9k7B8bf
 6KQ0vsvr3HuABh+/j0TtnbppYhVxeL2S342asqSk6GefliY0Cf4VqorhXPKdUIz+UA73 nQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 337eymmqn7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 04 Sep 2020 06:35:21 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0846ZJgt053408;
 Fri, 4 Sep 2020 06:35:21 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 3380kt0ay5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 04 Sep 2020 06:35:21 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0846ZEJr007484;
 Fri, 4 Sep 2020 06:35:16 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 03 Sep 2020 23:35:14 -0700
Date: Fri, 4 Sep 2020 09:35:07 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Alex Dewar <alex.dewar90@gmail.com>
Subject: Re: [PATCH v2] staging: media: atomisp: Fix error path in
 lm3554_probe()
Message-ID: <20200904063506.GJ8321@kadam>
References: <20200903173843.GF8299@kadam>
 <20200903182502.709300-1-alex.dewar90@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200903182502.709300-1-alex.dewar90@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9733
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 spamscore=0 adultscore=0
 mlxscore=0 suspectscore=0 malwarescore=0 mlxlogscore=999 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009040059
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9733
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 adultscore=0
 priorityscore=1501 phishscore=0 mlxlogscore=999 mlxscore=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 bulkscore=0 impostorscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009040059
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
Cc: devel@driverdev.osuosl.org, Alan Cox <alan@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 03, 2020 at 07:24:51PM +0100, Alex Dewar wrote:
> +
> +	ret = atomisp_register_i2c_module(&flash->sd, NULL, LED_FLASH);
> +	if (!ret)
> +		return 0;

Ugh!!!  This is a a special case of the "success handling instead of
failure handling" anti-pattern where the last condition in the function
is different.  I just fixed a bug caused by this on Wed.

https://www.spinics.net/lists/netdev/msg680226.html

But it doesn't cause any problems here so whatever...

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
