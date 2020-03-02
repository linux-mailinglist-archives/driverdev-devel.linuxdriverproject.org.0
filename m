Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B361F175E0F
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 16:22:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 63D708777B;
	Mon,  2 Mar 2020 15:22:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p8zyDqsNtGZP; Mon,  2 Mar 2020 15:22:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B583C8624A;
	Mon,  2 Mar 2020 15:22:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E7DD61BF30F
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 15:22:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E5015855B5
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 15:22:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NXSQghNmBLEq for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 15:22:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B2AC585450
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 15:22:31 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 022Evu5U086099;
 Mon, 2 Mar 2020 15:22:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=mime-version :
 message-id : date : from : to : cc : subject : references : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=G/kvItGwy0v2Fs3ftwbEd0rVlgOOyAgL4aj7wJ7qNZM=;
 b=EIMWrRJPFCTSlxyodnP+JR3GxBOUIuWyd7a2GHh2qEZGyIOK7tm6Es2IRnu9+UxIr0/W
 BgUDOve59skYLmTgSRy8qJCz3QhHJhtuHbJEw09tVHV5EpjjCiNAUu/k7jFlFIngxAN1
 7/w0Zd9Jegr7vONcmgo5Y7tPkFkJPZcl9dhAFNh2EphBQ4Upnp7awxmdBagwPOAXLt89
 vOwvyZ8ZZrtoBxNaSNVinZaQDGSVUNczekNjAE68JjpLr3Eb8P0MF+2zASrFZbbkF5cK
 PR/RNoBxs/qsmBlDZ0WF4qx5xYr0yfFxV2T5P+gZkGPIAl30ACTI8T6ZU0AhmaR5nbsE Qw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2yffwqgbv0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 02 Mar 2020 15:22:30 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 022FKxk9001574;
 Mon, 2 Mar 2020 15:22:29 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2yg1eh83un-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 02 Mar 2020 15:22:29 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 022FMRdO021370;
 Mon, 2 Mar 2020 15:22:27 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway
 v4.0) with ESMTP ; Mon, 02 Mar 2020 07:21:23 -0800
USER-AGENT: Mutt/1.9.4 (2018-02-28)
MIME-Version: 1.0
Message-ID: <20200302152058.GB24372@kadam>
Date: Mon, 2 Mar 2020 07:20:58 -0800 (PST)
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v1] media: staging: tegra-vde: Use
 devm_platform_ioremap_resource_byname()
References: <20200227180915.9541-1-digetx@gmail.com>
 <20200302080456.GD4140@kadam>
 <d748bf2c-e38c-dabb-59ad-39e14813e40a@gmail.com>
In-Reply-To: <d748bf2c-e38c-dabb-59ad-39e14813e40a@gmail.com>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9547
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 suspectscore=0 spamscore=0
 mlxlogscore=999 malwarescore=0 bulkscore=0 mlxscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003020110
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9547
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 spamscore=0
 impostorscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0 suspectscore=0
 phishscore=0 clxscore=1015 bulkscore=0 adultscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003020110
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Jonathan Hunter <jonathanh@nvidia.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Thierry Reding <thierry.reding@gmail.com>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBNYXIgMDIsIDIwMjAgYXQgMDY6MDQ6MjBQTSArMDMwMCwgRG1pdHJ5IE9zaXBlbmtv
IHdyb3RlOgo+IDAyLjAzLjIwMjAgMTE6MDQsIERhbiBDYXJwZW50ZXIg0L/QuNGI0LXRgjoKPiA+
IE9uIFRodSwgRmViIDI3LCAyMDIwIGF0IDA5OjA5OjE1UE0gKzAzMDAsIERtaXRyeSBPc2lwZW5r
byB3cm90ZToKPiA+PiBUaGlzIGhlbHBzIHRvIG1ha2UgY29kZSBjbGVhbmVyIGEgdGFkLgo+ID4g
Cj4gPiBQbGVhc2UgZG9uJ3Qgc3RhcnQgdGhlIGNvbW1pdCBtZXNzYWdlIGluIHRoZSBtaWRkbGUg
b2YgYSBzZW50ZW5jZS4KPiAKPiBDb3VsZCB5b3UgcGxlYXNlIGNsYXJpZnkgd2hhdCBkbyB5b3Ug
bWVhbiBieSB0aGUgIm1pZGRsZSBvZiBhIHNlbnRlbmNlIj8KPiBUaGUgY29tbWl0J3MgbWVzc2Fn
ZSBkb2Vzbid0IHNvdW5kICJtaWRkbGUiIHRvIG1lIGF0IGFsbC4KPiAKPiA+IEl0IGxvb2tzIGxp
a2UgdGhpcyBmb3Igc29tZSBvZiB1czoKPiA+IAo+ID4gaHR0cHM6Ly9tYXJjLmluZm8vP2w9bGlu
dXgtZHJpdmVyLWRldmVsJm09MTU4MjgyNzAxNDMwMTc2Jnc9Mgo+IAo+IFRoaXMgbGluayBwb2lu
dHMgdG8gdGhpcyBwYXRjaCwgSSBkb24ndCBxdWl0ZSB1bmRlcnN0YW5kIHdoYXQgeW91J3JlCj4g
dHJ5aW5nIHRvIGNvbnZleSBoZXJlLgo+IAo+ID4gSSBnZW5lcmFsbHkgcmVhZCB0aGUgc3ViamVj
dCBvciB0aGUgZnVsbCBjb21taXQgbWVzc2FnZSBidXQgc2VsZG9tCj4gPiBib3RoLgo+IAo+IFRo
ZSBjb21taXQncyB0aXRsZSBkZXNjcmliZXMgdGhlIGNoYW5nZSBicmllZmx5LCB3aGlsZSB0aGUg
bWVzc2FnZSBnaXZlcwo+IGEgcmF0aW9uYWwgZm9yIHRoZSBjaGFuZ2UuIFVzdWFsbHkgcmV2aWV3
ZXIgc2hvdWxkIGNvbnN1bHQgdGhlIGNvZGUKPiBjaGFuZ2VzIHRoZW1zZWx2ZXMgZm9yIG1vcmUg
ZGV0YWlscy4KPiAKPiBEbyB5b3UgaGF2ZSBzb21lIGtpbmQgb2YgYSBlbWFpbCBmaWx0ZXIgdGhh
dCBzaG93cyBvbmx5IHRoZSBjb21taXQncwo+IG1lc3NhZ2U/IE90aGVyd2lzZSBJJ20gbm90IHN1
cmUgd2hhdCdzIHRoZSBwcm9ibGVtLgoKClRoZSBjb21taXQgbWVzc2FnZSBqdXN0IHNheXMgIlRo
aXMgaGVscHMgdG8gbWFrZSBjb2RlIGNsZWFuZXIgYSB0YWQuIgpidXQgaXQgZG9lc24ndCBtZW50
aW9uIGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZV9ieW5hbWUoKS4gIFRoYXQKaW5mb3Jt
YXRpb24gaXMgdGhlcmUgaW4gdGhlIHN1YmplY3QgYnV0IG5vdCBpbiB0aGUgY29tbWl0IG1lc3Nh
Z2UgaXRzZWxmLgpUYWtlIGEgbG9vayBhdCB0aGUgbGluayBJIHNlbnQgeW91IGFuZCB0cnkgdG8g
ZmluZCB0aGUgc3ViamVjdC4gIEl0J3MKZmFyIGF3YXkgZnJvbSB0aGUgY29tbWl0IG1lc3NhZ2Uu
CgpyZWdhcmRzLApkYW4gY2FycGVudGVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
