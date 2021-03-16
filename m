Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9189C33CFA5
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 09:22:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B43C4EC70;
	Tue, 16 Mar 2021 08:22:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QiINUQGENyXn; Tue, 16 Mar 2021 08:22:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB2404EBD3;
	Tue, 16 Mar 2021 08:22:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 15DD81BF44A
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 08:22:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 118D74EBF4
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 08:22:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kfU8ZaFOh-ye for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 08:22:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 336FE4EBD3
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 08:21:59 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12G8JLFc061530;
 Tue, 16 Mar 2021 08:21:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=WPqOs10vxLdfOS0/dMZowuYNwWIQI0GFuuttBriqaUM=;
 b=QUC3bkOMpqJ74jJgYmqQsYeT9o2J8Xqngdubrqy163wYHz3kLGI7O3r0Orykbb3tRBrf
 zu4BpB9eiyXJYv1CracZBi0wD2VEcAMSS9mcMDKBiJxExLAsc8MCuuje81TJh5OzVE8l
 cTzs5ewQaPHLvTcE5eYKoliUnqqnOowtznOFxDrJ3aiMESc8XzEvLxhCWEmAw2imLLnT
 TVTypjig44Ru+aun/hMQoIFavCsu5SASgD3cVgD2IN6uftZ3WAr/YviJmTTqdMBz8nQS
 B/VnE9OHBDzjw3Sf8XhKYsY8zE5dx9Rz+b8u/WQ3N3ZLjUaCHhL679AELYpPxg+xrF19 LQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 378nbm6pwd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Mar 2021 08:21:59 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12G8Joq5134140;
 Tue, 16 Mar 2021 08:21:56 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 3797ayrg2p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Mar 2021 08:21:56 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 12G8Lstc010770;
 Tue, 16 Mar 2021 08:21:54 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 16 Mar 2021 08:21:54 +0000
Date: Tue, 16 Mar 2021 11:21:46 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Marco Cesati <marcocesati@gmail.com>
Subject: Re: [PATCH 00/57] Staging: rtl8723bs: fix POINTER_LOCATION whitespaces
Message-ID: <20210316082146.GQ2087@kadam>
References: <20210315170618.2566-1-marcocesati@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210315170618.2566-1-marcocesati@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9924
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0 bulkscore=0
 malwarescore=0 adultscore=0 mlxscore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103160056
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9924
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 impostorscore=0
 malwarescore=0 adultscore=0 mlxscore=0 clxscore=1015 mlxlogscore=999
 lowpriorityscore=0 phishscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103160056
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

On Mon, Mar 15, 2021 at 06:05:21PM +0100, Marco Cesati wrote:
> This set of patches fixes 522 checkpatch.pl errors of type
> POINTER_LOCATION in the staging/rtl8723bs souce code. Every patch is
> purely syntactical: it does not change the generated machine code.
> Furthermore, every single patch leaves the source code fully compilable,
> so that 'git bisect' will not be affected.

Hopefully that part can be assumed.  :P

> 
> The checkpatch.pl script emits many errors and warnings for these
> patches, however all of them are caused by the original code. They shall
> be fixed in different patchsets.

Yep.  You maybe went a tad too aggressive in fixing the checkpatch
warnings about parentheses...  If you didn't introduce the warning, then
you can just leave it as-is.

Anyway, looks good.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
