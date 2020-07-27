Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4052822EB65
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jul 2020 13:45:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5B1D085DB8;
	Mon, 27 Jul 2020 11:45:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GBjWri26br2R; Mon, 27 Jul 2020 11:45:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8222A85E03;
	Mon, 27 Jul 2020 11:45:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8FFD11BF3DF
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 11:45:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8A8D085DB8
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 11:45:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DTeJ5BCv-ZRV for <devel@linuxdriverproject.org>;
 Mon, 27 Jul 2020 11:45:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8FD9885424
 for <devel@driverdev.osuosl.org>; Mon, 27 Jul 2020 11:45:11 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06RBgkOY131177;
 Mon, 27 Jul 2020 11:45:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=/2Bqbh6mqEzNlmJp3/m5FcHLpogK8hoaUEdhgHBnRQk=;
 b=cwY+dBq91vP6K4S/p3qzO7J1vrmggFsezqZnrUydf6kZ8YxdNkrAblw23f13pv7PdaVr
 bvBy5typaaIrD1BbGqXZE5XN++9OgiXXJZyP3Y3u2VjJGDSGTFqv4bw7QImVRn1Yt4pE
 cWRNd146HxzSb0aU+laHDhQCC23QXCrUTza1oluiWZXN3Du4UNSmnYPkx6r6fzr3M47E
 no4fDY+MTuCxhHrs9SPfmdWiUiCduNLsthZcR1VmGrrRu/GoWRrYy5Dps0JH+8wC5p2C
 97W3crDVz7H8ycBkqh+IY3PLqNUgeiEXG9+CYw8HL5u8hDRoyqxkRODAKNDW8UkMY1Sa iA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 32hu1j119u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 27 Jul 2020 11:45:09 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06RBhGp9154648;
 Mon, 27 Jul 2020 11:45:09 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 32hu5qhhu7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Jul 2020 11:45:09 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 06RBj0gB014202;
 Mon, 27 Jul 2020 11:45:00 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 27 Jul 2020 04:44:59 -0700
Date: Mon, 27 Jul 2020 14:44:51 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Dinghao Liu <dinghao.liu@zju.edu.cn>
Subject: Re: [PATCH] Staging: rtl8188eu: rtw_mlme: Fix uninitialized variable
 authmode
Message-ID: <20200727114451.GA1913@kadam>
References: <20200724122957.30411-1-dinghao.liu@zju.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200724122957.30411-1-dinghao.liu@zju.edu.cn>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9694
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxlogscore=999 mlxscore=0
 suspectscore=18 bulkscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007270087
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9694
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 clxscore=1011
 malwarescore=0 spamscore=0 suspectscore=18 bulkscore=0 priorityscore=1501
 phishscore=0 mlxlogscore=999 lowpriorityscore=0 impostorscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007270087
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
 kjlu@umn.edu, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@inria.fr>, Stefano Brivio <sbrivio@redhat.com>,
 Shreeya Patel <shreeya.patel23498@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 24, 2020 at 08:29:55PM +0800, Dinghao Liu wrote:
> The variable authmode will keep uninitialized if neither if
> statements used to initialize this variable are not triggered.
> Then authmode may contain a garbage value and influence the
> execution flow of this function.
> 
> Fix this by initializing it to zero.
> 
> Signed-off-by: Dinghao Liu <dinghao.liu@zju.edu.cn>

This matches how rtl8723bs does it.

Fixes: 7b464c9fa5cc ("staging: r8188eu: Add files for new driver - part 4")
Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

There is a quirk/bug in GCC where it's initializing stuff to zero
sometimes instead of printing a compile warning so this probably doesn't
change run time very much.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
