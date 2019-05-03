Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A514A12B98
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 May 2019 12:37:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DCAE2867C8;
	Fri,  3 May 2019 10:37:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oq-6Mq+nR0yW; Fri,  3 May 2019 10:37:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5E1D785FED;
	Fri,  3 May 2019 10:37:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 254651BF303
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 10:37:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2238786957
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 10:37:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xaduzuA49UW3 for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 10:37:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9380386948
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 10:37:26 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x43AXxGJ011376;
 Fri, 3 May 2019 10:37:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2018-07-02;
 bh=kNlNIR9Fo8ESlQnZzVfciYR2PSzGbl848JM9YPcBKYo=;
 b=SNWtejo0Pn5WyY8kfzS5pBy0rXnkeaePknhO5TudvQjauk3QuFK79+iawq49XVppmJmF
 V9pPPx4oabYneoc/h9ZFYqxQqj2kgpMXJaFPZUeFSQqW7pg/3w7deTYhjhL7K0GMPIfi
 xGCnFsiOhWSbwtNawnamBh628dYflZsP7q7CYZI9cy7NvoZud4lvNSAZ2g2AtcnDKFBO
 mY+VkeronehCITjGqFoPBiiw+qH9656hGKKcEmeklLaZ0yUd4pp0V4BfMQiTP7wQ+ueQ
 gcqD+0snD0LZD2zX1TNSvC1dQtIWwDhk4m1NHHJPUrNZbab50vBrSH2XaudOzaLGy8qq vg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2130.oracle.com with ESMTP id 2s6xhynw4b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 May 2019 10:37:20 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x43AXhUc024411;
 Fri, 3 May 2019 10:35:19 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2s7p8a8va6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 May 2019 10:35:19 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x43AZ9n3014091;
 Fri, 3 May 2019 10:35:10 GMT
Received: from kadam (/196.104.111.181)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 03 May 2019 03:35:09 -0700
Date: Fri, 3 May 2019 13:34:56 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Subject: Re: [PATCH v3 08/10] staging: octeon-ethernet: support
 of_get_mac_address new ERR_PTR error
Message-ID: <20190503103456.GF2269@kadam>
References: <1556870168-26864-1-git-send-email-ynezz@true.cz>
 <1556870168-26864-9-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556870168-26864-9-git-send-email-ynezz@true.cz>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9245
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=933
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905030067
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9245
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=955 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905030067
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

T24gRnJpLCBNYXkgMDMsIDIwMTkgYXQgMDk6NTY6MDVBTSArMDIwMCwgUGV0ciDFoHRldGlhciB3
cm90ZToKPiBUaGVyZSB3YXMgTlZNRU0gc3VwcG9ydCBhZGRlZCB0byBvZl9nZXRfbWFjX2FkZHJl
c3MsIHNvIGl0IGNvdWxkIG5vdwo+IHJldHVybiBOVUxMIGFuZCBFUlJfUFRSIGVuY29kZWQgZXJy
b3IgdmFsdWVzLCBzbyB3ZSBuZWVkIHRvIGFkanVzdCBhbGwKPiBjdXJyZW50IHVzZXJzIG9mIG9m
X2dldF9tYWNfYWRkcmVzcyB0byB0aGlzIG5ldyBmYWN0LgoKV2hpY2ggY29tbWl0IGFkZGVkIE5W
TUVNIHN1cHBvcnQ/ICBJdCBoYXNuJ3QgaGl0IG5ldC1uZXh0IG9yIGxpbnV4LW5leHQKeWV0Li4u
ICBWZXJ5IHN0cmFuZ2UuCgpXaHkgd291bGQgb2ZfZ2V0X21hY19hZGRyZXNzKCkgcmV0dXJuIGEg
bWl4IG9mIE5VTEwgYW5kIGVycm9yIHBvaW50ZXJzPwpJbiB0aGF0IHNpdHVhdGlvbiwgdGhlbiBO
VUxMIGlzIGEgc3BlY2lhbCBraW5kIG9mIHN1Y2Nlc3MgbGlrZSB3aGVuIHlvdQpyZXF1ZXN0IGZl
YXR1cmUgYW5kIHRoZSBmZWF0dXJlIHdvcmtzIGJ1dCBpdCdzIGRpc2FibGVkIGJ5IHRoZSB1c2Vy
LiAgV2UKZG9uJ3Qgd2FudCB0byB0cmVhdCBpdCBhcyBhbiBlcnJvciBidXQgd2Ugc3RpbGwgY2Fu
J3QgcmV0dXJuIGEgcG9pbnRlcgp0byBhIGZlYXR1cmUgd2UgZG9uJ3QgaGF2ZS4uLiAgSXQncyBo
YXJkIGZvciBtZSB0byBpbWFnaW5lIGhvdyB0aGF0Cm1ha2VzIHNlbnNlIGZvciBnZXR0aW5nIGEg
bWFjIGFkZHJlc3MuCgpBdCB0aGUgdmVyeSBsZWFzdCwgdGhpcyBwYXRjaCBuZWVkcyBhIEZpeGVz
IHRhZy4KCnJlZ2FyZHMsCmRhbiBjYXJwZW50ZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZl
cnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
