Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D3C2C83F2
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Nov 2020 13:15:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 564F386C4A;
	Mon, 30 Nov 2020 12:15:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kWoRIjXitpmR; Mon, 30 Nov 2020 12:15:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6DED786C35;
	Mon, 30 Nov 2020 12:15:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2C4991BF20B
 for <devel@linuxdriverproject.org>; Mon, 30 Nov 2020 12:15:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 27A7487298
 for <devel@linuxdriverproject.org>; Mon, 30 Nov 2020 12:15:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j8pLUoZLeBn6 for <devel@linuxdriverproject.org>;
 Mon, 30 Nov 2020 12:15:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 93E7087273
 for <devel@driverdev.osuosl.org>; Mon, 30 Nov 2020 12:15:27 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AUCFAZA134302;
 Mon, 30 Nov 2020 12:15:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=Welqfb51u2AFKJ0r8dnMRt+sOVkpF+0KUkstdgNij/Y=;
 b=vLHoq1OlD8yV0Z3n87/HTCdmkpYfJscayQaXNDhpJSa5dxzdo6rZB4B/yFE6JKfqOIGB
 l69y1iE71DMlP1TZWkPF9ElWlrbFdqZR8dCEQlCcacUMPRe5OSOV/HsVIOm8jUQXwR8W
 ULbnrKA5COBsG+FJDjMOM4tb351Ork8PwzRq79r3oaOqPVz7Q3uXP9HxZXrNVkGDerO+
 MrodHCxlkHQUnQp+dNJaES/PBx63HXwqKoSdhrfc5w/zpiAjfjO0XHTl+v4BbGs6vwtE
 Gm4g7b638RuYcGGpQhqef7l6F3zDIzZi3twbE9caCs4rvOhEwQKVmx283RKkwRmogR/j SQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 353dyqcqsy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 30 Nov 2020 12:15:25 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AUCBF4K014080;
 Mon, 30 Nov 2020 12:15:25 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 3540fv0k6h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 30 Nov 2020 12:15:24 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0AUCFMwv030718;
 Mon, 30 Nov 2020 12:15:23 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 30 Nov 2020 04:15:16 -0800
Date: Mon, 30 Nov 2020 15:15:07 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Subject: Re: [PATCH v4 2/4] phy: ralink: Add PHY driver for MT7621 PCIe PHY
Message-ID: <20201130121506.GB2767@kadam>
References: <20201031122246.16497-1-sergio.paracuellos@gmail.com>
 <20201031122246.16497-3-sergio.paracuellos@gmail.com>
 <20201119053059.GY50232@vkoul-mobl>
 <CAMhs-H8uyoVGUjrG_V2ueZN1UC7jSMZ-6E4YCDw1xqGKNFPv5w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMhs-H8uyoVGUjrG_V2ueZN1UC7jSMZ-6E4YCDw1xqGKNFPv5w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9820
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=0
 phishscore=0 mlxlogscore=999 adultscore=0 mlxscore=0 bulkscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011300080
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9820
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0
 clxscore=1011 mlxscore=0 spamscore=0 priorityscore=1501 mlxlogscore=999
 suspectscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011300080
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Nov 19, 2020 at 07:05:22AM +0100, Sergio Paracuellos wrote:
> > > +static inline void phy_write(struct mt7621_pci_phy *phy, u32 val, u32 reg)
> > > +{
> > > +     regmap_write(phy->regmap, reg, val);
> >
> > Why not use regmap_ calls directly and avoid the dummy wrappers..?
> 
> This is because name was the dummy names are a bit shorter :) but if
> it is also necessary I will use directly regmap_ functions.

At least don't swap the last two arguments around.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
