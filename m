Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C43327FBD
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 14:41:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9993B6F5C6;
	Mon,  1 Mar 2021 13:41:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wBpTKosrxK-F; Mon,  1 Mar 2021 13:41:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D6A476009C;
	Mon,  1 Mar 2021 13:41:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 43A951BF372
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 13:41:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 30C4083AA2
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 13:41:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PYuSe_Ptghwh for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 13:41:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 955608271A
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 13:41:21 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 121DdBVw024394;
 Mon, 1 Mar 2021 13:41:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=n199ZK0YWzIfZGzCcnz0Np0WLuJOLo8VMYdM/nuzSfk=;
 b=KbZVrzkuHlRFKAKDWvIcoTc7ni/o97dMNv5eDCxmEMVnuPTlY2YJ+JJPvKOkHSiw3XL5
 IHnZoPHdI60wgBqW/AEw0bZ9Ft8bcHpf/2lsKiJRCl9VQXE3iN77fkExb8KIdQuam5vC
 fqLsKmsNKlYyKogp2J12IG4HTLsGnxJxXBJoQ0gSq9MW2BW85gBfJeZUY31/VNqdTvlQ
 Hmb2+Jh3IC+pUz6hHIyz5wjsCupq6LO4nJ7o3ErUdZv+39FvxUwUJaFQn0klSpV5lhhR
 M/JxqrCeJu8zvc0n3XZzOqMN1TfbSpzBoc9Nfgn1vX8pVeLTRE7J/FT4iq8pN2gkjUuc HA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 36ybkb3y1p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 01 Mar 2021 13:41:19 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 121DesWl076538;
 Mon, 1 Mar 2021 13:41:18 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 36yynmqt36-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 01 Mar 2021 13:41:18 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 121DfGhR013342;
 Mon, 1 Mar 2021 13:41:17 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 01 Mar 2021 05:41:16 -0800
Date: Mon, 1 Mar 2021 16:41:09 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Candy Febriyanto <cfebriyanto@gmail.com>
Subject: Re: [PATCH 3/3] staging: rtl8723bs: os_dep: Replace sprintf with
 scnprintf
Message-ID: <20210301134109.GS2087@kadam>
References: <cover.1614603705.git.cfebriyanto@gmail.com>
 <502b559ee7d6a2736f10d8228002ac7780243cd1.1614603705.git.cfebriyanto@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <502b559ee7d6a2736f10d8228002ac7780243cd1.1614603705.git.cfebriyanto@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9909
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxscore=0 spamscore=0
 bulkscore=0 suspectscore=0 mlxlogscore=999 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103010114
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9909
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 impostorscore=0
 suspectscore=0 phishscore=0 bulkscore=0 mlxscore=0 lowpriorityscore=0
 clxscore=1011 mlxlogscore=999 adultscore=0 malwarescore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103010114
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
 Larry.Finger@lwfinger.net, hdegoede@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 01, 2021 at 08:13:54PM +0700, Candy Febriyanto wrote:
> @@ -5082,7 +5084,7 @@ static int rtw_ioctl_wext_private(struct net_device *dev, union iwreq_data *wrq_
>  		case IW_PRIV_TYPE_BYTE:
>  			/* Display args */
>  			for (j = 0; j < n; j++) {
> -				sprintf(str, "%d  ", extra[j]);
> +				scnprintf(str, sizeof(str), "%d  ", extra[j]);
>  				len = strlen(str);

You could save a little code and combine the two statements:

				len = scnprintf(str, sizeof(str), "%d  ", extra[j]);

For bonus points, you could write a Coccinelle script to look for that
pattern of calling strlen() on a freshly sprintfed string.

>  				output_len = strlen(output);
>  				if ((output_len + len + 1) > 4096) {

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
