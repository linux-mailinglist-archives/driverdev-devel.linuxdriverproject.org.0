Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDC420C347
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 19:21:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 67A9020C92;
	Sat, 27 Jun 2020 17:21:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id waR0OHYfD5XB; Sat, 27 Jun 2020 17:21:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3ADDC204B8;
	Sat, 27 Jun 2020 17:21:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8253C1BF421
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 17:21:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7EF9E8665F
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 17:21:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZQIQinaC_Ulb for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 17:21:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 00746863F2
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 17:21:40 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05RHIY2d000973;
 Sat, 27 Jun 2020 17:21:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=LUgv2ai4XEX3a2xqOW2NrWKmstTZTlq2pfjO0fUqyck=;
 b=E0r9PeddBLS9PhOBIj1dpbDd19j1A/9pL4r4I/EsN6Z5VXOK3j2PegkLsL33gs4ZlepL
 lTGgbfiwYnmAoTy22aOIDoYFkRg3GysGA/U9SQ+AwJHj2m66hbC3qIOoU5p4f6efApAN
 ObJvEoKe1kD+uqz9pPnkEheMCp6DAks16H8Czp2/l9A4tY/Y8F8IEscwrERS/V+zfJwI
 7WQdJvKEBA3D4HOMM0T2MK1VExaFw+xFI3OodPcI7GW1F0SQztFtB4lktn7JrFJYd+2d
 LEW+0yXD2t67Im3C/NyIvOCtvsgDpZCNjHoBiVlzBtRgTvYYbHfWd+8iDhNbcjPaU5eq GA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 31wxrms9rs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sat, 27 Jun 2020 17:21:39 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05RHEWAJ157563;
 Sat, 27 Jun 2020 17:21:39 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 31wwx1879j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 27 Jun 2020 17:21:39 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05RHLagF007667;
 Sat, 27 Jun 2020 17:21:37 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sat, 27 Jun 2020 10:21:36 -0700
Date: Sat, 27 Jun 2020 20:21:30 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Michael Straube <straube.linux@gmail.com>
Subject: Re: [PATCH] staging: rtl8188eu: remove unnecessary comments in
 hal8188e_phy_cfg.h
Message-ID: <20200627172130.GK2549@kadam>
References: <20200627151544.11251-1-straube.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200627151544.11251-1-straube.linux@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9665
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 suspectscore=0
 adultscore=0 mlxscore=0 spamscore=0 bulkscore=0 malwarescore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006270125
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9665
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 mlxlogscore=999
 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 phishscore=0 adultscore=0 cotscore=-2147483648
 lowpriorityscore=0 suspectscore=0 spamscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006270125
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
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jun 27, 2020 at 05:15:44PM +0200, Michael Straube wrote:
> @@ -145,21 +138,7 @@ struct bb_reg_def {
>  				 */
>  };
>  
> -/*------------------------------Define structure----------------------------*/
> -
> -
> -/*------------------------Export global variable----------------------------*/
> -/*------------------------Export global variable----------------------------*/
> -
> -
> -/*------------------------Export Marco Definition---------------------------*/
> -/*------------------------Export Marco Definition---------------------------*/
> -
> -
> -/*--------------------------Exported Function prototype---------------------*/
> -/*  */
>  /*  BB and RF register read/write */

You can probably delete this line as well.  ;)

> -/*  */
>  
>  /* Read initi reg value for tx power setting. */
>  void rtl8192c_PHY_GetHWRegOriginalValue(struct adapter *adapter);

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
