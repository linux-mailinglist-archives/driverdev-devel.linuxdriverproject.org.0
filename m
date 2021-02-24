Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA267323F5C
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 16:07:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B54E4EC30;
	Wed, 24 Feb 2021 15:07:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yLKuCpxmvcPy; Wed, 24 Feb 2021 15:07:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3DCFA4EC2F;
	Wed, 24 Feb 2021 15:07:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 60C461BF2B6
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 15:07:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5DC8B83C66
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 15:07:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T2R21Qkjk6-Q for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 15:07:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 386C983BB3
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 15:07:08 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11OF5IDj014479;
 Wed, 24 Feb 2021 15:07:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=yQ/9VJGRYC7HFFhoXhvUs5lWlOzidOwHTk2AtkXU7ak=;
 b=YiZKqeHm5szYWHOskDIGUeQQeLwjPF7UodXg+jpmW/lQdmxWwSReWhBS1ZGbk24BjGyJ
 WboDoB9ojcQHllvtnnJ9JDoEYo77G7sE8dpx2h5ERCEjToLl9zbJTOfs3D56KpVph5ML
 iWn/ao0PEjOPTi3a40z1W/dPjaJ53BMUIE67YOHIT2YleVCoY1Q5q9k27a+Y8pDkFegL
 mBVJaAYoD6EIWw6Hvz6ayrYx5ym11BSUDOsAPc/fAQmtIDsZ/J935IZRjJU+GVowfbie
 yXVcwroJUHYxmtCQ4SE+No8+X+WTKu7PQzev3k1p/DONgWSGuYdpN2uDyw+chi6iA5qJ jA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 36tsur3913-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 24 Feb 2021 15:07:05 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11OF0f3Q129549;
 Wed, 24 Feb 2021 15:07:03 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 36ucb0uj3q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 24 Feb 2021 15:07:03 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 11OF6uG9011706;
 Wed, 24 Feb 2021 15:06:57 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 24 Feb 2021 07:06:56 -0800
Date: Wed, 24 Feb 2021 18:06:48 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: karthek <mail@karthek.com>
Subject: Re: [PATCH 0/2] fix sparse warnings
Message-ID: <20210224150648.GT2087@kadam>
References: <cover.1613921277.git.mail@karthek.com>
 <YDZpKcXLkiueequk@karthik-strix-linux.karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YDZpKcXLkiueequk@karthik-strix-linux.karthek.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9904
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0
 malwarescore=0 mlxlogscore=999 adultscore=0 bulkscore=0 mlxscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102240119
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9904
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 mlxscore=0 malwarescore=0
 clxscore=1015 phishscore=0 mlxlogscore=999 lowpriorityscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102240119
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Johannes Berg <johannes@sipsolutions.net>,
 Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 24, 2021 at 08:26:41PM +0530, karthek wrote:
> On Sun, Feb 21, 2021 at 09:00:48PM +0530, karthik alapati wrote:
> > the following patches fixes two  byte-order issues
> > and fixes these sparse warnings
> > 
> > 
> > drivers/staging//wimax/i2400m/op-rfkill.c:89:25: warning: incorrect type in assignment (different base types)
> > drivers/staging//wimax/i2400m/op-rfkill.c:89:25:    expected restricted __le16 [usertype] length
> > drivers/staging//wimax/i2400m/op-rfkill.c:89:25:    got unsigned long
> > .
> > drivers/staging//wimax/i2400m/fw.c:514:27: warning: restricted __le32 degrades to integer
> > 
> > 
> > karthik alapati (2):
> >   staging: wimax/i2400m: fix byte-order issue
> >   staging: wimax/i2400m: convert __le32 type to host byte-order
> > 
> >  drivers/staging/wimax/i2400m/fw.c        | 2 +-
> >  drivers/staging/wimax/i2400m/op-rfkill.c | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> > 
> > -- 
> > 2.30.1
> > 
> ping?

The merge window is open so no one is merging these types of fixes now.
Wait until -rc1 is out, and then give the maintainer two weeks to look
at your patch and get back to you.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
