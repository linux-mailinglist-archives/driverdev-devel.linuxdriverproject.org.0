Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A28C2C87F0
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Oct 2019 14:07:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F2BA887E88;
	Wed,  2 Oct 2019 12:07:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bggDyk409NiW; Wed,  2 Oct 2019 12:07:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A761B87E09;
	Wed,  2 Oct 2019 12:07:07 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BBACF1BF964
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 12:06:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B86B3203D8
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 12:06:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l08m8BPi2MsO
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 12:06:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id 84D3220379
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 12:06:35 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x92C4IWu160823;
 Wed, 2 Oct 2019 12:06:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=isyhfTEaBZfEvo0FEykour5e+KQF/jyyvanJY/r5FAo=;
 b=m52q02W/RXvDHIKR4gPO3uqkK8xSWju3/w3vu3djyI8Wp8LX21yanEDjR5zdvMjkxDXT
 rR8Ll3lt+xGWQkQtw6m5Me2a9F66whm8xIgjC4shvrjBFC/pdcwXmld3IMt6hyvqgcQY
 k/oTt+jnqUXK35UkjWKij8Ii59mCWayglXzEiQ+s3bAS/06PU6Kbf1tJdg9cf9hI7/hs
 BNkjtsaDbBpaUmCUW5SZ8pVEB/WMh0dcMiFRYWj/22vk4nKkYgxNse9aFwdPQWxU9ntx
 TXJxnr4P2Tk/VWetAvF2w+zVTHNaCouhWozlat02cSiuQmpCjz/SyWeNZICuaa+unwd6 kg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2va05rvd3v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 02 Oct 2019 12:06:31 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x92C5ko3134559;
 Wed, 2 Oct 2019 12:06:31 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2vcg61653u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 02 Oct 2019 12:06:31 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x92C6Tpc006049;
 Wed, 2 Oct 2019 12:06:29 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 02 Oct 2019 05:06:28 -0700
Date: Wed, 2 Oct 2019 15:06:22 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Rohit Sarkar <rohitsarkar5398@gmail.com>
Subject: Re: [PATCH] staging: rtl8712: Replace snprintf with scnprintf
Message-ID: <20191002120622.GM22609@kadam>
References: <20190910184931.GA8228@SARKAR> <20191001084514.GJ27389@kadam>
 <20191001173926.GA11819@SARKAR> <20191001185852.GJ22609@kadam>
 <20191002043350.GB11819@SARKAR> <20191002105722.GL22609@kadam>
 <20191002114214.GA5812@SARKAR>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002114214.GA5812@SARKAR>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9397
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=711
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910020116
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9397
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=798 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910020116
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
Cc: larry.finger@lwfiner.net, gregkh@linuxfoundation.org,
 driverdev-devel@linuxdriverproject.org, florian.c.schilhabel@googlemail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 02, 2019 at 05:12:14PM +0530, Rohit Sarkar wrote:
> On Wed, Oct 02, 2019 at 01:57:22PM +0300, Dan Carpenter wrote:
> > 
> > We could leave it as is or change it to "MAX_WPA_IE_LEN - 1".  But I
> > feel like the default should be to leave it as is unless there is a good
> > reason.
> 
> Makes sense, although greg has already merged this. I guess I will
> remove the redundant check then.

You could remove it, but I feel like it's better to check for
"== MAX_WPA_IE_LEN - 1".  They're effectively the same, but to me it
feels cleaner to be explicit how we're handling truncated data.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
