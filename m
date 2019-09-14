Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE608B2CD6
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Sep 2019 21:52:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D1DE585A0E;
	Sat, 14 Sep 2019 19:52:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PnnCBEgaNSqx; Sat, 14 Sep 2019 19:52:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 80C17857CE;
	Sat, 14 Sep 2019 19:52:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 568401BF574
 for <devel@linuxdriverproject.org>; Sat, 14 Sep 2019 19:52:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4F9FF86354
 for <devel@linuxdriverproject.org>; Sat, 14 Sep 2019 19:52:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oHPywJjiv8M2 for <devel@linuxdriverproject.org>;
 Sat, 14 Sep 2019 19:52:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A50448632F
 for <devel@driverdev.osuosl.org>; Sat, 14 Sep 2019 19:52:14 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8EJo3Xt055018;
 Sat, 14 Sep 2019 19:52:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=eRMSfxxBJy3lxRksyJII4ggz6OzzD4otLOcp22ycFzw=;
 b=F/wmmZogBu4j5tq2csph+1zj8ghwfFXZ87vNKKkkhGU18z49ktTES8pld7utkJIYlu7e
 S2s3g/0eqAmaHcAgDWsYbhCd8lydTPZtlGhUu/yvcRkYVCy1Gwz3dfrW5MsTniNh7Ol0
 KJJSf64tgzaRBR+bSKw+/E3UoCTO1KdDnpkvKAdeiB2NalYSgUe8fpkmq3Vv99c6YdJn
 2BnMvOyp4uGq7Ljbgeqbq3Nr3SgcGPaQi7s/UYxAuhKNj1xgg8tNIv9wKKtSAwQAdcsv
 0Kknc9daOo7CKZjcvQdkWJdqIbFZeIkA1TzNPPgH7aLL8r8uWB+gWa753Jc5VD0sS/tt 5A== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2v0ruq9t91-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 14 Sep 2019 19:52:13 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8EJn6qc109785;
 Sat, 14 Sep 2019 19:52:12 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2v0r1etkeq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 14 Sep 2019 19:52:12 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x8EJqApr027926;
 Sat, 14 Sep 2019 19:52:12 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sat, 14 Sep 2019 12:52:10 -0700
Date: Sat, 14 Sep 2019 22:52:02 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Ivan Safonov <insafonov@gmail.com>
Subject: Re: [PATCH] staging: r8188eu: replace rtw_malloc() with it's
 definition
Message-ID: <20190914195202.GC18977@kadam>
References: <20190908090026.2656-1-insafonov@gmail.com>
 <20190910115932.GB15977@kadam>
 <47674485-194b-0b09-81ed-5d855284ebd9@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <47674485-194b-0b09-81ed-5d855284ebd9@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9380
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=675
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909140209
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9380
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=731 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909140209
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
Cc: devel@driverdev.osuosl.org,
 Florian =?iso-8859-1?Q?B=FCstgens?= <flbue@gmx.de>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Robert =?utf-8?B?V8SZY8WCYXdza2k=?= <r.weclawski@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Sep 14, 2019 at 06:18:03PM +0300, Ivan Safonov wrote:
> On 9/10/19 2:59 PM, Dan Carpenter wrote:
> > On Sun, Sep 08, 2019 at 12:00:26PM +0300, Ivan Safonov wrote >> rtw_malloc prevents the use of kmemdup/kzalloc and others.
> > > 
> > > Signed-off-by: Ivan Safonov <insafonov@gmail.com>
> > > ---
> > >   drivers/staging/rtl8188eu/core/rtw_ap.c        |  4 ++--
> > >   drivers/staging/rtl8188eu/core/rtw_mlme_ext.c  |  2 +-
> > >   .../staging/rtl8188eu/include/osdep_service.h  |  3 ---
> > >   drivers/staging/rtl8188eu/os_dep/ioctl_linux.c | 18 +++++++++---------
> > >   drivers/staging/rtl8188eu/os_dep/mlme_linux.c  |  2 +-
> > >   .../staging/rtl8188eu/os_dep/osdep_service.c   |  7 +------
> > >   6 files changed, 14 insertions(+), 22 deletions(-)
> > > 
> > > diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
> > > index 51a5b71f8c25..c9c57379b7a2 100644
> > > --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
> > > +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
> > > @@ -104,7 +104,7 @@ static void update_BCNTIM(struct adapter *padapter)
> > >   	}
> > >   	if (remainder_ielen > 0) {
> > > -		pbackup_remainder_ie = rtw_malloc(remainder_ielen);
> > > +		pbackup_remainder_ie = kmalloc(remainder_ielen, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
> >                                                                  ^^^^^^^^^^^^^
> > This stuff isn't right.  It really should be checking if spinlocks are
> > held or IRQs are disabled.  And the only way to do that is by auditing
> > the callers.
> I hope to make these changes later as separate independent patches.
> This patch do only one thing - remove rtw_malloc().

No, just do that in one step.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
