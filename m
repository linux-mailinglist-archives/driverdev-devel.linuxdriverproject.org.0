Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 072651C8619
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 May 2020 11:50:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 88A2087397;
	Thu,  7 May 2020 09:50:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eUTVd50STjGs; Thu,  7 May 2020 09:50:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9626A87382;
	Thu,  7 May 2020 09:50:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B4F331BF860
 for <devel@linuxdriverproject.org>; Thu,  7 May 2020 09:50:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B13DE87382
 for <devel@linuxdriverproject.org>; Thu,  7 May 2020 09:50:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UCShsCJWB2oi for <devel@linuxdriverproject.org>;
 Thu,  7 May 2020 09:50:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D843F8714E
 for <devel@driverdev.osuosl.org>; Thu,  7 May 2020 09:50:29 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0479lopB102709;
 Thu, 7 May 2020 09:50:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=EQ+E4Tct/z2vRcGjh+IR0QddtdU4Z7ldQ+DofhTaTAw=;
 b=Mhj9CrcqOv6UuKjlHgoBbwP15fBZkiNeYaougogHveoMNXebz7skaUerzSs61yeYFP47
 XAL+uT1PTZ05VXmETAn3E2QCfQUv/pbydEa9Wy2eUPzBvYYvDN5C/52VlFmAQGW2OHSM
 VPgz2y5ueIRGpmG+/1JA0utkQfxJgcIrLMVNELQV1G8HPDLnsGoO8aAHRznLMdmEXXfJ
 aD4yZVlDTvODjOS3RSy8jYdl3iOe0DwQdCvyZjikhQfoYksx2mw8F13wPn5T68K0G5eb
 KgxRU02g0jhQZ1JLVA45SN778/oWJTo4ZHB+LweKB6k44EvisQTG4GnO/5n6/W1QuPra ug== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 30s09rf6xh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 09:50:27 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0479grmg092934;
 Thu, 7 May 2020 09:50:26 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 30sjdxp4ww-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 09:50:26 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0479oO5X022913;
 Thu, 7 May 2020 09:50:25 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 07 May 2020 02:50:24 -0700
Date: Thu, 7 May 2020 12:50:16 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH] staging: iio: ad5933: rework probe to use devm_ function
 variants
Message-ID: <20200507095016.GC9365@kadam>
References: <20200428093128.60747-1-alexandru.ardelean@analog.com>
 <20200502192542.63cc25a2@archlinux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200502192542.63cc25a2@archlinux>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9613
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 mlxscore=0
 bulkscore=0 adultscore=0 phishscore=0 mlxlogscore=999 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005070079
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9613
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxscore=0
 lowpriorityscore=0 spamscore=0 adultscore=0 clxscore=1011 suspectscore=0
 priorityscore=1501 malwarescore=0 mlxlogscore=999 phishscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005070079
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
Cc: linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 02, 2020 at 07:25:42PM +0100, Jonathan Cameron wrote:
> On Tue, 28 Apr 2020 12:31:28 +0300
> Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:
> > +static void ad5933_cleanup(void *data)
> > +{
> > +	struct ad5933_state *st = data;
> > +
> > +	clk_disable_unprepare(st->mclk);
> > +	regulator_disable(st->reg);
> 
> Please do two separate callbacks so that these can be handled
> in the correct places.  I.e. you do something then immediately
> register the handler to undo it.
> 
> Currently you can end up disabling a clock you haven't enabled
> (which I am fairly sure will give you an error message).

Yeah.  It does.

It feels like we should just make a devm_ version of regulator_enable().
Or potentially this is more complicated than it seems, but in that case
probably adding devm_add_action_or_reset() is more complicated than it
seems as well.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
