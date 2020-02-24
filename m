Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 566B316A4E0
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Feb 2020 12:28:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9355486FAD;
	Mon, 24 Feb 2020 11:27:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fnPL9BIviQSj; Mon, 24 Feb 2020 11:27:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CFCD886C7A;
	Mon, 24 Feb 2020 11:27:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 06E791BF2F1
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 11:27:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 017A482F92
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 11:27:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SkJnBKucwSRK for <devel@linuxdriverproject.org>;
 Mon, 24 Feb 2020 11:27:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4D30282835
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 11:27:55 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01OBRZBm049053;
 Mon, 24 Feb 2020 11:27:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=qaLjDAIw6mSX2sA4FzFmvfhX3ybm6asvNIXeCFRRclQ=;
 b=IURSZ7DxCuLj7ateYVeAPowimphunG2NcuDv8JhvS9K+KT4VIjSQqihH2SuWtlumEA67
 OdGrFPFn72SUR1XpqaRQNlfpmf1oJUeQ3TLAlFGahGZ9ZBaCmaj69rHRKp2SwwnsFF3d
 0q0B4tvXZ2a7bkrh3h6M0Ue6Iu1iie5SAZAl+PSccntosGx0FYK8KBy9rv0gv1PaCznL
 5KMcpPtzT7APSVdgExiAvBkopTRbPw6j+a03uIARSGwoaJPev0wiUUQXycJBsQ3yErqI
 12SSKIs9BRxUO2AERQLrJIgYnpAnGzOmg4+q4Qw73kZpzNHc61AVvi1Mly9XH98o9KQm aA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2ybvr4k0ey-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Feb 2020 11:27:47 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01OBLsUx066158;
 Mon, 24 Feb 2020 11:27:46 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2ybe111758-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Feb 2020 11:27:46 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 01OBRimX031221;
 Mon, 24 Feb 2020 11:27:44 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 24 Feb 2020 03:27:43 -0800
Date: Mon, 24 Feb 2020 14:27:35 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Walter Harms <wharms@bfs.de>
Subject: Re: [PATCH] staging: rtl8723bs: core: remove redundant zero'ing of
 counter variable k
Message-ID: <20200224112735.GC3286@kadam>
References: <20200223152840.418439-1-colin.king@canonical.com>
 <5f875f84e6014d2bb5b78f71dc2831a2@bfs.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5f875f84e6014d2bb5b78f71dc2831a2@bfs.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9540
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0
 suspectscore=0 malwarescore=0 phishscore=0 bulkscore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002240096
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9540
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0
 clxscore=1011 adultscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 mlxscore=0 impostorscore=0 suspectscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002240097
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Colin King <colin.king@canonical.com>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 24, 2020 at 11:07:55AM +0000, Walter Harms wrote:
> diff --git a/drivers/staging/rtl8723bs/core/rtw_efuse.c b/drivers/staging/rtl8723bs/core/rtw_efuse.c
> index 3b8848182221..bdb6ff8aab7d 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_efuse.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_efuse.c
> @@ -244,10 +244,8 @@ u16        Address)
>                 while (!(Bytetemp & 0x80)) {
>                         Bytetemp = rtw_read8(Adapter, EFUSE_CTRL+3);
>                         k++;
> -                       if (k == 1000) {
> -                               k = 0;
> +                       if (k == 1000)
>                                 break;
> -                       }
> 
> IMHO this is confusing to read, i suggest:
> 
>  for(k=0;k<1000;k++) {
>       Bytetemp = rtw_read8(Adapter, EFUSE_CTRL+3);
>       if ( Bytetemp & 0x80 )
>                break;
>       }
> 

The problem with the original code is that the variable is named "k"
instead of "retry".  It should be:

	do {
		Bytetemp = rtw_read8(Adapter, EFUSE_CTRL+3);
	} while (!(Bytetemp & 0x80)) && ++retry < 1000);


>  NTL is am wondering what will happen if k==1000
>  and Bytetemp is still invalid. Will rtw_read8() fail or
>  simply return invalid data ?

Yeah.  That was my thought reviewing this patch as well.

It should probably return 0xff on failure.

	if (retry >= 1000)
		return 0xff;

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
