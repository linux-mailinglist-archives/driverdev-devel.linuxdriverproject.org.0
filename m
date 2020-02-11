Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1E1158BD3
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 10:24:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9043A847D9;
	Tue, 11 Feb 2020 09:24:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id baKtYEGIyYSX; Tue, 11 Feb 2020 09:24:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8C90E85F8D;
	Tue, 11 Feb 2020 09:24:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 342E21BF340
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 09:24:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3160484D62
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 09:24:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hLYETS-LEIHZ for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 09:24:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9EF8884BDF
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 09:24:06 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01B9ELRu104881;
 Tue, 11 Feb 2020 09:24:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=0qUVxjzf2QqnC2Y7oVbJJ3KMjgd8797fWBccis9x61w=;
 b=kc0nANLb+izqhEptDHGMlYYuxdxolAJ/DvY/OSdG8TZ8z6TnhnJ6CPIJOY1oIqDTlRaR
 dIOhiEEfnRk85Kro+jXJaLpgOzT8pc5QhwZ/A2n5XZgkiNohgtgKSvKNpnJG96qfQsV7
 E7Xlp+R4MHyx5NkaV0bLA5f1n5vwuBjFo9rmNcvF42rwed+9HFEpIH0VKnS23GElMMqw
 MLFfzVol/iT/X8MpGFZjvuXz8MCm/ARxTewfXNWqv16hSZjaiD7Fz991/C6xo3qAdyWK
 Kj5zCt2XU6BfcK4tQpH3jU2WOBmltXGUnoxZxY1MSlEQupyvqW9voP4hNKCRt0i10v3X mw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2y2k881xjy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 11 Feb 2020 09:24:05 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01B9CxIx033252;
 Tue, 11 Feb 2020 09:24:05 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2y26fgtxju-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 11 Feb 2020 09:24:05 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 01B9O3a3008057;
 Tue, 11 Feb 2020 09:24:03 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 11 Feb 2020 01:24:02 -0800
Date: Tue, 11 Feb 2020 12:23:54 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: =?utf-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>
Subject: Re: [[PATCH staging] 3/7] staging: wfx: fix init/remove vs IRQ race
Message-ID: <20200211092354.GE1778@kadam>
References: <cover.1581410026.git.mirq-linux@rere.qmqm.pl>
 <8f0c51acc3b98fc55d6960036daef7556445cd0a.1581410026.git.mirq-linux@rere.qmqm.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8f0c51acc3b98fc55d6960036daef7556445cd0a.1581410026.git.mirq-linux@rere.qmqm.pl>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9527
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=8
 adultscore=0 bulkscore=0 mlxscore=0 spamscore=0 phishscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002110069
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9527
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 lowpriorityscore=0
 suspectscore=8 bulkscore=0 phishscore=0 mlxlogscore=999 mlxscore=0
 malwarescore=0 impostorscore=0 clxscore=1011 spamscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002110069
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBGZWIgMTEsIDIwMjAgYXQgMDk6NDY6NTRBTSArMDEwMCwgTWljaGHFgiBNaXJvc8WC
YXcgd3JvdGU6Cj4gQEAgLTIxOCw5ICsyMTgsOSBAQCBzdGF0aWMgaW50IHdmeF9zZGlvX3Byb2Jl
KHN0cnVjdCBzZGlvX2Z1bmMgKmZ1bmMsCj4gIAlyZXR1cm4gMDsKPiAgCj4gIGVycjM6Cj4gLQl3
ZnhfZnJlZV9jb21tb24oYnVzLT5jb3JlKTsKPiArCXdmeF9zZGlvX2lycV91bnN1YnNjcmliZShi
dXMpOwo+ICBlcnIyOgo+IC0Jd2Z4X3NkaW9faXJxX3Vuc3Vic2NyaWJlKGJ1cyk7Cj4gKwl3Znhf
ZnJlZV9jb21tb24oYnVzLT5jb3JlKTsKPiAgZXJyMToKPiAgCXNkaW9fY2xhaW1faG9zdChmdW5j
KTsKPiAgCXNkaW9fZGlzYWJsZV9mdW5jKGZ1bmMpOwo+IEBAIC0yMzQsOCArMjM0LDggQEAgc3Rh
dGljIHZvaWQgd2Z4X3NkaW9fcmVtb3ZlKHN0cnVjdCBzZGlvX2Z1bmMgKmZ1bmMpCj4gIAlzdHJ1
Y3Qgd2Z4X3NkaW9fcHJpdiAqYnVzID0gc2Rpb19nZXRfZHJ2ZGF0YShmdW5jKTsKPiAgCj4gIAl3
ZnhfcmVsZWFzZShidXMtPmNvcmUpOwo+IC0Jd2Z4X2ZyZWVfY29tbW9uKGJ1cy0+Y29yZSk7Cj4g
IAl3Znhfc2Rpb19pcnFfdW5zdWJzY3JpYmUoYnVzKTsKICAgICAgICBeXl5eXl5eXl5eXl5eXl5e
Xl5eXl5eXl5eXl5eXgoKVGhpcyBjYWxscyBzZGlvX3JlbGVhc2VfaG9zdChmdW5jKTsKCj4gKwl3
ZnhfZnJlZV9jb21tb24oYnVzLT5jb3JlKTsKPiAgCXNkaW9fY2xhaW1faG9zdChmdW5jKTsKPiAg
CXNkaW9fZGlzYWJsZV9mdW5jKGZ1bmMpOwo+ICAJc2Rpb19yZWxlYXNlX2hvc3QoZnVuYyk7CiAg
ICAgICAgXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eCnNvIGlzIHRoaXMgYSBkb3VibGUgZnJlZT8K
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NwaS5jIGIvZHJpdmVycy9z
dGFnaW5nL3dmeC9idXNfc3BpLmMKPiBpbmRleCAzYmE3MDU0NzdjYTguLjJiMTA4YTlmYTVhZSAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zcGkuYwo+ICsrKyBiL2RyaXZl
cnMvc3RhZ2luZy93ZngvYnVzX3NwaS5jCj4gQEAgLTIxMSwyMCArMjExLDIyIEBAIHN0YXRpYyBp
bnQgd2Z4X3NwaV9wcm9iZShzdHJ1Y3Qgc3BpX2RldmljZSAqZnVuYykKPiAgCQl1ZGVsYXkoMjAw
MCk7Cj4gIAl9Cj4gIAo+IC0JcmV0ID0gZGV2bV9yZXF1ZXN0X2lycSgmZnVuYy0+ZGV2LCBmdW5j
LT5pcnEsIHdmeF9zcGlfaXJxX2hhbmRsZXIsCj4gLQkJCSAgICAgICBJUlFGX1RSSUdHRVJfUklT
SU5HLCAid2Z4IiwgYnVzKTsKPiAtCWlmIChyZXQpCj4gLQkJcmV0dXJuIHJldDsKPiAtCj4gIAlJ
TklUX1dPUksoJmJ1cy0+cmVxdWVzdF9yeCwgd2Z4X3NwaV9yZXF1ZXN0X3J4KTsKPiAgCWJ1cy0+
Y29yZSA9IHdmeF9pbml0X2NvbW1vbigmZnVuYy0+ZGV2LCAmd2Z4X3NwaV9wZGF0YSwKPiAgCQkJ
CSAgICAmd2Z4X3NwaV9od2J1c19vcHMsIGJ1cyk7Cj4gIAlpZiAoIWJ1cy0+Y29yZSkKPiAgCQly
ZXR1cm4gLUVJTzsKPiAgCj4gKwlyZXQgPSBkZXZtX3JlcXVlc3RfaXJxKCZmdW5jLT5kZXYsIGZ1
bmMtPmlycSwgd2Z4X3NwaV9pcnFfaGFuZGxlciwKPiArCQkJICAgICAgIElSUUZfVFJJR0dFUl9S
SVNJTkcsICJ3ZngiLCBidXMpOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0OwoKU2hvdWxk
bid0IHRoaXMgY2FsbCB3ZnhfZnJlZV9jb21tb24oYnVzLT5jb3JlKTsgYmVmb3JlIHJldHVybmlu
Zz8KCj4gKwo+ICAJcmV0ID0gd2Z4X3Byb2JlKGJ1cy0+Y29yZSk7Cj4gLQlpZiAocmV0KQo+ICsJ
aWYgKHJldCkgewo+ICsJCWRldm1fZnJlZV9pcnEoJmZ1bmMtPmRldiwgZnVuYy0+aXJxLCBidXMp
OwoKV2Ugc2hvdWxkbid0IGhhdmUgdG8gZnJlZSBkZXZtXyByZXNvdXJjZS4KCj4gIAkJd2Z4X2Zy
ZWVfY29tbW9uKGJ1cy0+Y29yZSk7Cj4gKwl9Cj4gIAo+ICAJcmV0dXJuIHJldDsKPiAgfQo+IEBA
IC0yMzQsMTEgKzIzNiwxMSBAQCBzdGF0aWMgaW50IHdmeF9zcGlfcmVtb3ZlKHN0cnVjdCBzcGlf
ZGV2aWNlICpmdW5jKQo+ICAJc3RydWN0IHdmeF9zcGlfcHJpdiAqYnVzID0gc3BpX2dldF9kcnZk
YXRhKGZ1bmMpOwo+ICAKPiAgCXdmeF9yZWxlYXNlKGJ1cy0+Y29yZSk7Cj4gLQl3ZnhfZnJlZV9j
b21tb24oYnVzLT5jb3JlKTsKPiAgCS8vIEEgZmV3IElSUSB3aWxsIGJlIHNlbnQgZHVyaW5nIGRl
dmljZSByZWxlYXNlLiBIb3BlZnVsbHksIG5vIElSUQo+ICAJLy8gc2hvdWxkIGhhcHBlbiBhZnRl
ciB3ZGV2L3d2aWYgYXJlIHJlbGVhc2VkLgo+ICAJZGV2bV9mcmVlX2lycSgmZnVuYy0+ZGV2LCBm
dW5jLT5pcnEsIGJ1cyk7CgpJcyB0aGlzIGRldm1fIGZyZWUgcmVxdWlyZWQ/Cgo+ICAJZmx1c2hf
d29yaygmYnVzLT5yZXF1ZXN0X3J4KTsKPiArCXdmeF9mcmVlX2NvbW1vbihidXMtPmNvcmUpOwo+
ICAJcmV0dXJuIDA7Cj4gIH0KCnJlZ2FyZHMsCmRhbiBjYXJwZW50ZXIKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
