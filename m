Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AFECF271
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 08:09:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F177B86141;
	Tue,  8 Oct 2019 06:09:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id njOaolRTuDrr; Tue,  8 Oct 2019 06:09:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 46BBD860FC;
	Tue,  8 Oct 2019 06:09:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D796B1BF289
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 06:09:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C577387E5D
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 06:09:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hHCDnFNUP0Jt for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 06:08:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A919A87E58
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 06:08:59 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9868o5R018791;
 Tue, 8 Oct 2019 06:08:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=MkIeK/NE+mv6GpgnXpwtutIQIlvEhfelSc1zDPiPEsk=;
 b=XdkRE63Rpr/F81Hx6pv1SNKN9b3ff78qJqgZRk5/PUhZ533H2YhZ/CxCBuZ2LFOHifln
 IfdkWFObArPJL0xEsJ7DvuQUcmpV5t5z9gpM/i+UjDzDdCZFWxJulrqeqEqvXsXAkpH2
 o0JFujWeVRPF3vDzGcDkKHmdgJm/O7BtyIlFMqJzhc9bU0zWGtidihgFIOtTDg/ZUild
 9nqLAJ9+CAIvpUdCAivXChyNPQg0hEd/eaCldMsfS/d98SZuT7GSmpQsLBgOA6gYat3Y
 dcoYOKxOTE9K+VWkQoEc2aLLMwvS4m+Kooq7gcZGM13f5GsMxbyKJ4Ks7Ra5hcwen9sB cA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2vek4qb4by-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Oct 2019 06:08:56 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9868pN2085372;
 Tue, 8 Oct 2019 06:08:55 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2vgeux4hcn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Oct 2019 06:08:53 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9868Eec025867;
 Tue, 8 Oct 2019 06:08:15 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 07 Oct 2019 23:08:13 -0700
Date: Tue, 8 Oct 2019 09:08:06 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: zhengbin <zhengbin13@huawei.com>
Subject: Re: [PATCH 2/6] staging: sm750fb: Remove set but not used variable
 'uiActualPixelClk'
Message-ID: <20191008060806.GM21515@kadam>
References: <1570513142-60177-1-git-send-email-zhengbin13@huawei.com>
 <1570513142-60177-3-git-send-email-zhengbin13@huawei.com>
 <20191008060610.GB12948@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008060610.GB12948@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9403
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910080063
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9403
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910080063
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
Cc: devel@driverdev.osuosl.org, eric@anholt.net, gregkh@linuxfoundation.org,
 abbotti@mev.co.uk, wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 08, 2019 at 09:06:11AM +0300, Dan Carpenter wrote:
> On Tue, Oct 08, 2019 at 01:38:58PM +0800, zhengbin wrote:
> > diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
> > index 9722692..e0230f4 100644
> > --- a/drivers/staging/sm750fb/ddk750_mode.c
> > +++ b/drivers/staging/sm750fb/ddk750_mode.c
> > @@ -209,12 +209,11 @@ static int programModeRegisters(struct mode_parameter *pModeParam,
> >  int ddk750_setModeTiming(struct mode_parameter *parm, enum clock_type clock)
> >  {
> >  	struct pll_value pll;
> > -	unsigned int uiActualPixelClk;
> > 
> >  	pll.input_freq = DEFAULT_INPUT_CLOCK;
> >  	pll.clock_type = clock;
> > 
> > -	uiActualPixelClk = sm750_calc_pll_value(parm->pixel_clock, &pll);
> > +	sm750_calc_pll_value(parm->pixel_clock, &pll);
> 
> Get rid of this function as well.

Oops.  I'm wrong.  Sorry for the noise.  Leave the function.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
