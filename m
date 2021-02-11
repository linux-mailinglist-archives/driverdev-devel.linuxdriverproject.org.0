Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 025423185EF
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 08:57:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A143187551;
	Thu, 11 Feb 2021 07:57:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PmN0x6tmM0Cu; Thu, 11 Feb 2021 07:57:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 21D038752D;
	Thu, 11 Feb 2021 07:57:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6CBFC1BF9B5
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 07:57:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5B3B16F483
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 07:57:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CUON9HagKDk5 for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 07:57:33 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 8F4C26F501; Thu, 11 Feb 2021 07:57:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 43D556F483
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 07:57:32 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11B7uORR012915;
 Thu, 11 Feb 2021 07:57:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=kiJNzaZF4pw+YTlqD1Smavke2NjfLZS+kTOUdQog8Zg=;
 b=UuqFp5ppXhwG5ouO/SsCBkIeSrx0Vqy1J4J2jB6vVe8B5D+o9WkuPdzTVwJCNSE6hTTD
 t8r3jqs1XneKepuCxgqwAoC8DSmbRX9sEvf5Cn1hxTlPsFlCg+0o94lj5ddn5SWBCY4H
 3+D2Nf0cgDKrJYsHhI0lTlIvf/0DGUxPYIuSCxaN+RqqqxjBljehD3SRn+qV7OVAlrVF
 a15MwDAV4lO2OtYjGubWGnlHQi/bsHux64RyqWHKUJdQpvzniQRC3n/8qLbL2D+b7S/Q
 zNyVoSUVEAlJhPVvfNZa8BtclPfUQN8gc45WmIGgnr6Iqq150WkI9EGsMAAwChLEgdsN sQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 36m4upvynm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 11 Feb 2021 07:57:26 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11B7tVE3142935;
 Thu, 11 Feb 2021 07:57:24 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 36j513qeu0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 11 Feb 2021 07:57:24 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 11B7vNID007258;
 Thu, 11 Feb 2021 07:57:23 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 10 Feb 2021 23:57:23 -0800
Date: Thu, 11 Feb 2021 10:57:15 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: karthik alapati <mail@karthek.com>
Subject: Re: [PATCH] staging: rtl8723bs: remove obsolete commented out code
Message-ID: <20210211075715.GD2696@kadam>
References: <YCQvsdlnbnQN4Ruf@karthik-strix-linux.karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCQvsdlnbnQN4Ruf@karthik-strix-linux.karthek.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9891
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0 adultscore=0
 mlxlogscore=999 phishscore=0 spamscore=0 suspectscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102110071
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9891
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 mlxscore=0
 mlxlogscore=999 spamscore=0 impostorscore=0 malwarescore=0 clxscore=1015
 suspectscore=0 adultscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102110071
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
 linux-kernel@vger.kernel.org, Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 11, 2021 at 12:40:41AM +0530, karthik alapati wrote:
> @@ -867,10 +845,8 @@ static void PHY_HandleSwChnlAndSetBW8723B(
>  	if (bSetBandWidth)
>  		pHalData->bSetChnlBW = true;
>  
> -	if (!pHalData->bSetChnlBW && !pHalData->bSwChnl) {
> -		/* DBG_871X("<= PHY_HandleSwChnlAndSetBW8812: bSwChnl %d, bSetChnlBW %d\n", pHalData->bSwChnl, pHalData->bSetChnlBW); */
> +	if (!pHalData->bSetChnlBW && !pHalData->bSwChnl)
>  		return;
> -	}

In this case, the + line is correct.  Good job.

>  
>  
>  	if (pHalData->bSwChnl) {
> @@ -929,9 +905,7 @@ void PHY_SetSwChnlBWMode8723B(
>  	u8 Offset80
>  )
>  {
> -	/* DBG_871X("%s() ===>\n", __func__); */
>  
>  	PHY_HandleSwChnlAndSetBW8723B(Adapter, true, true, channel, Bandwidth, Offset40, Offset80, channel);
>  
> -	/* DBG_871X("<==%s()\n", __func__); */

Please delete the blank lines as well.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
