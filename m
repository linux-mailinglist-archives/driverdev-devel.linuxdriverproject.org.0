Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4E8AFAC7
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Sep 2019 12:49:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A00D087C70;
	Wed, 11 Sep 2019 10:49:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hqEdZMHi6SJZ; Wed, 11 Sep 2019 10:49:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 323F387C09;
	Wed, 11 Sep 2019 10:49:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D60F01BF4D5
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 10:48:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CDD90857FB
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 10:48:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L-T_WWqVzEbn for <devel@linuxdriverproject.org>;
 Wed, 11 Sep 2019 10:48:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 96A9B8574F
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 10:48:57 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8BAmu9L140801;
 Wed, 11 Sep 2019 10:48:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2019-08-05;
 bh=A0EQ0ucC5Utn4XuUW5I4qgdwre2fMdk+hXIPmS6ZuSk=;
 b=EymCVzZMbEUhHasDk7R6Xke5KhrXVT1sy1ccx9suCoRrnXaRIGoOia7jfzNKe20gllQA
 bkdrZ+j5ZrdWsKhvyql5bPz48jfSASc9/zgCY+0/3Ma08y3/+kGcKjHGDXSf6eB8hFXO
 NaDwiX6uZ4uME1vo4vpVa77RYgE62ckOyS/9V5w+cvqWY12X2kglgDwbssq8/awYLMJD
 BYFZLzveuT/LrxPLEm70zYDIbI/VCLhMEW4bClDl3iPaUgCsNvciYZwT0F2XJ1A4HLL4
 ev0eDWBHSHQucLuvTiIEwpfIcXgXYuFMUy7X3xdNacx3lQHBNU1xzPthvV7xQOUvStg+ qw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2uw1jy925h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 11 Sep 2019 10:48:56 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8BAmaxS176312;
 Wed, 11 Sep 2019 10:48:52 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2uxj3jf7aq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 11 Sep 2019 10:48:52 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x8BAminO016854;
 Wed, 11 Sep 2019 10:48:44 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 11 Sep 2019 03:48:44 -0700
Date: Wed, 11 Sep 2019 13:48:35 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sandro Volery <sandro@volery.com>
Subject: Re: [PATCH v2] Staging: exfat: Avoid use of strcpy
Message-ID: <20190911104835.GK15977@kadam>
References: <20190911100616.GH20699@kadam>
 <EAFF08E1-747C-4084-BFEF-A89465A6F9ED@volery.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <EAFF08E1-747C-4084-BFEF-A89465A6F9ED@volery.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9376
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1909110099
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9376
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1909110099
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
 valdis.kletnieks@vt.edu, linux-kernel@vger.kernel.org,
 linux@rasmusvillemoes.dk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCBTZXAgMTEsIDIwMTkgYXQgMTI6MjQ6MjNQTSArMDIwMCwgU2FuZHJvIFZvbGVyeSB3
cm90ZToKPiAKPiAKPiA+IE9uIDExIFNlcCAyMDE5LCBhdCAxMjowNiwgRGFuIENhcnBlbnRlciA8
ZGFuLmNhcnBlbnRlckBvcmFjbGUuY29tPiB3cm90ZToKPiA+IAo+ID4g77u/T24gV2VkLCBTZXAg
MTEsIDIwMTkgYXQgMTE6NDI6MTlBTSArMDIwMCwgU2FuZHJvIFZvbGVyeSB3cm90ZToKPiA+PiBV
c2Ugc3Ryc2NweSBpbnN0ZWFkIG9mIHN0cmNweSBpbiBleGZhdF9jb3JlLmMsIGFuZCBhZGQgYSBj
aGVjawo+ID4+IGZvciBsZW5ndGggdGhhdCB3aWxsIHJldHVybiBhbHJlYWR5IGtub3duIEZGU19J
TlZBTElEUEFUSC4KPiA+PiAKPiA+PiBTdWdnZXN0ZWQtYnk6IFJhc211cyBWaWxsZW1vZXMgPGxp
bnV4QHJhc211c3ZpbGxlbW9lcy5kaz4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBTYW5kcm8gVm9sZXJ5
IDxzYW5kcm9Adm9sZXJ5LmNvbT4KPiA+PiAtLS0KPiA+PiB2MjogSW1wbGVtZW50IGxlbmd0aCBj
aGVjayBhbmQgcmV0dXJuIGluIG9uZQo+ID4+IHYxOiBPcmlnaW5hbCBQYXRjaAo+ID4+IGRyaXZl
cnMvc3RhZ2luZy9leGZhdC9leGZhdF9jb3JlLmMgfCAzICsrLQo+ID4+IDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+PiAKPiA+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9zdGFnaW5nL2V4ZmF0L2V4ZmF0X2NvcmUuYyBiL2RyaXZlcnMvc3RhZ2luZy9leGZh
dC9leGZhdF9jb3JlLmMKPiA+PiBpbmRleCBkYThjNTgxNDljMzUuLjRjNDBmMTM1Mjg0OCAxMDA2
NDQKPiA+PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvZXhmYXQvZXhmYXRfY29yZS5jCj4gPj4gKysr
IGIvZHJpdmVycy9zdGFnaW5nL2V4ZmF0L2V4ZmF0X2NvcmUuYwo+ID4+IEBAIC0yOTY0LDcgKzI5
NjQsOCBAQCBzMzIgcmVzb2x2ZV9wYXRoKHN0cnVjdCBpbm9kZSAqaW5vZGUsIGNoYXIgKnBhdGgs
IHN0cnVjdCBjaGFpbl90ICpwX2RpciwKPiA+PiAgICBpZiAoc3RybGVuKHBhdGgpID49IChNQVhf
TkFNRV9MRU5HVEggKiBNQVhfQ0hBUlNFVF9TSVpFKSkKPiA+ICAgICAgICBeXl5eXl5eXl5eXl5e
Xl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXgo+ID4gRGVsZXRlIHRo
aXMgYXMgaXQgaXMgbm8gbG9uZ2VyIHJlcXVpcmVkLgo+ID4gCj4gCj4gWWVwLCBzYXcgaXQgZnJv
bSBSYXNtdXMgcmVzcG9uc2UgdG9vIGp1c3Qgbm93Li4gRHVtYiBtaXN0YWtlLgo+IFdpbGwgZml4
IHRoaXMgdGhpcyBhZnRlcm5vb24uCj4gCgpPciB5b3UgY291bGQgc2VuZCBpdCB0b21vcnJvdy4g
IFRoZXJlIGlzIG5vIHJ1c2guCgpyZWdhcmRzLApkYW4gY2FycGVudGVyCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
