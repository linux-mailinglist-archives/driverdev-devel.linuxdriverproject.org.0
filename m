Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2646E31E889
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 11:46:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F3F7B87313;
	Thu, 18 Feb 2021 10:46:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r4oa1i0RDsDV; Thu, 18 Feb 2021 10:46:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6DA6686FAA;
	Thu, 18 Feb 2021 10:46:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 16A0E1BF2B9
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 10:46:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0F92586E17
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 10:46:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XMpOZY5EiInh for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 10:46:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 799DE86E0A
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 10:46:36 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11IAf8nt191305;
 Thu, 18 Feb 2021 10:46:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=DkIB6cqMedrzHSkwL1PZcrM4aHbF3RlvHi1R4O/JB1s=;
 b=jdNHZhY+QWg5MKXzNi9DkiSCQqUTZDjnqRofrInKaGVr1Xc9yYRB322ch/tMUrmViive
 9ZQdFqq4wWJ3Tz87Kp/DQ8uwPmTaCmgwFji4e+xaWPpaxurKGDMp8ynLosEnczLXxrgy
 0RC/hNY48+YIoWhwvlfZl2TZEnKbIleSttJSA+4WtbI9ta03Xf+/XaQ3GDXrhKvrjeYE
 h8WQsf1ZVYq4jvA+HnNGkqwMbIC4Zk5wnmOg3ozEenZRvRNrVMwEX79nQrr9HpZuwl7g
 GDM3pnXTHly5QFwtBEVTtK+pygnh9Bj5cTtnacvQWbvWOU4GYAAmcP6DnIQ87ergbK5j 7w== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 36p7dnne2g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Feb 2021 10:46:27 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11IAk8hu090043;
 Thu, 18 Feb 2021 10:46:25 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 36prq0amnd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Feb 2021 10:46:25 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 11IAkCeM017093;
 Thu, 18 Feb 2021 10:46:15 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 18 Feb 2021 02:46:11 -0800
Date: Thu, 18 Feb 2021 13:45:58 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v1 03/18] arm64: dts: imx8mq-evk: add reserve memory node
 for CMA region
Message-ID: <20210218104558.GD2087@kadam>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-4-benjamin.gaignard@collabora.com>
 <ab14f5a0bde2bdcd4bb0128f76e5a3ba8e7b0894.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ab14f5a0bde2bdcd4bb0128f76e5a3ba8e7b0894.camel@collabora.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9898
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxlogscore=999
 phishscore=0 adultscore=0 mlxscore=0 suspectscore=0 malwarescore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102180095
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9898
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 suspectscore=0 mlxscore=0
 phishscore=0 spamscore=0 adultscore=0 clxscore=1011 impostorscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102180094
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
Cc: peng.fan@nxp.com, kernel@collabora.com, devel@driverdev.osuosl.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, Anson.Huang@nxp.com,
 krzk@kernel.org, linux-rockchip@lists.infradead.org, wens@csie.org,
 linux-imx@nxp.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 p.zabel@pengutronix.de, s.hauer@pengutronix.de, mripard@kernel.org,
 robh+dt@kernel.org, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 aisheng.dong@nxp.com, jernej.skrabec@siol.net, gregkh@linuxfoundation.org,
 adrian.ratiu@collabora.com, linux-kernel@vger.kernel.org,
 paul.kocialkowski@bootlin.com, kernel@pengutronix.de, hverkuil-cisco@xs4all.nl,
 shawnguo@kernel.org, shengjiu.wang@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 17, 2021 at 04:39:49PM -0300, Ezequiel Garcia wrote:
> Hi Benjamin,
> 
> On Wed, 2021-02-17 at 09:02 +0100, Benjamin Gaignard wrote:
> > Define allocation range for the default CMA region.
> > 
> > Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> 
> Despite it seems like I signed-off this one...
> 

I've been puzzled by this as well.  :P

Signed-off-by means you either wrote the patch or you handled it in some
way.  And it is intended as a legally binding document that you didn't
sneak in any copyrighted code from SCO UNIXWARE (etc).  So like maybe
the authors snuck some in or maybe a maintainer took the patch and
sneaked some unixware code in.

Obviously if you sign the code, that counts as an Ack and Review as well
because maintainers are going to only merge stuff if they've looked it
over a bit.  But the main thing is that it means you didn't didn't
violate any copyrights.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
