Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A231DB7A2
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 May 2020 17:03:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 233FE881D9;
	Wed, 20 May 2020 15:02:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B+he3JOthuPp; Wed, 20 May 2020 15:02:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 93EA48819F;
	Wed, 20 May 2020 15:02:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 56F5E1BF97D
 for <devel@linuxdriverproject.org>; Wed, 20 May 2020 15:02:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5381986E0D
 for <devel@linuxdriverproject.org>; Wed, 20 May 2020 15:02:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wJTyiARPlcVu for <devel@linuxdriverproject.org>;
 Wed, 20 May 2020 15:02:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5AC9986DFA
 for <devel@driverdev.osuosl.org>; Wed, 20 May 2020 15:02:53 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04KEvG3s045853;
 Wed, 20 May 2020 15:02:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=bP+cMvdzxHbOp4/kQJ7d2LwPqN/I8FVf/8zsS1gA1f4=;
 b=x86o//a+N7sUAMQyKvyRC0wBFiyV77EMWjWVN/dvnkhMVZ4wU4iVAn88oqMp84gAouIm
 keFU98X+h+UHkob/rIpEI6K69DYND4SSbrGkb7bRdR8/0zP8zKnc3XYVyevMHkrvb9Vg
 Tts6oGcty537eqVTExN/JdbCYxB57kwfu168GmTiQygzHYKa8oADoK9AokYdHnzu1DBF
 kevyPCKqY5YkIzMsC9EjXR7LOkIaJmcMqMUQCUcbLNHxVNfACqksLqoJZit+Vxfkganp
 0O26RwODFqFy0kd0uyZ2bdmoaDmTrgkRg0jFrG644gGIT3Q+uU7l3CKmtC1t7TEcJNe8 ew== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 3127krbntq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 20 May 2020 15:02:50 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04KF2fg2037820;
 Wed, 20 May 2020 15:02:49 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 313gj3p64t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 20 May 2020 15:02:49 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04KF2dcD010490;
 Wed, 20 May 2020 15:02:40 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 20 May 2020 08:02:39 -0700
Date: Wed, 20 May 2020 18:02:30 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH] media: staging: tegra-vde: fix runtime pm imbalance on
 error
Message-ID: <20200520150230.GC30374@kadam>
References: <20200520095148.10995-1-dinghao.liu@zju.edu.cn>
 <2b5d64f5-825f-c081-5d03-02655c2d9491@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2b5d64f5-825f-c081-5d03-02655c2d9491@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9626
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 spamscore=0 malwarescore=0
 mlxscore=0 adultscore=0 bulkscore=0 suspectscore=1 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005200124
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9626
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0 spamscore=0
 bulkscore=0 clxscore=1011 priorityscore=1501 mlxscore=0 impostorscore=0
 suspectscore=1 mlxlogscore=999 malwarescore=0 cotscore=-2147483648
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005200123
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
Cc: devel@driverdev.osuosl.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Pavel Machek <pavel@ucw.cz>, Len Brown <len.brown@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-pm@vger.kernel.org,
 kjlu@umn.edu, linux-kernel@vger.kernel.org,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Dinghao Liu <dinghao.liu@zju.edu.cn>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCBNYXkgMjAsIDIwMjAgYXQgMDE6MTU6NDRQTSArMDMwMCwgRG1pdHJ5IE9zaXBlbmtv
IHdyb3RlOgo+IDIwLjA1LjIwMjAgMTI6NTEsIERpbmdoYW8gTGl1INC/0LjRiNC10YI6Cj4gPiBw
bV9ydW50aW1lX2dldF9zeW5jKCkgaW5jcmVtZW50cyB0aGUgcnVudGltZSBQTSB1c2FnZSBjb3Vu
dGVyIGV2ZW4KPiA+IGl0IHJldHVybnMgYW4gZXJyb3IgY29kZS4gVGh1cyBhIHBhaXJpbmcgZGVj
cmVtZW50IGlzIG5lZWRlZCBvbgo+ID4gdGhlIGVycm9yIGhhbmRsaW5nIHBhdGggdG8ga2VlcCB0
aGUgY291bnRlciBiYWxhbmNlZC4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogRGluZ2hhbyBMaXUg
PGRpbmdoYW8ubGl1QHpqdS5lZHUuY24+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3N0YWdpbmcvbWVk
aWEvdGVncmEtdmRlL3ZkZS5jIHwgMiArLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5n
L21lZGlhL3RlZ3JhLXZkZS92ZGUuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUv
dmRlLmMKPiA+IGluZGV4IGQzZTYzNTEyYTc2NS4uZGQxMzRhM2ExNWM3IDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS92ZGUuYwo+ID4gKysrIGIvZHJpdmVy
cy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS92ZGUuYwo+ID4gQEAgLTc3Nyw3ICs3NzcsNyBAQCBz
dGF0aWMgaW50IHRlZ3JhX3ZkZV9pb2N0bF9kZWNvZGVfaDI2NChzdHJ1Y3QgdGVncmFfdmRlICp2
ZGUsCj4gPiAgCj4gPiAgCXJldCA9IHBtX3J1bnRpbWVfZ2V0X3N5bmMoZGV2KTsKPiA+ICAJaWYg
KHJldCA8IDApCj4gPiAtCQlnb3RvIHVubG9jazsKPiA+ICsJCWdvdG8gcHV0X3J1bnRpbWVfcG07
Cj4gPiAgCj4gPiAgCS8qCj4gPiAgCSAqIFdlIHJlbHkgb24gdGhlIFZERSByZWdpc3RlcnMgcmVz
ZXQgdmFsdWUsIG90aGVyd2lzZSBWREUKPiA+IAo+IAo+IEhlbGxvIERpbmdoYW8sCj4gCj4gVGhh
bmsgeW91IGZvciB0aGUgcGF0Y2guIEkgc2VudCBvdXQgYSBzaW1pbGFyIHBhdGNoIGEgd2VlayBh
Z28gWzFdLgo+IAo+IFsxXQo+IGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcHJvamVjdC9s
aW51eC10ZWdyYS9wYXRjaC8yMDIwMDUxNDIxMDg0Ny45MjY5LTItZGlnZXR4QGdtYWlsLmNvbS8K
PiAKPiBUaGUgcG1fcnVudGltZV9wdXRfbm9pZGxlKCkgc2hvdWxkIGhhdmUgdGhlIHNhbWUgZWZm
ZWN0IGFzIHlvdXJzCj4gdmFyaWFudCwgYWx0aG91Z2ggbXkgdmFyaWFudCB3b24ndCBjaGFuZ2Ug
dGhlIGxhc3RfYnVzeSBSUE0gdGltZSwgd2hpY2gKPiBJIHRoaW5rIGlzIGEgYml0IG1vcmUgYXBw
cm9wcmlhdGUgYmVoYXZpb3IuCgpJIGRvbid0IHRoaW5rIGVpdGhlciBwYXRjaCBpcyBjb3JyZWN0
LiAgVGhlIHJpZ2h0IHRoaW5nIHRvIGRvIGlzIHRvIGZpeApfX3BtX3J1bnRpbWVfcmVzdW1lKCkg
c28gaXQgZG9lc24ndCBsZWFrIGEgcmVmZXJlbmNlIGNvdW50IG9uIGVycm9yLgoKVGhlIHByb2Js
ZW0gaXMgdGhhdCBhIGxvdCBvZiBmdW5jdGlvbnMgZG9uJ3QgY2hlY2sgdGhlIHJldHVybiBzbwpw
b3NzaWJseSB3ZSBhcmUgcmVseWluZyBvbiB0aGF0IGJlaGF2aW9yLiAgV2UgbWF5IG5lZWQgdG8g
aW50cm9kdWNlIGEKbmV3IGZ1bmN0aW9uIHdoaWNoIGNsZWFucyB1cCBwcm9wZXJseSBpbnN0ZWFk
IG9mIGxlYWtpbmcgcmVmZXJlbmNlCmNvdW50cz8KCkFsc28gaXQncyBub3QgZG9jdW1lbnRlZCB0
aGF0IHBtX3J1bnRpbWVfZ2V0X3N5bmMoKSByZXR1cm5zIDEgc29tZXRpbWVzCm9uIHN1Y2Nlc3Mg
c28gaXQgbGVhZHMgdG8gYSBmZXcgYnVncy4KCmRyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jOiAg
ICAgICAgICAgICByZXQgPSBwbV9ydW50aW1lX2dldF9zeW5jKGRkZXYtPmRldik7CmRyaXZlcnMv
Z3B1L2RybS9zdG0vbHRkYy5jLSAgICAgICAgICAgICBpZiAocmV0KSB7Ci0tCmRyaXZlcnMvZ3B1
L2RybS9zdG0vbHRkYy5jOiAgICAgICAgICAgICByZXQgPSBwbV9ydW50aW1lX2dldF9zeW5jKGRk
ZXYtPmRldik7CmRyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jLSAgICAgICAgICAgICBpZiAocmV0
KSB7Cgpkcml2ZXJzL21lZGlhL3BsYXRmb3JtL210ay12Y29kZWMvbXRrX3Zjb2RlY19kZWNfcG0u
YzogIHJldCA9IHBtX3J1bnRpbWVfZ2V0X3N5bmMocG0tPmRldik7CmRyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vbXRrLXZjb2RlYy9tdGtfdmNvZGVjX2RlY19wbS5jLSAgaWYgKHJldCkKCmRyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vdGktdnBlL2NhbC5jOiAgICByZXQgPSBwbV9ydW50aW1lX2dldF9zeW5j
KCZwZGV2LT5kZXYpOwpkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3RpLXZwZS9jYWwuYy0gICAgaWYg
KHJldCkKCmRyaXZlcnMvbWZkL2FyaXpvbmEtY29yZS5jOiAgICAgICAgICAgICAgICAgICAgIHJl
dCA9IHBtX3J1bnRpbWVfZ2V0X3N5bmMoYXJpem9uYS0+ZGV2KTsKZHJpdmVycy9tZmQvYXJpem9u
YS1jb3JlLmMtICAgICAgICAgICAgICAgICAgICAgaWYgKHJldCAhPSAwKQoKZHJpdmVycy9yZW1v
dGVwcm9jL3Fjb21fcTZ2NV9hZHNwLmM6ICAgIHJldCA9IHBtX3J1bnRpbWVfZ2V0X3N5bmMoYWRz
cC0+ZGV2KTsKZHJpdmVycy9yZW1vdGVwcm9jL3Fjb21fcTZ2NV9hZHNwLmMtICAgIGlmIChyZXQp
Cgpkcml2ZXJzL3NwaS9zcGktaW1nLXNwZmkuYzogICAgIHJldCA9IHBtX3J1bnRpbWVfZ2V0X3N5
bmMoZGV2KTsKZHJpdmVycy9zcGkvc3BpLWltZy1zcGZpLmMtICAgICBpZiAocmV0KQoKZHJpdmVy
cy91c2IvZHdjMy9kd2MzLXBjaS5jOiAgICByZXQgPSBwbV9ydW50aW1lX2dldF9zeW5jKCZkd2Mz
LT5kZXYpOwpkcml2ZXJzL3VzYi9kd2MzL2R3YzMtcGNpLmMtICAgIGlmIChyZXQpCgpkcml2ZXJz
L3dhdGNoZG9nL3J0aV93ZHQuYzogICAgIHJldCA9IHBtX3J1bnRpbWVfZ2V0X3N5bmMoZGV2KTsK
ZHJpdmVycy93YXRjaGRvZy9ydGlfd2R0LmMtICAgICBpZiAocmV0KSB7CgpyZWdhcmRzLApkYW4g
Y2FycGVudGVyCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9iYXNlL3Bvd2VyL3J1bnRpbWUuYyBiL2Ry
aXZlcnMvYmFzZS9wb3dlci9ydW50aW1lLmMKaW5kZXggOTljN2RhMTEyYzk1Li5lMjgwOTkxYTk3
N2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvYmFzZS9wb3dlci9ydW50aW1lLmMKKysrIGIvZHJpdmVy
cy9iYXNlL3Bvd2VyL3J1bnRpbWUuYwpAQCAtMTA4Miw2ICsxMDgyLDkgQEAgaW50IF9fcG1fcnVu
dGltZV9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2LCBpbnQgcnBtZmxhZ3MpCiAJcmV0dmFsID0g
cnBtX3Jlc3VtZShkZXYsIHJwbWZsYWdzKTsKIAlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZkZXYt
PnBvd2VyLmxvY2ssIGZsYWdzKTsKIAorCWlmIChyZXR2YWwgPCAwICYmIHJwbWZsYWdzICYgUlBN
X0dFVF9QVVQpCisJCWF0b21pY19kZWMoJmRldi0+cG93ZXIudXNhZ2VfY291bnQpOworCiAJcmV0
dXJuIHJldHZhbDsKIH0KIEVYUE9SVF9TWU1CT0xfR1BMKF9fcG1fcnVudGltZV9yZXN1bWUpOwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWls
aW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2Lmxp
bnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
