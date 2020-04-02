Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1704719C3E6
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 16:22:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BDDAF22270;
	Thu,  2 Apr 2020 14:22:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xf7f2IOG16hZ; Thu,  2 Apr 2020 14:22:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6D5E6220D0;
	Thu,  2 Apr 2020 14:22:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 120C41BF42C
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 14:22:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0EE04866E5
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 14:22:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YRMPeVyYr535 for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 14:22:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9334185FD4
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 14:22:49 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 032EHaJY116789;
 Thu, 2 Apr 2020 14:22:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=LchWqkCOvF0iI3Yl4nkkvqVWjHv0QHY1T2lFYjYjdcw=;
 b=Y9FN2y8MisgEEiZItb8CmzjzDaHhEqld0nB75MP1jEXtGSyK/PGbaoHOc2EnXJeuYpQW
 XBRvK28hNv4kuyWgSCGyrsm6izqD256/TC9PnwApQtovmSJBIkxvsCmbr6kvxHVJUOfD
 jiqAYfnL74d1rbPXNPeFnbL+p6jt18sK+TbbStPOdDQkwYgJDO0rGeqUypmBV5Tr23HX
 VaBbt25U5YjUq3VOvOnS6+OCEEtQW5GJLHDGJERXEzmzErY9HJ1ppHoWb3fI9iZsHJp6
 l/5aem7vJunzTzZT72GB1xG3TgLsR7PaXrZzlLkgPiUfo9eDcav1cYIRgfh11uP6eZfA ag== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 303cevbqyc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 02 Apr 2020 14:22:48 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 032EH9YO121714;
 Thu, 2 Apr 2020 14:22:48 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 304sjpmpn8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 02 Apr 2020 14:22:47 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 032EMjNn028738;
 Thu, 2 Apr 2020 14:22:45 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 02 Apr 2020 07:22:44 -0700
Date: Thu, 2 Apr 2020 17:22:37 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Rui Miguel Silva <rmfrfs@gmail.com>
Subject: Re: [PATCH -next] staging: greybus: fix a missing-check bug in
 gb_lights_light_config()
Message-ID: <20200402142237.GT2001@kadam>
References: <20200401030017.100274-1-chenzhou10@huawei.com>
 <20200402122228.GP2001@kadam>
 <20200402131618.653dkeuz7c2vuujf@arch-thunder.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402131618.653dkeuz7c2vuujf@arch-thunder.localdomain>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9579
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 adultscore=0 mlxscore=0
 malwarescore=0 phishscore=0 suspectscore=0 mlxlogscore=999 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004020130
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9579
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 adultscore=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 suspectscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004020130
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org,
 Chen Zhou <chenzhou10@huawei.com>, gregkh@linuxfoundation.org,
 johan@kernel.org, linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Apr 02, 2020 at 02:16:18PM +0100, Rui Miguel Silva wrote:
> > > --- a/drivers/staging/greybus/light.c
> > > +++ b/drivers/staging/greybus/light.c
> > > @@ -1026,7 +1026,8 @@ static int gb_lights_light_config(struct gb_lights *glights, u8 id)
> > >  
> > >  	light->channels_count = conf.channel_count;
> > >  	light->name = kstrndup(conf.name, NAMES_MAX, GFP_KERNEL);
> > > -
> > > +	if (!light->name)
> > > +		return -ENOMEM;
> > >  	light->channels = kcalloc(light->channels_count,
> > >  				  sizeof(struct gb_channel), GFP_KERNEL);
> > >  	if (!light->channels)
> > 
> > The clean up in this function is non-existant.  :(
> 
> Yeah, this have a central point to do the cleanups, gb_lights_release,
> since we may have other lights already configured at this point, we
> could cleanup this specific one here, but than would need to make sure
> all other already configure got clean also.

Central clean up functions never work correctly.

For example, we allocate "cdev->name" in gb_lights_channel_config()
before we register the channel later in gb_lights_register_all(glights);.
Now imagine that the register fails.  Then when we're freeing it in
__gb_lights_led_unregister() we see that the ->is_registered is false
so we don't kfree(cdev->name).

That's just a small memory leak.  But there are going to be tons of
little bugs like that.

Anyway it doesn't affect this patch so it's fine.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
