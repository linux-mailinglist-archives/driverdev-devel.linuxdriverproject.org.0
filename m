Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3141A7DD5
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Apr 2020 15:26:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A25C986C59;
	Tue, 14 Apr 2020 13:26:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UuJlyhJeVPof; Tue, 14 Apr 2020 13:26:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C73B086BD5;
	Tue, 14 Apr 2020 13:26:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B64191BF983
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 13:26:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B089A87DF3
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 13:26:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sVDORILkXe11 for <devel@linuxdriverproject.org>;
 Tue, 14 Apr 2020 13:26:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 209E787DDE
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 13:26:02 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03EDO5UW043642;
 Tue, 14 Apr 2020 13:26:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=gatGl3cXyXLavzUnNcCzXYbQt7xdiunM/YVOCfb2tV0=;
 b=hYCUF+LrRDOfYKEY32wyv0mlGa/Jg4YKSL4HygoQ2650pcI7mMZ2UAKoZcbyU7zi4ltC
 1nFIdXP7YNr+RcQ+cOPtdsOnpzBQKQjcmWe8Svvz1aNpe15Po3rhSc2WLnQGx/eUk+bJ
 k62dcz8aKQ7TDKz4g+QsGHswgU06ZFQSlVMotzspusEyly1IHKkqeY52pTZ69VbFs+kU
 z/TetCRr6C0M6qWwfZzuinuo1mpOk195dGqkTivLEqt1KdvyJKAXEfpePrrVH+/m2m7x
 ULp9pGwqBEkPrynPFIJWfCbg3gLBPKh/flQ8OwFh+/rHMyMVOBTyT8koVioRA5g1rLB7 8Q== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 30b5um4n05-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 Apr 2020 13:26:00 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03EDLlFB177137;
 Tue, 14 Apr 2020 13:26:00 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 30bqchndks-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 Apr 2020 13:26:00 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 03EDPwi6019231;
 Tue, 14 Apr 2020 13:25:58 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 14 Apr 2020 06:25:58 -0700
Date: Tue, 14 Apr 2020 16:25:51 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Ivan Safonov <insafonov@gmail.com>
Subject: Re: [PATCH 5/8] staging: rtl8188eu: Remove function rtw_modular64()
Message-ID: <20200414132551.GJ1163@kadam>
References: <20190712071746.2474-5-nishkadg.linux@gmail.com>
 <66fb1e37-107e-54f4-4986-ca4e4bb99d2d@yandex.ru>
 <20200414115604.GF1163@kadam>
 <20becb6f-7bf6-8618-9525-b64c226088c7@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20becb6f-7bf6-8618-9525-b64c226088c7@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9590
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 mlxlogscore=999
 bulkscore=0 malwarescore=0 phishscore=0 mlxscore=0 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004140110
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9590
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1011
 bulkscore=0 mlxscore=0
 mlxlogscore=999 lowpriorityscore=0 impostorscore=0 adultscore=0
 phishscore=0 spamscore=0 suspectscore=1 malwarescore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004140110
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
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 14, 2020 at 03:22:59PM +0300, Ivan Safonov wrote:
> On 4/14/20 2:56 PM, Dan Carpenter wrote:
> > On Sun, Apr 12, 2020 at 04:34:08PM +0300, Ivan Safonov wrote:
> > > > Remove function rtw_modular64 as all it does is call do_div.
> > > 
> > > This is wrong. Macro do_div(x, y) change first argument x, but
> > > rtw_modular64(x, y) preserve it.
> > > 
> > > > +			tsf = pmlmeext->TSFValue - do_div(pmlmeext->TSFValue, (pmlmeinfo->bcn_interval*1024)) - 1024; /* us */
> > > 
> > > rounddown(pmlmeext->TSFValue, pmlmeinfo->bcn_interval * 1024) - 1024
> > > is a better replacement for
> > 
> > You're absolutely correct that the patch is buggy, but I'm not sure that
> > rounddown() is what we want.
> > 
> > rtw_modular64() took the MOD of x.  So it should be something like:
> > 
> > 	tsf = pmlmeext->TSFValue - (pmlmeext->TSFValue % (pmlmeinfo->bcn_interval * 1024)) - 1024; /* us */
> > 
> > But what the heck is that even???  If pmlmeinfo->bcn_interval is zero
> > or one then the subtraction ends up giving us a negative.
> > 
> > regards,
> > dan carpenter
> > 
> 
> 1. pmlmeext->TSFValue can not be negative, because it is uint64_t;
> 2. pmlmeext->TSFValue is cyclic value:
>     https://en.wikipedia.org/wiki/Timing_synchronization_function ;
> 3. (rounddown(a, b)) is equal to (a - a % b) by definition.

Yeah.  You're right.  I got mixed up and I misread what you were
suggesting.

	tsf = rounddown(pmlmeext->TSFValue, pmlmeinfo->bcn_interval * 1024) - 1024;

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
