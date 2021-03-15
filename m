Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D17A033BB08
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 15:18:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAFAC83774;
	Mon, 15 Mar 2021 14:18:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SNyungZAsWxe; Mon, 15 Mar 2021 14:18:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 27B2083716;
	Mon, 15 Mar 2021 14:18:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 167771BF29D
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 14:18:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 127784B799
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 14:18:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z_f-FVokVtSM for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 14:17:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3E0CB4B601
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 14:17:59 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12FEBBl9063069;
 Mon, 15 Mar 2021 14:17:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=EnQKKTAbbRCvsi29pzEnOxOF1COgqCrCiwY2+UP0pyY=;
 b=n4dI6MXeY1KExOM3hQaHsy8AOsSRD8p2h3R+qk9i4LwEEFrQ6kzuOAg3/hk0e8S7sMlL
 HB6dwwc+xDTjUcVvvfsBHchooBlLBljXpZUVt3PkstkppMl5rdkHi+so8ETDWS+EL23e
 /bvpyQKnnBMwiDOO0Dcec7Dg0fm1JIRI86wmRUClK1g7cX7XsAVfkbb/iPFKlb4uOakG
 3SoQCJLke+29iqIirLP2DKWBbZHdNt5Qo1bPzyDJpYq+18NWKb5Wdw54jtBh1YKd5ADZ
 LrUl8U/RNWqbt4/lb9bRiF3C074JnAQQFFDsRlt0Vk6ReEI2NbRnxF34Wo0ogspfZzvg vQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 378nbm40ab-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 15 Mar 2021 14:17:58 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12FEFkjD128400;
 Mon, 15 Mar 2021 14:17:56 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 3797axqpk7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 15 Mar 2021 14:17:56 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 12FEHsqO032601;
 Mon, 15 Mar 2021 14:17:54 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 15 Mar 2021 07:17:54 -0700
Date: Mon, 15 Mar 2021 17:17:46 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Marco Cesati <marcocesati@gmail.com>
Subject: Re: [PATCH 02/33] staging: rtl8723bs: remove typedefs in rtw_mlme.h
Message-ID: <20210315141746.GP2087@kadam>
References: <20210312082638.25512-1-marco.cesati@gmail.com>
 <20210312082638.25512-3-marco.cesati@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210312082638.25512-3-marco.cesati@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9923
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0 bulkscore=0
 malwarescore=0 adultscore=0 mlxscore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103150103
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9923
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 impostorscore=0
 malwarescore=0 adultscore=0 mlxscore=0 clxscore=1015 mlxlogscore=999
 lowpriorityscore=0 phishscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103150102
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

On Fri, Mar 12, 2021 at 09:26:07AM +0100, Marco Cesati wrote:
> diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
> index 1567831caf91..ed6b03c25367 100644
> --- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
> +++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
> @@ -419,7 +419,7 @@ struct mlme_ext_info {
>  /*  The channel information about this channel including joining, scanning, and power constraints. */
>  typedef struct _RT_CHANNEL_INFO {
>  	u8 		ChannelNum;		/*  The channel number. */
> -	RT_SCAN_TYPE	ScanType;		/*  Scan type such as passive or active scan. */
> +	enum RT_SCAN_TYPE	ScanType;		/*  Scan type such as passive or active scan. */

Originally ChannelNum and ScanType were aligned but now the indenting is
whacky.  I think you did these patches with a script which is fine, but
always take a look over the over finished patch to double check by hand.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
