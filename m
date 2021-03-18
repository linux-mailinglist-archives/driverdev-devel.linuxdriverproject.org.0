Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0346340543
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 13:16:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E42AF4EDFB;
	Thu, 18 Mar 2021 12:16:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iBSC-r8uhopD; Thu, 18 Mar 2021 12:16:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D5774ED1F;
	Thu, 18 Mar 2021 12:16:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3B37F1BF2CE
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 12:16:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 28B164ED1F
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 12:16:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JH0coCsFxhbU for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 12:16:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3EA5E4ED1B
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 12:16:16 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12ICDfSS065240;
 Thu, 18 Mar 2021 12:16:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=fftugvKswGsY52z7s28jWI7RlDL8NbaW3lwRm9GxlTI=;
 b=XUpbxXLfwDZh8tI7Jr+gKFBvONVTiAAAY7gCJlJ62B2zc19u/NGU6ZO6x2e33s3YgtP1
 9N4/E1mH18cCu1jQqfVcKznfxiKDuV5H++2TRFx/USKcTSuOAXg3vdeviRmrWf3OjiNP
 +m8R3bAS3qb9k+mhg03vDqtVPNF5IuCrbcXnZNN812p6x9xc0TX8F/YBqlDAbAhyK7eP
 5Up7cIezjqWzSFE2a4Cl02FbwN4f/owZJ1f9vUOJN9DHo0ZTwmF8DZElsQl+UNagmXbi
 MTTzNmMB59MNyvbriwQd3TW+Aj3s5FCjBDQutJujQLIedUaUNf2fmRJbOZuhesfJ1ckR 9A== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 378p1ny87r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Mar 2021 12:16:15 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12ICA67Z014615;
 Thu, 18 Mar 2021 12:16:13 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 3797b2uv3e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Mar 2021 12:16:13 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 12ICGC5X025139;
 Thu, 18 Mar 2021 12:16:12 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 18 Mar 2021 12:16:11 +0000
Date: Thu, 18 Mar 2021 15:16:04 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Marco Cesati <marcocesati@gmail.com>
Subject: Re: [PATCH 01/43] Staging: rtl8723bs: fix names in rtw_mlme.h
Message-ID: <20210318121604.GE2087@kadam>
References: <20210317222130.29528-1-marcocesati@gmail.com>
 <20210317222130.29528-2-marcocesati@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210317222130.29528-2-marcocesati@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9926
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0 bulkscore=0
 malwarescore=0 adultscore=0 mlxscore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103180094
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9926
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 suspectscore=0 adultscore=0
 spamscore=0 clxscore=1015 phishscore=0 malwarescore=0 priorityscore=1501
 bulkscore=0 mlxlogscore=999 lowpriorityscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103180094
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
 Larry Finger <Larry.Finger@lwfinger.net>, Hans de Goede <hdegoede@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Mar 17, 2021 at 11:20:48PM +0100, Marco Cesati wrote:
> diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme.h b/drivers/staging/rtl8723bs/include/rtw_mlme.h
> index 1ebc1e183381..ffcceb1fdde6 100644
> --- a/drivers/staging/rtl8723bs/include/rtw_mlme.h
> +++ b/drivers/staging/rtl8723bs/include/rtw_mlme.h
> @@ -81,13 +81,13 @@ enum dot11AuthAlgrthmNum {
>  };
>  
>  /*  Scan type including active and passive scan. */
> -enum RT_SCAN_TYPE {
> +enum rt_scan_type {
>  	SCAN_PASSIVE,
>  	SCAN_ACTIVE,
>  	SCAN_MIX,
>  };
>  
> -enum  _BAND {
> +enum  _band {

_band is a bad name.

>  	GHZ24_50 = 0,
>  	GHZ_50,
>  	GHZ_24,

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
