Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A30A37479
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Jun 2019 14:46:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA42D88094;
	Thu,  6 Jun 2019 12:46:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FECcunWxatu6; Thu,  6 Jun 2019 12:46:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4988987EDB;
	Thu,  6 Jun 2019 12:46:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B28461BF287
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 12:46:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AE90383713
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 12:46:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vzu1mBKNNCH4 for <devel@linuxdriverproject.org>;
 Thu,  6 Jun 2019 12:46:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BC3E281A64
 for <devel@driverdev.osuosl.org>; Thu,  6 Jun 2019 12:46:08 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x56ChqtW003123;
 Thu, 6 Jun 2019 12:45:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2018-07-02;
 bh=suyPrwakIpx4/GT/1pO6R0rUGM7UxiWyf4SfHp3I1Gg=;
 b=z1VhShHb2i7HnW0uk6ZwccsbeHFgBJW4/hx22fhDyqH28AJ8xAcapEeLDVpLjk9rbrMW
 UisNBRZh0n+QqG1pVdBjtjrz1Mxr/rvvYdsTOEuevBWAk0FoGOSTj6HF8fIVUzRI051K
 mb7wXoROtxyO9AHeQFBky8CcvcAMh+oGHExVMojIgLxKzhneo1dr/j9xe6XwHQmJTEMH
 JLOi6Jjyc56J3HJTAEdiryvLWQKNNw3awF7CGTCPufdE975bApnwDw7SP5clqDMbGYWo
 XO/xt7wN8y+m8aZWAhjmwx7VCtLdFqxZKgJw8lNUag1KkZxTNMpW3JuUh5HLiPVb6e9R jw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2sugstr6hv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 06 Jun 2019 12:45:50 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x56ChtjB099122;
 Thu, 6 Jun 2019 12:45:50 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2swngje01v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 06 Jun 2019 12:45:49 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x56Cjho5021500;
 Thu, 6 Jun 2019 12:45:43 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 06 Jun 2019 05:45:42 -0700
Date: Thu, 6 Jun 2019 15:45:33 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH 3/7] media: cedrus: Fix decoding for some H264 videos
Message-ID: <20190606124533.GN31203@kadam>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-4-jernej.skrabec@siol.net>
 <20190603115536.j5lan6wtmbxpoe2k@flea>
 <2536664.ljALn0aKaT@jernej-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2536664.ljALn0aKaT@jernej-laptop>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9279
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=769
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906060091
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9279
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=802 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906060091
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
Cc: devel@driverdev.osuosl.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBKdW4gMDMsIDIwMTkgYXQgMDU6Mzc6MTdQTSArMDIwMCwgSmVybmVqIMWga3JhYmVj
IHdyb3RlOgo+IERuZSBwb25lZGVsamVrLCAwMy4ganVuaWogMjAxOSBvYiAxMzo1NTozNiBDRVNU
IGplIE1heGltZSBSaXBhcmQgbmFwaXNhbChhKToKPiA+IGludCBjdXJyZW50ID0gMDsKPiA+IAo+
ID4gd2hpbGUgKGN1cnJlbnQgPCBudW0pIHsKPiA+ICAgICBpbnQgdG1wID0gbWluKG51bSAtIGN1
cnJlbnQsIDMyKTsKPiA+IAo+ID4gICAgIGNlZHJ1c193cml0ZShkZXYsIFZFX0gyNjRfVFJJR0dF
Ul9UWVBFLCAweDMgfCAoY3VycmVudCA8PCA4KSkKICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5eXl5eXl4KVGhpcyBzaG91bGQgYmUgInRtcCA8
PCA4IiBpbnN0ZWFkIG9mICJjdXJyZW50IDw8IDgiIHRob3VnaC4KCgo+ID4gICAgIHdoaWxlICgu
Li4pCj4gPiAgICAgICAgLi4uCj4gPiAKPiA+ICAgICBjdXJyZW50ICs9IHRtcDsKPiA+IH0KPiAK
CnJlZ2FyZHMsCmRhbiBjYXJwZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
