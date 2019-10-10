Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67324D26D8
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 11:58:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D10D287DE7;
	Thu, 10 Oct 2019 09:58:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fOa++ALzb6IY; Thu, 10 Oct 2019 09:58:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3B75987DC6;
	Thu, 10 Oct 2019 09:58:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 095021BF3FC
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 09:58:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 04D7A203F9
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 09:58:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eEGbi6OQhBml for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 09:58:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id 5C4ED203D0
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 09:58:36 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9A9pM40018431;
 Thu, 10 Oct 2019 09:58:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=bZLQHgADENUAKtzY+jcRvaI+uF1F1KYVnt4wJndku4I=;
 b=k/hpIkYg9Ktkz0dc2+f3ehhOPH7fd6JWtAhLNq8vRZowj/mYK4SVB7XtMT2CV7D07NwK
 QmJQlluTMewhCX2naksqj1tJfwnty+TQcZjyaPuYhtVBglVGxtydG1r0aUS/Pu0QBiXX
 d6WMbAQDiY8loy6b+bInfYQ3mdb7TtJwXidz8D2ZNCAdzNvmT/jG7qB3KsnD2+nQYbAB
 QKSEdoZCEUkGd101/WkL1MM4j250ellwvGuleftvp30gl8nnDXEKiz3LfXUXZUspMZvk
 Qxg07UPNBUIeWZvfjxqTvRLZe4dmq6FBPVOjvPO6SmyMZQY/DS5mDnE5C7L4aF07oU0H Rw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2vektrsv69-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 10 Oct 2019 09:58:31 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9A9spb1155142;
 Thu, 10 Oct 2019 09:56:30 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2vh8k2j7g8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 10 Oct 2019 09:56:30 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9A9uRMx024510;
 Thu, 10 Oct 2019 09:56:27 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 10 Oct 2019 09:56:26 +0000
Date: Thu, 10 Oct 2019 12:56:17 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Xin Ji <xji@analogixsemi.com>
Subject: Re: [PATCH v2 2/2] drm/bridge: anx7625: Add anx7625 MIPI DSI/DPI to
 DP bridge driver
Message-ID: <20191010095617.GL13286@kadam>
References: <cover.1570699576.git.xji@analogixsemi.com>
 <43f48a7036e5a2991bd6bd8a7361107b27e48c54.1570699576.git.xji@analogixsemi.com>
 <20191010095315.GK13286@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010095315.GK13286@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910100088
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910100088
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Nicolas Boichat <drinkcat@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 10, 2019 at 12:53:15PM +0300, Dan Carpenter wrote:
> This code is *so* much nicer than before.  I hope you feel good about
> the changes.  It makes me happy to look at this code now.
> 
> On Thu, Oct 10, 2019 at 09:34:19AM +0000, Xin Ji wrote:
> > +static int edid_read(struct anx7625_data *ctx,
> > +		     u8 offset, u8 *pblock_buf)
> > +{
> > +	int ret, cnt;
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	for (cnt = 0; cnt < EDID_TRY_CNT; cnt++) {
                                          ^^^^^

> > +		sp_tx_aux_wr(ctx, offset);
> > +		/* set I2C read com 0x01 mot = 0 and read 16 bytes */
> > +		ret = sp_tx_aux_rd(ctx, 0xf1);
> > +
> > +		if (ret) {
> > +			sp_tx_rst_aux(ctx);
> > +			DRM_DEV_DEBUG_DRIVER(dev, "edid read failed, reset!\n");
> > +			cnt++;
                        ^^^^^

I mean that it's incremented twice, yeah?

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
