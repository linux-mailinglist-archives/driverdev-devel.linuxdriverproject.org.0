Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCE0AF8B0
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Sep 2019 11:17:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 784A08653D;
	Wed, 11 Sep 2019 09:17:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id STiXuT0cGDz8; Wed, 11 Sep 2019 09:17:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2FD7C822CA;
	Wed, 11 Sep 2019 09:17:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 374251BF2A6
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 09:17:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3438887B69
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 09:17:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vHyaunXhv6-t for <devel@linuxdriverproject.org>;
 Wed, 11 Sep 2019 09:17:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 502D587B65
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 09:17:20 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8B99LT8057317;
 Wed, 11 Sep 2019 09:17:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2019-08-05;
 bh=zrFAZD9A5dGz2+B318YMzx/6IL2OQM9UN9vWaQkSluw=;
 b=PpOdGDMl3XXCdBFHPow6gWL+3GVNU2Y8XwCJCRLXbh7+jqCTJhDdevSYFf4sP+jCNCGX
 PZl8yhYY11j/KBwnkY1MxfB4YtsKv7t4mPTDkjeHoXR/BIYLI3oAF3l9uUpvlAKVUK1D
 QvvAgcPw/kfQP8kcrMRRC8YopU2+AL/GsLrxjylo0BFloYWxC/8FCsZ5Z72DRXJuyKoX
 3wkxBlDS/9LOUNLD+TxxE++CDkkDHhCaSPFwyr5jLatFNDeYZFIt933Kk3BvoBZ0/PSa
 OvYrIFcgw3/BClJcJ6U/SbR2LxMVuaO/SB35DkvjRT34dhXCq0UzPZgfnRdecjpCnyDY 6A== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2uw1jy8mbc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 11 Sep 2019 09:17:11 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8B999YH069125;
 Wed, 11 Sep 2019 09:17:10 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2uxj88k493-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 11 Sep 2019 09:17:10 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x8B9H8CA012840;
 Wed, 11 Sep 2019 09:17:09 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 11 Sep 2019 02:17:08 -0700
Date: Wed, 11 Sep 2019 12:16:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sandro Volery <sandro@volery.com>
Subject: Re: [PATCH] Staging: octeon: Avoid several usecases of strcpy
Message-ID: <20190911091659.GI15977@kadam>
References: <20190911084956.GH15977@kadam>
 <39D8B984-479C-42D5-8431-9FF7BD3A96D6@volery.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <39D8B984-479C-42D5-8431-9FF7BD3A96D6@volery.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9376
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1909110088
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9376
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1909110088
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 aaro.koskinen@iki.fi, davem@davemloft.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCBTZXAgMTEsIDIwMTkgYXQgMTE6MDQ6MzhBTSArMDIwMCwgU2FuZHJvIFZvbGVyeSB3
cm90ZToKPiAKPiAKPiA+IE9uIDExIFNlcCAyMDE5LCBhdCAxMDo1MiwgRGFuIENhcnBlbnRlciA8
ZGFuLmNhcnBlbnRlckBvcmFjbGUuY29tPiB3cm90ZToKPiA+IAo+ID4g77u/T24gV2VkLCBTZXAg
MTEsIDIwMTkgYXQgMDg6MjM6NTlBTSArMDIwMCwgU2FuZHJvIFZvbGVyeSB3cm90ZToKPiA+PiBz
dHJjcHkgd2FzIHVzZWQgbXVsdGlwbGUgdGltZXMgaW4gc3RyY3B5IHRvIHdyaXRlIGludG8gZGV2
LT5uYW1lLgo+ID4+IEkgcmVwbGFjZWQgdGhlbSB3aXRoIHN0cnNjcHkuCj4gPj4gCj4gPj4gU2ln
bmVkLW9mZi1ieTogU2FuZHJvIFZvbGVyeSA8c2FuZHJvQHZvbGVyeS5jb20+Cj4gPj4gLS0tCj4g
Pj4gZHJpdmVycy9zdGFnaW5nL29jdGVvbi9ldGhlcm5ldC5jIHwgMTYgKysrKysrKystLS0tLS0t
LQo+ID4+IDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4g
Pj4gCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9vY3Rlb24vZXRoZXJuZXQuYyBi
L2RyaXZlcnMvc3RhZ2luZy9vY3Rlb24vZXRoZXJuZXQuYwo+ID4+IGluZGV4IDg4ODk0OTRhZGYx
Zi4uY2Y4ZTlhMjNlYmY5IDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9vY3Rlb24v
ZXRoZXJuZXQuYwo+ID4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9vY3Rlb24vZXRoZXJuZXQuYwo+
ID4+IEBAIC03ODQsNyArNzg0LDcgQEAgc3RhdGljIGludCBjdm1fb2N0X3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPj4gICAgICAgICAgICBwcml2LT5pbW9kZSA9IENWTVhf
SEVMUEVSX0lOVEVSRkFDRV9NT0RFX0RJU0FCTEVEOwo+ID4+ICAgICAgICAgICAgcHJpdi0+cG9y
dCA9IENWTVhfUElQX05VTV9JTlBVVF9QT1JUUzsKPiA+PiAgICAgICAgICAgIHByaXYtPnF1ZXVl
ID0gLTE7Cj4gPj4gLSAgICAgICAgICAgIHN0cmNweShkZXYtPm5hbWUsICJwb3clZCIpOwo+ID4+
ICsgICAgICAgICAgICBzdHJzY3B5KGRldi0+bmFtZSwgInBvdyVkIiwgc2l6ZW9mKGRldi0+bmFt
ZSkpOwo+ID4gCj4gPiBJcyB0aGVyZSBhIHByb2dyYW0gd2hpY2ggaXMgZ2VuZXJhdGluZyBhIHdh
cm5pbmcgZm9yIHRoaXMgY29kZT8gIFdlIGtub3cKPiA+IHRoYXQgInBvdyVkIiBpcyA2IGNoYXJh
Y3RlcnMgYW5kIHN0YXRpYyBhbmFseXNpcyB0b29scyBjYW4gdW5kZXJzdGFuZAo+ID4gdGhpcyBj
b2RlIGZpbmUgc28gd2Uga25vdyBpdCdzIHNhZmUuCj4gCj4gV2VsbCBJIHdhcyBjb25mdXNlZCB0
b28gYnV0IGNoZWNrcGF0Y2ggY29tcGxhaW5lZCBhYm91dCAKPiBpdCBzbyBJIGZpZ3VyZWQgSSdk
IGNsZWFuIGl0IHVwIHF1aWNrCgpBaC4gIEl0J3MgYSBuZXcgY2hlY2twYXRjaCB3YXJuaW5nLiAg
SSBkb24ndCBjYXJlIGluIHRoYXQgY2FzZS4gIEknbQpmaW5lIHdpdGggcmVwbGFjaW5nIGFsbCBv
ZiB0aGVzZSBpbiB0aGF0IGNhc2UuCgpyZWdhcmRzLApkYW4gY2FycGVudGVyCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QK
ZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
