Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 956AB13415
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 May 2019 21:40:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4A4E587B01;
	Fri,  3 May 2019 19:40:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S9eRopoSfntf; Fri,  3 May 2019 19:40:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0EEC987AF1;
	Fri,  3 May 2019 19:40:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0A1231BF400
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 19:40:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 06EC888091
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 19:40:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ROfLlIuSmM-n for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 19:40:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7260487FB9
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 19:40:32 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x43JYGAQ072123;
 Fri, 3 May 2019 19:40:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2018-07-02;
 bh=zFFPkeKwSl9qs1Gf/nl1E27H+7M/jhvO857WLR2q3z8=;
 b=DpzPTdixPg6Pvz4oxVTvXpjKc9fMHYkTYdnN/3EvhgQl9oc7m7+7zwpvacbG2Pvt9Gqp
 wbsiOQFJ+dGnW2iAlZkAmnr/SnJCy47E0fG3+koASSJTXJb1tecoiA7Q8qHVebMExiAV
 01GSQyjKN1QVJSSeiZj7gDWDmuyNOPVMnJfLmwpr1sr2B9YxHhq8ewd/pMvtzfxngigL
 EWvJ5huXM/tztCh99qYfnZNGjDi6jS0lmrnwY/We66Jn4+wGsF8kEsbAQSPu5rUt1Ak3
 DeHo0E1e3j6KAvOlB8hxyW2IfNGW8hV9h2JDOUhOLNRCyDMFdDYXokdP1JQ1oXMQbYrw RQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2s6xhyrv9g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 May 2019 19:40:25 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x43JcoHT142847;
 Fri, 3 May 2019 19:40:25 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2s7rtcfb6c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 May 2019 19:40:24 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x43JeCdp003869;
 Fri, 3 May 2019 19:40:14 GMT
Received: from kadam (/196.104.111.181)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 03 May 2019 12:40:12 -0700
Date: Fri, 3 May 2019 22:40:01 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Subject: Re: [PATCH v3 08/10] staging: octeon-ethernet: support
 of_get_mac_address new ERR_PTR error
Message-ID: <20190503194001.GP2239@kadam>
References: <1556870168-26864-1-git-send-email-ynezz@true.cz>
 <1556870168-26864-9-git-send-email-ynezz@true.cz>
 <20190503103456.GF2269@kadam> <20190503190730.GH71477@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503190730.GH71477@meh.true.cz>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9245
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905030128
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9245
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905030128
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
Cc: devel@driverdev.osuosl.org, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Frank Rowand <frowand.list@gmail.com>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gRnJpLCBNYXkgMDMsIDIwMTkgYXQgMDk6MDc6MzBQTSArMDIwMCwgUGV0ciDFoHRldGlhciB3
cm90ZToKPiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9yYWNsZS5jb20+IFsyMDE5LTA1
LTAzIDEzOjM0OjU2XToKPiAKPiBIaSwKPiAKPiA+IE9uIEZyaSwgTWF5IDAzLCAyMDE5IGF0IDA5
OjU2OjA1QU0gKzAyMDAsIFBldHIgxaB0ZXRpYXIgd3JvdGU6Cj4gPiA+IFRoZXJlIHdhcyBOVk1F
TSBzdXBwb3J0IGFkZGVkIHRvIG9mX2dldF9tYWNfYWRkcmVzcywgc28gaXQgY291bGQgbm93Cj4g
PiA+IHJldHVybiBOVUxMIGFuZCBFUlJfUFRSIGVuY29kZWQgZXJyb3IgdmFsdWVzLCBzbyB3ZSBu
ZWVkIHRvIGFkanVzdCBhbGwKPiA+ID4gY3VycmVudCB1c2VycyBvZiBvZl9nZXRfbWFjX2FkZHJl
c3MgdG8gdGhpcyBuZXcgZmFjdC4KPiA+IAo+ID4gV2hpY2ggY29tbWl0IGFkZGVkIE5WTUVNIHN1
cHBvcnQ/ICBJdCBoYXNuJ3QgaGl0IG5ldC1uZXh0IG9yIGxpbnV4LW5leHQKPiA+IHlldC4uLiAg
VmVyeSBzdHJhbmdlLgo+IAo+IHRoaXMgcGF0Y2ggaXMgYSBwYXJ0IG9mIHRoZSBwYXRjaCBzZXJp
ZXNbMV0sIHdoZXJlIHRoZSAxc3QgcGF0Y2hbMl0gYWRkcyB0aGlzCj4gTlZNRU0gc3VwcG9ydCB0
byBvZl9nZXRfbWFjX2FkZHJlc3MgYW5kIGZvbGxvdy11cCBwYXRjaGVzIGFyZSBhZGp1c3RpbmcK
PiBjdXJyZW50IG9mX2dldF9tYWNfYWRkcmVzcyB1c2VycyB0byB0aGUgbmV3IEVSUl9QVFIgcmV0
dXJuIHZhbHVlLgoKQmFzaWNhbGx5IGFsbCB0aGUgcGF0Y2hlcyBuZWVkIHRvIGJlIGZvbGRlZCB0
b2dldGhlciBvdGhlcndpc2UgeW91J3JlCmJyZWFraW5nIGdpdCBiaXNlY3RpYmlsaXR5LiAgSW1h
Z2luZSB0aGF0IHdlIGp1c3QgYXBwbHkgcGF0Y2ggIzEgcmlnaHQ/ClRoZW4gYWxsIHRoZSBjYWxs
ZXJzIHdpbGwgYmUgYnJva2VuLiAgSXQncyBub3QgYWxsb3dlZC4KCnJlZ2FyZHMsCmRhbiBjYXJw
ZW50ZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=
