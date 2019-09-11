Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 44017AF9F1
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Sep 2019 12:07:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DD36B8671F;
	Wed, 11 Sep 2019 10:07:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fA8tj6kRO2M6; Wed, 11 Sep 2019 10:07:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6847A866BD;
	Wed, 11 Sep 2019 10:07:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B0C8A1BF4D5
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 10:07:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A8FA320501
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 10:07:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lZQYKn6qycJx for <devel@linuxdriverproject.org>;
 Wed, 11 Sep 2019 10:07:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id BDE8F20478
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 10:07:46 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8B9rbKe093930;
 Wed, 11 Sep 2019 10:07:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2019-08-05;
 bh=wxw9BbTHu4AzXJ1XStoEfZ/9Z/QWrwvMgzyBlvyAEQ0=;
 b=nleJfhwGNVh777tOd3R+piFAF4/W8h/P5lZeAoY44+thF7HCP0zDwh8uV+c58rEY9wDA
 AloFcUMauVRnCp4J5SbyeB0jAvHPB5CuXI0WiKaoMezzngUGN7kJJvcPeu6JBYYOoiGk
 euEYyAM9DWPpAFRYkIJ3kIKKsQl4d6aLz9xcfiHyvoMjDkqXW8PNLcwo2TtgSVC5PEn3
 hDCkvjoeXi3NxaD1bgg4maD2rxG/tmfDw2cTgrY4AOXSlsBgUA+lxJPC9yun9Qleih9p
 mPJjGy6uGq1Cl+Wh0xJcKi48hRIVE3H2mhRmSFq+kiHetEwxfIf1WUAS8aw5mlcvJ8JC jA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2uw1jy8v8b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 11 Sep 2019 10:07:42 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8B9raDu131313;
 Wed, 11 Sep 2019 10:05:41 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2uxd6dx7nn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 11 Sep 2019 10:05:41 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8BA5XFi022907;
 Wed, 11 Sep 2019 10:05:33 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 11 Sep 2019 03:05:32 -0700
Date: Wed, 11 Sep 2019 13:05:26 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sandro Volery <sandro@volery.com>
Subject: Re: [PATCH] Staging: octeon: Avoid several usecases of strcpy
Message-ID: <20190911100526.GJ15977@kadam>
References: <20190911091659.GI15977@kadam>
 <C1B40FAD-9F8F-449D-B10C-334BAC76797D@volery.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C1B40FAD-9F8F-449D-B10C-334BAC76797D@volery.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9376
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1909110093
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9376
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1909110093
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, davem@davemloft.net,
 linux-kernel@vger.kernel.org, aaro.koskinen@iki.fi
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCBTZXAgMTEsIDIwMTkgYXQgMTE6MjE6NDRBTSArMDIwMCwgU2FuZHJvIFZvbGVyeSB3
cm90ZToKPiAKPiBPbiAxMSBTZXAgMjAxOSwgYXQgMTE6MTcsIERhbiBDYXJwZW50ZXIgPGRhbi5j
YXJwZW50ZXJAb3JhY2xlLmNvbT4gd3JvdGU6Cj4gPiAKPiA+IO+7v09uIFdlZCwgU2VwIDExLCAy
MDE5IGF0IDExOjA0OjM4QU0gKzAyMDAsIFNhbmRybyBWb2xlcnkgd3JvdGU6Cj4gPj4gCj4gPj4g
Cj4gPj4+PiBPbiAxMSBTZXAgMjAxOSwgYXQgMTA6NTIsIERhbiBDYXJwZW50ZXIgPGRhbi5jYXJw
ZW50ZXJAb3JhY2xlLmNvbT4gd3JvdGU6Cj4gPj4+IAo+ID4+PiDvu79PbiBXZWQsIFNlcCAxMSwg
MjAxOSBhdCAwODoyMzo1OUFNICswMjAwLCBTYW5kcm8gVm9sZXJ5IHdyb3RlOgo+ID4+Pj4gc3Ry
Y3B5IHdhcyB1c2VkIG11bHRpcGxlIHRpbWVzIGluIHN0cmNweSB0byB3cml0ZSBpbnRvIGRldi0+
bmFtZS4KPiA+Pj4+IEkgcmVwbGFjZWQgdGhlbSB3aXRoIHN0cnNjcHkuCj4gPj4+PiAKPiA+Pj4+
IFNpZ25lZC1vZmYtYnk6IFNhbmRybyBWb2xlcnkgPHNhbmRyb0B2b2xlcnkuY29tPgo+ID4+Pj4g
LS0tCj4gPj4+PiBkcml2ZXJzL3N0YWdpbmcvb2N0ZW9uL2V0aGVybmV0LmMgfCAxNiArKysrKysr
Ky0tLS0tLS0tCj4gPj4+PiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA4IGRlbGV0
aW9ucygtKQo+ID4+Pj4gCj4gPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL29jdGVv
bi9ldGhlcm5ldC5jIGIvZHJpdmVycy9zdGFnaW5nL29jdGVvbi9ldGhlcm5ldC5jCj4gPj4+PiBp
bmRleCA4ODg5NDk0YWRmMWYuLmNmOGU5YTIzZWJmOSAxMDA2NDQKPiA+Pj4+IC0tLSBhL2RyaXZl
cnMvc3RhZ2luZy9vY3Rlb24vZXRoZXJuZXQuYwo+ID4+Pj4gKysrIGIvZHJpdmVycy9zdGFnaW5n
L29jdGVvbi9ldGhlcm5ldC5jCj4gPj4+PiBAQCAtNzg0LDcgKzc4NCw3IEBAIHN0YXRpYyBpbnQg
Y3ZtX29jdF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4+Pj4gICAgICAg
ICAgIHByaXYtPmltb2RlID0gQ1ZNWF9IRUxQRVJfSU5URVJGQUNFX01PREVfRElTQUJMRUQ7Cj4g
Pj4+PiAgICAgICAgICAgcHJpdi0+cG9ydCA9IENWTVhfUElQX05VTV9JTlBVVF9QT1JUUzsKPiA+
Pj4+ICAgICAgICAgICBwcml2LT5xdWV1ZSA9IC0xOwo+ID4+Pj4gLSAgICAgICAgICAgIHN0cmNw
eShkZXYtPm5hbWUsICJwb3clZCIpOwo+ID4+Pj4gKyAgICAgICAgICAgIHN0cnNjcHkoZGV2LT5u
YW1lLCAicG93JWQiLCBzaXplb2YoZGV2LT5uYW1lKSk7Cj4gPj4+IAo+ID4+PiBJcyB0aGVyZSBh
IHByb2dyYW0gd2hpY2ggaXMgZ2VuZXJhdGluZyBhIHdhcm5pbmcgZm9yIHRoaXMgY29kZT8gIFdl
IGtub3cKPiA+Pj4gdGhhdCAicG93JWQiIGlzIDYgY2hhcmFjdGVycyBhbmQgc3RhdGljIGFuYWx5
c2lzIHRvb2xzIGNhbiB1bmRlcnN0YW5kCj4gPj4+IHRoaXMgY29kZSBmaW5lIHNvIHdlIGtub3cg
aXQncyBzYWZlLgo+ID4+IAo+ID4+IFdlbGwgSSB3YXMgY29uZnVzZWQgdG9vIGJ1dCBjaGVja3Bh
dGNoIGNvbXBsYWluZWQgYWJvdXQgCj4gPj4gaXQgc28gSSBmaWd1cmVkIEknZCBjbGVhbiBpdCB1
cCBxdWljawo+ID4gCj4gPiBBaC4gIEl0J3MgYSBuZXcgY2hlY2twYXRjaCB3YXJuaW5nLiAgSSBk
b24ndCBjYXJlIGluIHRoYXQgY2FzZS4gIEknbQo+ID4gZmluZSB3aXRoIHJlcGxhY2luZyBhbGwg
b2YgdGhlc2UgaW4gdGhhdCBjYXNlLgo+IAo+IEFscmlnaHQgdGhhbmtzLiBDYW4geW91IHJldmll
dyB0aGlzPwo+IAoKU3VyZS4KClJldmlld2VkLWJ5OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVu
dGVyQG9yYWNsZS5jb20+CgpyZWdhcmRzLApkYW4gY2FycGVudGVyCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxA
bGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVj
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
