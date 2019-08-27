Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A959E5B4
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 12:31:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3083986916;
	Tue, 27 Aug 2019 10:31:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OVVRCa00_PmD; Tue, 27 Aug 2019 10:31:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 057DC868C7;
	Tue, 27 Aug 2019 10:31:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4B4A31BF3E3
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 10:31:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4810B868BC
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 10:31:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MRvOER9G1IQ5 for <devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 10:31:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A174E868B6
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 10:31:48 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7RAT0RO058815;
 Tue, 27 Aug 2019 10:31:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=oGYQP2VZn2SCFbDq3nx+ZjXzvwaVi7rnVe0kqrcJ4sk=;
 b=iN4b2rHoaX1ztLEVaoimZsIur8Dp1y0OTBD3QFj9cnzn8UxR4zuXHtm4RJ7fBz2ICt71
 N2fbBE1n3y5cHk+B0W7YFO3Bk9xLEc9WkTLNfgLSo/RrPrzCwpb8VQC3vvcGJzSE/VHX
 Ii9mbL1zzJ4L0otEMxs54yVhJIUCYqID0nE4AXbgC8ddoDe6nuy73iSRpCabWVXNZ4lA
 9+HYR0/nB0B+bPtAkMv71HJIIWZKCFjhW6QcnpM7UwV8A8arQ2LnAH9Z2ymrVoYtnxRH
 2a11nN6OClPOD29sXdS5YoBEQW0KSFKv4rxfmpkPpqJfn1qPfcS/wTyhUbfbjkLH7uP9 RA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2un2570914-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Aug 2019 10:31:45 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7RASxEN027397;
 Tue, 27 Aug 2019 10:31:45 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 2umhu8jwua-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Aug 2019 10:31:45 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x7RAVgcP005510;
 Tue, 27 Aug 2019 10:31:43 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 27 Aug 2019 03:31:41 -0700
Date: Tue, 27 Aug 2019 13:31:34 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Ivan Safonov <insafonov@gmail.com>
Subject: Re: [PATCH] r8188eu: use skb_put_data instead of skb_put/memcpy pair
Message-ID: <20190827103134.GC23584@kadam>
References: <4c9e1e66-5ffc-c04b-9ea8-39cec5fd9b2a@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4c9e1e66-5ffc-c04b-9ea8-39cec5fd9b2a@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9361
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908270119
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9361
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908270119
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sanjana Sanikommu <sanjana99reddy99@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 Vatsala Narang <vatsalanarang@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Aug 25, 2019 at 11:48:58PM +0300, Ivan Safonov wrote:
> skb_put_data is shorter and clear.
> 

Please don't start the commit message in the middle of a sentence.  It
often gets split from the start of the sentence.  See how it looks here.
https://marc.info/?l=linux-driver-devel&m=156676594611401&w=2


> Signed-off-by: Ivan Safonov <insafonov@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_recv.c        | 6 +-----
>  drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c | 3 +--
>  2 files changed, 2 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c
> b/drivers/staging/rtl8188eu/core/rtw_recv.c
> index 620da6c003d8..d4278361e002 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
> @@ -1373,11 +1373,7 @@ static struct recv_frame *recvframe_defrag(struct
> adapter *adapter,
>                 /* append  to first fragment frame's tail (if privacy frame,
> pull the ICV) */
>                 skb_trim(prframe->pkt, prframe->pkt->len -
> prframe->attrib.icv_len);


Your email client corrupted the patch so it can't be applied.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
